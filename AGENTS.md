# AGENTS.md - Agent 工作指南

本文档为 Agent（包括 CodeBuddy、Claude Code、Cursor、GitHub Copilot 等）在本仓库中工作提供指南。

## 核心记忆

### 项目定位

量潮第二大脑 (quanttide) 是量潮知识管理体系的根仓库，采用 Git 子模块架构管理多个独立的文档和代码模块。

### 核心架构思想

1. **正交分解**：分离"平台能力轴"（How it runs）与"领域知识轴"（What it expresses）
2. **单一事实源**：qtcloud-data 作为共享子模块，既是可部署服务也是开发依赖
3. **知识即代码**：文档、标准、工具、示例统一版本控制

### 子模块管理
- 子模块独立维护，父仓库只追踪引用
- **禁止**：直接在父仓库修改子模块文件
- **必须**：在子模块仓库独立提交推送，父仓库只更新引用

### 关键文档索引

| 文档 | 用途 |
|------|------|
| [README.md](README.md) | 快速开始、格式规范、构建命令 |
| [CONTRIBUTING.md](CONTRIBUTING.md) | 贡献指南、开发环境、提交流程、常见任务 |
| [CHANGELOG.md](CHANGELOG.md) | 版本变更记录 |
| [ROADMAP.md](ROADMAP.md) | 产品路线图、版本规划 |
| [index.md](index.md) | 项目概述、架构思想 |
| [meta/README.md](meta/README.md) | 元数据目录说明 |
| [meta/metadata.md](meta/metadata.md) | 各子项目版本信息 |
| [meta/self.md](meta/self.md) | 系统自我介绍 |

### 人机协作范式

1. **最小干预**：仅在用户明确请求时操作
2. **信息复用**：优先使用已有文档内容
3. **查询 index**：维护前先查询相关 index.md
4. **维护 index**：修改后同步更新 index.md
5. **验证优先**：完成后运行构建命令验证
6. **原子提交**：每次提交包含完整独立变更

## 必查文档清单

### 首次进入项目时必读

| 顺序 | 文档 | 查阅内容 |
|------|------|----------|
| 1 | [README.md](README.md) | 项目结构、快速开始命令、格式规范、构建命令 |
| 3 | 本文件 (AGENTS.md) | 人机协作范式、工作流程 |

### 执行具体任务时必查

| 任务类型 | 必查文档 | 查阅内容 |
|----------|----------|----------|
| **修改文档/添加内容** | 所在目录的 `index.md` | 内容结构、关联关系、分类边界 |
| **修改文档/添加内容** | 所在项目的 `_toc.yml` | 文件注册状态、目录结构 |
| **修改文档/添加内容** | [CONTRIBUTING.md](CONTRIBUTING.md) | 文件命名规范、Markdown风格、目录结构规范 |
| **提交代码** | [CONTRIBUTING.md](CONTRIBUTING.md) | 提交信息格式、提交流程 |
| **更新子模块** | [CONTRIBUTING.md](CONTRIBUTING.md) | 子模块更新流程、最佳实践 |
| **运行测试** | [README.md](README.md) | 构建命令、测试命令 |
| **发布版本** | [CHANGELOG.md](CHANGELOG.md) | 版本记录格式、最新版本 |
| **发布版本** | [ROADMAP.md](ROADMAP.md) | 版本规划、阶段目标 |
| **发布版本** | [meta/metadata.md](meta/metadata.md) | 维护元数据信息，更新版本记录 |
| **了解变更历史** | [CHANGELOG.md](CHANGELOG.md) | 历史变更记录 |
| **了解未来规划** | [ROADMAP.md](ROADMAP.md) | 路线图、里程碑 |

## CLI 工具快速索引

### qtcloud-devops

发布管理 CLI，将 GH Release 流程封装为一条命令。

```bash
# 安装
uv tool install qtcloud-devops-cli

# 预检查（不执行）
qtcloud-devops release --version v0.1.0 --changelog CHANGELOG.md --dry-run

# 执行发布
qtcloud-devops release --version v0.1.0 --changelog CHANGELOG.md -y
```

### qtcloud-knowl

知识抽取 CLI，从 Markdown 文档提取知识库，全程 LLM 驱动。

```bash
# 安装
uv tool install qtcloud-knowl-cli

# 从目录抽取知识
qtcloud-knowl extract --source /path/to/docs

# 审计知识库
qtcloud-knowl audit
```

需要 Vault 或 `QTCLOUD_KNOWL_LLM_API_KEY` 配置 LLM API key。

## SKILL 快速索引

| Skill | 用途 | 约束 |
|-------|------|------|
| devops-commit | 规范提交 | 先 `git status` 再 `git diff`，确认无误后提交 |
| devops-release | 基于 `qtcloud-devops release` 发布 | 必须逐行执行，跳过预检查则禁止发布 |
| devops-review | 流程审查 | — |
| docs-deploy | MyST 文档站构建与 GitHub Pages 部署 | — |
| product-drd | 数据需求文档（DRD）编写 | 按 SKILL.md 风格规范编写 |

### 执行规则

调用 Skill 后，必须按 SKILL.md 中的工作流从头到尾逐条执行。标有"必须执行，不可跳过"的步骤不得省略。AI 视为在逐一执行命令，而非阅读参考。若无法完成某一步（如工具不可用），必须向用户说明并等待指示，不可自行跳过。

## AI 执行指引

开始工作前阅读 [CONTRIBUTING.md](CONTRIBUTING.md) 的项目约定。

过往经验表明 AI 最容易在这些地方犯错，请特别注意：

- **替换 vs 并存**：修改内容前先确认旧内容怎么处理，不要默认替换
- **改内容 vs 改名字**：操作前明确目标是文件/目录的内容还是名称
- **子仓库 vs 主仓库**：不要在子仓库里做主仓库的事（如改其 ROADMAP），也不要反过来
- **减法优先**：删除无效内容的优先级高于新增，宁可空着不放不确定的东西
- **目录即语义**：目录名使用代码实际结构，不用抽象概念。有实体才建目录，但预留目录也是有效的架构声明——不要擅自移除用户放置的空目录和占位文件
- **提交即推送**：提交后默认推送到远端（主仓库和子模块都推），除非用户明确说"只提交不推"

### Vault 密钥命名风格

不要让 Vault key 名 = Python 字段名。它们是不同层的命名：

| 层级 | 命名原则 | 例子 |
|------|---------|------|
| Vault 路径 | 标识提供商/范围 | `secret/deepseek` |
| Vault key | 简短自描述，路径已做区隔 | `api_key`、`base_url` |
| Python 字段 | 遵循应用自有命名 | `llm_api_key` |

Vault key 只需在路径范围内自描述即可，不要跟应用字段名强行一致。

### 特殊文档提醒

完成重要变更后，检查是否需要同步更新以下文档：

| 文档 | 触发条件 |
|------|---------|
| [CHANGELOG.md](CHANGELOG.md) | 对用户可见的变更（新功能、重构、修复） |
| [ROADMAP.md](ROADMAP.md) | 方向调整、阶段性成果达成 |
| [CONTRIBUTING.md](CONTRIBUTING.md) | 目录结构或 packages/apps 约定变化 |
| [docs/prd/index.md](docs/prd/index.md) | 工作方式或原则发生变化 |
| [README.md](README.md) | 产品功能或仓库结构变化 |
| [AGENTS.md](AGENTS.md) | AI 工作经验增加 |

AI 应在完成工作后主动提醒用户是否需要更新这些文档，而非等用户提出。

## 子模块

各子模块有自己的 AGENTS.md，开发前查阅具体模块。
各子模块的 `docs/drd/` 包含数据需求文档，开发前查阅对应模块的 DRD。

## 财务管理领域子模块业务规范

`domains/quanttide-finance` 及其嵌套子模块遵循以下结构：

```
domains/quanttide-finance/          ← 财务管理领域仓库
├── apps/                           ← 应用子模块
│   ├── qtcloud-finance/            ← 云端财务应用
│   └── qtadmin/                    ← 管理后台
├── packages/
│   └── toolkit/                    ← 财务管理工具箱 (quanttide-finance-toolkit)
├── examples/
│   └── default/                    ← 财务管理实验室 (quanttide-laboratory-of-finance)
│       └── apps/
│           └── qtbudget/           ← 量潮预算管家（Flutter Web 客户端）
└── docs/                           ← 领域文档
```

### 层级职责

| 层级 | 职责 | 所有者 | 维护方式 |
|------|------|--------|---------|
| `quanttide-finance` | 领域主仓库，追踪所有子模块引用 | 领域负责人 | 独立提交推送 |
| `apps/*` | 面向用户的可部署应用 | 应用团队 | 各自独立仓库 |
| `packages/toolkit` | 领域共享库/工具集 | 领域负责人 | 独立仓库 |
| `examples/default` | 实验性项目、原型验证 | 实验室负责人 | 独立仓库 |
| `examples/default/apps/qtbudget` | 最简 Flutter Web 客户端，离线预算+记账 | 实验项目 | 包含在实验室仓库中 |

### 业务规则

- **记账与预算分离**：`qtbudget` 专注核心记账（凭证录入 → 总账 → 试算平衡表），预算分析作为衍生功能
- **科目体系**：采用标准会计科目（资产/负债/权益/收入/费用），支持自定义扩展
- **借贷平衡**：每笔凭证 `debit.sum == credit.sum`，客户端本地校验
- **数据导出**：支持导出 Beancount 格式，供 Fava/bean-check 等外部工具使用
- **离线优先**：所有数据存储在浏览器 localStorage，无需服务端
