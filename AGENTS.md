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
