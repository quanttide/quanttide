---
name: asset-init
description: 初始化量潮资产仓库（领域第二大脑、资产聚合容器、已有仓库补全定义）。覆盖仓库创建、子模块注册、文档骨架、根仓库注册与分层提交推送。
---

# 资产初始化

初始化量潮资产仓库，分三种场景：领域第二大脑（domains/）、资产聚合容器（assets/）、已有仓库补全定义。

## 规则

- **先调查后动手**：初始化前必须确认仓库现状（GitHub 是否已存在、本地子模块状态、README/AGENTS/契约），避免重复创建或破坏已有内容
- **命名遵循统一规范**：中文命名四字最佳（xx管理/xx工程/xx设计），英文命名单数，缩写超 8 字母使用缩写；配套仓库按 `qtcloud-{name}`、`quanttide-{name}-toolkit`、`quanttide-laboratory-of-{english-name}`、`quanttide-{context|journal|intention}-of-{english-name}` 命名
- **分层提交**：子模块先提交推送 → 领域/容器仓库更新指针提交推送 → 根仓库更新指针提交推送，提交即推送
- **禁止越级**：不在子仓库里做父仓库的事（改父仓库 README/CHANGELOG），也不要反过来
- **并行协作安全**：根仓库工作区可能存在用户并行待办，只用 `git add` 具体路径，禁止 `git add -A` 全量提交
- **契约优先**：目标仓库存在 `.quanttide/agent/contract.yaml` 时，先读契约并按其中的审核规则执行（git push 等高风险操作需用户确认）
- **维护记录**：修改后同步更新对应仓库的 CHANGELOG.md

## 依赖

- devops-submodule: 子模块注册与管理
- devops-commit: 规范提交
- docs-format: 文档骨架格式

## 工作流

### 1. 调查现状

**必须执行，不可跳过**

```bash
# 检查 GitHub 仓库是否已存在（存在则复用，不要重复创建）
gh repo view quanttide/<name> --json name,visibility 2>&1

# 检查根仓库是否已注册子模块
git submodule status | grep <name>

# 查看仓库内容与文档
ls <path>/
cat <path>/README.md
cat <path>/.gitmodules 2>/dev/null
cat <path>/AGENTS.md 2>/dev/null
```

**判定初始化类型**：

| 类型 | 特征 | 初始化动作 |
|------|------|-----------|
| 领域第二大脑 | `domains/{name}`，新建 | 创建全套配套仓库 + 注册子模块 + 领域定义 |
| 资产聚合容器 | `assets/{name}`，聚合系列仓库 | 注册已有系列子模块 + 容器文档 |
| 已有仓库补全 | 仓库成熟但 README 是 stub/内容已清空 | 重写定义文档，必要时规划 ROADMAP |

### 2. 创建配套仓库（领域第二大脑）

**仅当 GitHub 仓库不存在时执行**

```bash
# 领域仓库 + 6 个配套仓库
for repo in quanttide-<name> qtcloud-<name> \
  quanttide-<name>-toolkit \
  quanttide-laboratory-of-<english-name> \
  quanttide-context-of-<english-name> \
  quanttide-journal-of-<english-name> \
  quanttide-intention-of-<english-name>; do
  gh repo create quanttide/$repo --public --add-readme --description "量潮<中文名>"
done
```

### 3. 注册子模块

```bash
# 根仓库注册领域仓库
git submodule add https://github.com/quanttide/quanttide-<name>.git domains/quanttide-<name>

# 领域仓库内注册配套子模块
cd domains/quanttide-<name>
git submodule add https://github.com/quanttide/qtcloud-<name>.git apps/qtcloud-<name>
git submodule add https://github.com/quanttide/quanttide-<name>-toolkit.git packages/quanttide-<name>-toolkit
git submodule add https://github.com/quanttide/quanttide-laboratory-of-<english-name>.git examples/default
git submodule add https://github.com/quanttide/quanttide-context-of-<english-name>.git data/context
git submodule add https://github.com/quanttide/quanttide-journal-of-<english-name>.git data/journal
git submodule add https://github.com/quanttide/quanttide-intention-of-<english-name>.git data/intention
```

**资产聚合容器**（如 quanttide-profile）：注册该系列已有仓库，路径按 `default/company`、`domains/{abbrev}` 组织。

### 4. 编写文档骨架

**领域仓库 README.md**，结构统一：

- 标题：`# quanttide-<name>` + 一行中文名
- 概述：领域定位一句话
- 领域边界：领域职责列表；如有相邻领域，用块引用写明分工
- 子模块表：路径 / 说明 / git submodule 指向
- 许可：CC BY 4.0（资产容器参照同类仓库，如 intention 用 Apache 2.0）

**CHANGELOG.md**（Keep a Changelog 格式）：

```markdown
## [Unreleased]

### 新增

- 注册子模块：`apps/qtcloud-<name>`、`packages/quanttide-<name>-toolkit`、`examples/default`
- 注册子模块：`data/context`、`data/journal`、`data/intention`

## [0.1.0] - <日期>

### 新增

- 初始化<中文名>领域仓库
```

**LICENSE**：复制自同类仓库（`cp <同类仓库>/LICENSE <新仓库>/LICENSE`）。

### 5. 注册根仓库文档

| 文档 | 更新内容 |
|------|---------|
| `domains/README.md` | 目录结构树新增条目；领域清单表新增行（中文名/英文名/缩写/描述）；领域项目新增段落 |
| `README.md` | 领域数量 +1；目录结构示例补充 |
| `CHANGELOG.md` | `[Unreleased]` 新增子模块注册条目 |

### 6. 分层提交推送

```bash
# 第 1 层：领域/容器仓库
cd <领域或容器路径>
git add -A
git commit -m "chore: 初始化<中文名>仓库（注册配套子模块）"
git push

# 第 2 层：根仓库指针 + 文档
cd <根仓库>
git add <领域或容器路径> domains/README.md README.md CHANGELOG.md
git commit -m "feat: 新增<中文名>领域（<仓库名>）"
git push
```

**并行协作安全**：提交前 `git status --short` 确认暂存内容只包含本次变更；远端可能已有并行提交，推送被拒时先 `git pull --rebase` 再推。

### 7. 验证

```bash
git submodule status <path>        # 指针指向最新提交
git log --oneline -2               # 提交链正确
```

## 常见问题

- **仓库已存在**（HTTP 422）：复用已有仓库，不要重复创建；检查其内容再决定补全还是重建
- **远端有并行提交**：`git pull --rebase` 合并后再推送，不要强推
- **子模块未检出**：`git submodule update --init <path>`
- **契约要求审核**：`.quanttide/agent/contract.yaml` 要求用户确认的操作（git push、删除、改契约文件），先列操作清单等用户确认再执行
