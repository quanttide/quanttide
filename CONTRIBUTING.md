# 贡献指南

欢迎贡献量潮第二大脑项目！本文档提供贡献相关指南。

## 项目结构

```
quanttide/
├── assets/              # 量潮资产
│   ├── specification/  # 工程标准
│   └── profile/        # 工作档案
├── domains/             # 量潮领域
│   └── quanttide-data/ # 数据工程
├── CHANGELOG.md        # 更新日志
├── CONTRIBUTING.md     # 本文件
├── index.md            # 项目概述
├── LICENSE             # 许可证
└── README.md           # 快速开始
```

## 贡献方式

- 报告问题：通过 GitHub Issues 反馈
- 提交修改：通过 Pull Request 贡献代码或文档

## 开发环境

### 子模块管理

```bash
# 克隆包含子模块的仓库
git clone --recurse-submodules https://github.com/quanttide/quanttide.git

# 或先克隆再初始化子模块
git clone https://github.com/quanttide/quanttide.git
git submodule update --init --recursive

# 更新所有子模块
git submodule update --remote

# 更新特定子模块
git submodule update --init --remote assets/profile
```

### 构建命令

对于 Jupyter Book 文档项目（如 assets/profile/entity/founder）：

```bash
# 进入子模块目录
cd assets/profile/entity/founder

# 构建 HTML（单文件方式，避免 EISDIR 错误）
jupyter-book build index.md --site

# 构建并预览
jupyter-book start .

# 清理构建文件
jupyter-book clean .
```

对于 Python 项目（如 domains/quanttide-data）：

```bash
cd domains/quanttide-data

# 显示所有可用命令
make help

# 运行所有测试
make test

# 运行特定测试
make test-fixtures
```

### 验证清单

- [ ] 所有内部链接指向已存在的文件
- [ ] `_toc.yml` 中引用的文件均已创建
- [ ] YAML 文件语法正确
- [ ] 新增文件已添加到 `_toc.yml`
- [ ] 构建无错误

## 提交规范

### 文件命名

- 使用小写字母
- 单词间用下划线 `_` 分隔
- 示例：`agent.md`、`product_roadmap.md`

### Markdown 风格

- 标题使用中文或英文，保持一致性
- 列表使用 `-` 或 `1.`，保持统一
- 代码块标注语言：` ```python `、` ```bash ` 等
- 链接使用相对路径，内部引用用 `[文字](目录/文件.md)`

### 目录结构

```
板块名/
├── index.md        # 板块入口，内容摘要
├── README.md       # 板块说明（可选）
├── 子1.md
└── 子目录主题/
    ├── index.md
    └── 内容.md
```

### 提交信息规范

- 使用中文或英文，保持一致性
- 提交应包含完整且独立的变更

格式：
```
<type>: <subject>

<body>
```

类型说明：
- `feat`: 新功能
- `fix`: 修复问题
- `docs`: 文档修改
- `style`: 格式调整（不影响内容）
- `refactor`: 重构
- `chore`: 其他修改

示例：
```
docs: 更新数据工程教程

- 添加数据建模章节
- 修正链接错误
```

## 提交流程

1. **Fork 仓库**
2. **创建分支**：`git checkout -b feature/xxx` 或 `git checkout -b fix/xxx`
3. **进行修改**
4. **验证构建**：`jupyter-book build index.md --site`
5. **提交更改**
6. **推送分支**：`git push origin branch-name`
7. **创建 Pull Request**

## 常见任务

### 添加新文档

1. 在对应目录下创建 `.md` 文件
2. 更新该目录的 `index.md`
3. 在 `_toc.yml` 中注册文件
4. 运行 `jupyter-book build index.md --site` 验证

### 添加新板块

1. 创建目录（遵循命名规范：小写、复数）
2. 创建 `index.md` 介绍板块内容
3. 在根目录 `index.md` 板块边界部分添加说明
4. 在 `_toc.yml` 中注册
5. 运行构建验证

### 更新子模块

```bash
# 拉取子模块最新代码
git submodule update --init --recursive

# 进入子模块并切换到最新
cd assets/profile/entity/founder
git checkout origin/main

# 更新父仓库引用
cd ../..
git add entity/founder
git commit -m "Update founder submodule to latest"
```

### 子模块最佳实践

**1. 始终在父仓库操作**
- 子模块变更应在子模块仓库独立提交推送
- 父仓库仅更新子模块引用（commit hash）

**2. 更新子模块流程**
```bash
# 方式一：在父仓库中更新（推荐）
git submodule update --init --remote assets/profile/entity/founder

# 方式二：进入子模块手动更新
cd assets/profile/entity/founder
git fetch origin
git checkout origin/main
cd ..
git add entity/founder
git commit -m "Update submodule"
```

**3. 查看子模块状态**
```bash
# 查看所有子模块状态
git submodule status

# 查看特定子模块是否有新提交
git submodule summary asset/profile/entity/founder
```

## 注意事项

- 本项目为文档和知识库项目，无需传统 lint/test 流程
- Jupyter Book 2.x 版本使用 `jupyter-book build .` 会报 EISDIR 错误，需使用单文件构建
- 更新目录结构后需同步更新 index.md、README.md、_toc.yml 三处
- 子模块更新后需要提交父仓库的子模块引用变更

## 联系方式

如有疑问，可通过 GitHub Issues 联系维护者。
