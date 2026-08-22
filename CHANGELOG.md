# CHANGELOG

所有显著变更都将记录在此文件中。

格式基于 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/)。

版本遵循语义化版本规范：0.0.x（探索期）→ 0.x.y（验证期）→ x.y.z（正式期）

---

## [Unreleased]

### 新增

- 新增 `domains/quanttide-design` 子模块：交互设计（CC BY 4.0 许可证）
   - 注册子模块：`apps/qtcloud-design`、`packages/quanttide-design-toolkit`、`examples/default`
   - 注册子模块：`data/context`、`data/journal`、`data/intention`
- 新增 `domains/quanttide-entrep` 子模块：创业管理（CC BY 4.0 许可证）
   - 注册子模块：`apps/qtcloud-entrep`、`packages/quanttide-entrep-toolkit`、`examples/default`
   - 注册子模块：`data/context`、`data/journal`、`data/intention`
- 新增 `domains/quanttide-alliance` 子模块：联盟管理（CC BY 4.0 许可证）
   - 注册子模块：`apps/qtcloud-alliance`、`packages/quanttide-alliance-toolkit`、`examples/default`
   - 注册子模块：`data/context`、`data/journal`、`data/intention`
- 新增 `domains/quanttide-crowd` 子模块：众包管理（CC BY 4.0 许可证）
   - 注册子模块：`apps/qtcloud-crowd`、`packages/quanttide-crowd-toolkit`、`examples/default`
   - 注册子模块：`data/context`、`data/journal`、`data/intention`

### 变更

- `assets/quanttide-profile`：重新初始化工作档案聚合容器（清理过期文件后重建），注册 12 个档案子模块（`default/company` + `domains/` 下 11 个领域档案）

## [0.5.1] - 2026-08-16

### 新增

- 新增 `default/README.md`：法人主体档案说明（公司已接入，预留实训基地、联盟等主体）
- 新增 `domains/quanttide-secret` 子模块：密码管理（CC BY 4.0 许可证）
   - 注册子模块：`apps/qtcloud-secret`、`packages/quanttide-secret-toolkit`、`examples/default`
- 新增 `domains/quanttide-security` 子模块：安全工程（CC BY 4.0 许可证）
   - 注册子模块：`apps/qtcloud-security`、`packages/quanttide-security-toolkit`、`examples/default`
   - 注册子模块：`data/context`、`data/journal`
   - 注册子模块：`data/intention`（意图仓库，含统一规范三原则产品思路）
- 新增 `domains/quanttide-health` 子模块：健康管理（CC BY 4.0 许可证）
   - 注册子模块：`apps/qtcloud-health`、`packages/quanttide-health-toolkit`、`examples/default`
   - 注册子模块：`data/context`、`data/journal`
   - 注册子模块：`data/intention`（意图仓库，含个人/家庭/企业 + 数据安全产品思路）

### 变更

- README：架构补充主体轴（default/ 法人主体档案），领域数量修正为 27
- CONTRIBUTING：构建与子模块示例路径改为现有仓库（quanttide-handbook）
- ROADMAP：推进至 0.5.0 已达成，新增 0.6.x 目标
- AGENTS：三轴架构、default 路径约定更新为法人主体档案
- 移除 `assets/quanttide-index-toolkit`、`assets/quanttide-meta-toolkit` 子模块，收纳至 `assets/quanttide-toolkit/packages/`（工具集元仓库）
- 网络安全领域更名「安全工程」：中文名定为安全工程，英文命名定为 `security-engineering`（实验室仓库同步更名：quanttide-laboratory-of-software-security → quanttide-laboratory-of-security-engineering）
- README/ROADMAP/AGENTS：新增「统一规范」元原则（统一结构/信息集中/关联分析），0.6.x 目标补充关联声明与统一云模式

## [0.5.0] - 2026-08-10

### 移除

- 移除 `default/quanttide-founder` 子模块引用：创始人档案不再纳入根仓库体系（远端仓库保留，独立演进）

### 变更

- 更新子模块引用：`assets/quanttide-platform`、`default/quanttide-tech`、`domains/quanttide-business`、`domains/quanttide-course`、`domains/quanttide-execute`

## [0.4.11] - 2026-08-10

### 新增

- 新增 `domains/quanttide-project` 子模块：项目管理（CC BY 4.0 许可证）
   - 注册子模块：`apps/qtcloud-project`、`docs/handbook`、`docs/tutorial`、`docs/specification`、`packages/quanttide-project-toolkit`

## [0.4.10] - 2026-07-12

### 新增

- 新增 `domains/quanttide-execute` 子模块：执行管理（CC BY 4.0 许可证）
   - 新增 `apps/qtcloud-execute` 子模块：执行云服务

### 变更

- 更新子模块引用：`domains/quanttide-execute`

## [0.4.9] - 2026-07-12

### 新增

- 新增 `domains/quanttide-org` 子模块：组织管理（CC BY 4.0 许可证）

### 变更

- 更新子模块引用：`domains/quanttide-business`、`domains/quanttide-strategy`

### 移除

- 删除 `scripts/quanttide-sync.sh`：自动同步脚本（改用 qtcloud-devops 替代）

## [0.4.8] - 2026-07-12

### 新增

- 新增 `domains/quanttide-business` 子模块：商务拓展（CC BY 4.0 许可证）

### 变更

- 更新子模块引用：`assets/quanttide-handbook`、`default/quanttide-tech`、`domains/quanttide-data`
- 移除废弃子模块引用：`qtcloud-auth`

## [0.4.7] - 2026-07-11

### 新增

- 新增 `domains/quanttide-auth` 子模块：身份认证（CC BY 4.0 许可证）
- 新增 `domains/quanttide-pay` 子模块：支付工程（CC BY 4.0 许可证）

## [0.4.6] - 2026-07-08

### 新增

- 新增 `domains/quanttide-connect` 子模块：沟通管理（CC BY 4.0 许可证）

### 变更

- 更新子模块引用：`default/quanttide-tech`、`domains/quanttide-agent`、`domains/quanttide-data`、`domains/quanttide-strategy`

## [0.4.5] - 2026-07-08

### 新增

- 新增 `domains/quanttide-product` 子模块：产品研发
- 新增 `domains/quanttide-strategy` 子模块：战略管理（CC BY 4.0 许可证）
- 新增 `domains/quanttide-course` 子模块：课程研发

### 变更

- 更新子模块引用：`default/quanttide-founder`、`default/quanttide-tech`、`domains/quanttide-agent`、`domains/quanttide-think` 等

## [0.4.4] - 2026-06-04

### 变更

- `domains/quanttide-human` 初始化为 v0.1.0（含 apps/、docs/、examples/、packages/ 子模块）
- 更新子模块引用：`default/quanttide-tech`、`domains/quanttide-write`

## [0.4.3] - 2026-05-30

### 新增

- 新增 `domains/quanttide-hr` 子模块：人力资源

### 变更

- 更新子模块引用：`assets/quanttide-platform`、`default/quanttide-founder`、`default/quanttide-tech`、`domains/quanttide-innov`

## [0.4.2] - 2026-05-30

### 新增

- 新增 `domains/quanttide-finance` 子模块：财务管理
- 新增 `domains/quanttide-innov` 子模块：创新管理

## [0.4.1] - 2026-05-27

### 新增

- 新增 `domains/quanttide-meta` 子模块：元工程
- 新增 `domains/quanttide-econ` 子模块：经济建模

### 变更

- 更新 domains/README.md：补充新增领域到目录清单

## [0.4.0] - 2026-05-25

### 变更

- 更新子模块引用：
  - `assets/quanttide-platform`
  - `default/quanttide-founder`
  - `default/quanttide-tech`
  - `domains/quanttide-code`
  - `domains/quanttide-devops`
  - `domains/quanttide-knowl`
  - `domains/quanttide-think`

## [0.3.3] - 2026-05-23

### 变更

- 更新子模块引用：
  - `assets/quanttide-roadmap`（新增 default/company）
  - `assets/quanttide-tutorial`（重命名 qtdata/ 为 data/）

## [0.3.2] - 2026-05-23

### 新增

- 新增 `assets/quanttide-roadmap` 子模块：量潮工作蓝图
- 新增 `assets/quanttide-roadmap/default/founder` 子模块（quanttide-memory-of-founder）
- 新增 `assets/quanttide-roadmap/domains/agent` 子模块（quanttide-roadmap-of-agent-engineering）
- 新增 `assets/quanttide-roadmap/domains/devops` 子模块（quanttide-roadmap-of-devops）

### 变更

- 更新子模块引用：
  - `default/quanttide-founder`（更新 docs/memory 子模块引用）
  - `domains/quanttide-agent`（新增 docs/roadmap 子模块）
  - `assets/quanttide-roadmap`（初始化并添加 3 个子模块）

## [0.3.1] - 2026-05-22

### 新增

- 新增 `domains/quanttide-code` 子模块：软件工程领域
- 新增 `domains/quanttide-code/apps/qtcloud-code` 子模块
- 新增 `domains/quanttide-code/examples/default` 子模块

### 变更

- 更新子模块引用：
  - `default/quanttide-founder`
  - `domains/quanttide-knowl`

## [0.3.0] - 2026-05-22

### 新增

- 新增 `domains/quanttide-knowl` 子模块：知识工程领域
- 新增 `domains/quanttide-devops` 子模块：DevOps 工程领域
- 新增 `domains/quanttide-agent` 子模块：智能体工程领域

### 变更

- AGENTS.md：从 assets/quanttide-platform 同步 CLI 工具、SKILL 索引、AI 执行指引
- 更新子模块引用：`domains/quanttide-knowl` → v0.1.0（含 packages/toolkit）

## [0.2.4] - 2026-05-22

### 变更

- 更新子模块引用：
  - `assets/quanttide-platform`
  - `default/quanttide-founder`
  - `default/quanttide-tech`

## [0.2.3] - 2026-05-18

### 变更

- 更新子模块引用：
  - `assets/quanttide-platform`
  - `default/quanttide-founder`
  - `default/quanttide-tech`
  - `domains/quanttide-asset`

## [0.2.2] - 2026-05-08

### 变更

- 更新子模块引用：
  - `default/quanttide-founder` → v0.6.2
  - `default/quanttide-tech` → v0.5.1-1
  - `assets/quanttide-platform` → v0.4.2-2

## [0.2.1] - 2026-05-01

### 变更

- 更新子模块引用：
  - `assets/quanttide-platform`
  - `assets/quanttide-tutorial`
  - `default/quanttide-founder`
  - `default/quanttide-tech`
  - `domains/quanttide-asset`
  - `domains/quanttide-data`

## [0.2.0] - 2026-04-30

### 新增

- 新增 `assets/quanttide-tutorial` 子模块：教程指南
- 新增 `domains/quanttide-media` 子模块：媒体资产领域

### 变更

- 更新子模块引用：
  - `assets/quanttide-handbook` → v0.0.1-2
  - `assets/quanttide-journal` → heads/master
  - `assets/quanttide-platform` → v0.1.2-118
  - `assets/quanttide-profile` → v0.0.5-1
  - `assets/quanttide-specification` → 0.0.1-2
  - `default/quanttide-founder` → v0.2.1-376
  - `default/quanttide-tech` → v0.1.2-60
  - `domains/quanttide-asset` → v0.1.1-14
  - `domains/quanttide-data` → 0.0.1-5

## [0.1.3] - 2026-04-26

### 变更

- 更新 11 个子模块引用

## [0.1.2] - 2026-04-25

### 新增

- 新增 `domains/quanttide-think` 子模块：认知工程领域

### 变更

- 重构 `domains/README.md`：补充领域定义、命名规则和完整清单

## [0.1.1] - 2026-04-25

### 新增

- 新增 `domains/quanttide-asset` 子模块：资产管理领域

### 变更

- 更新子模块引用：
  - `default/quanttide-founder` → v0.2.1-378
  - `default/quanttide-tech` → v0.1.2-82
  - `domains/quanttide-data` → 0.0.1-22
  - `assets/quanttide-profile` → v0.0.5-2
  - `assets/quanttide-specification` → 0.0.1-2
  - `assets/quanttide-handbook` → v0.0.1-2
  - `assets/quanttide-journal`

## [0.1.0] - 2026-04-16

### 验证期

从探索期进入验证期，架构重构为双轴模型。

#### 新增

- 新增 `default/` 目录：默认模板仓库
- 新增 `default/quanttide-founder` 子模块：创始人档案
- 新增 `default/quanttide-tech` 子模块：科技档案
- 新增 `assets/quanttide-platform` 子模块：量潮平台
- 新增 `assets/quanttide-journal` 子模块：工作日志
- 新增 `.agents/` 目录：Agent 技能
- 新增 `.quanttide/` 目录：配置契约文件
- 新增 GitHub releases：v0.0.2, v0.0.3, v0.0.4

#### 变更

- 架构重构：`asset/` → `assets/`、`domain/` → `domains/`
- 子模块命名：使用仓库名作为目录名
- 简化文档：删除 index.md、meta/ 目录
- 合并文档：meta/self.md 内容合并到 README.md

## [0.0.4] - 2026-03-05

### 变更

- 更新子模块引用：
  - asset/handbook v0.0.1-1：新增 AGENTS.md
  - asset/profile v0.0.5：更新子模块和元数据
  - asset/specification 0.0.1-1：新增工程规范
  - domain/quanttide-data：新增数据领域

## [0.0.3] - 2026-03-05

### 新增

- 新增 asset/handbook 子模块：量潮工作手册
- 新增 asset/specification 子模块：量潮工程规范
- 新增 domain/quanttide-data 子模块：量潮数据领域

### 变更

- 重构元数据管理架构：各子模块独立维护 meta/ 目录
- 精简主仓库 metadata.md，指向子模块元数据避免重复维护
- 更新子模块引用：
  - asset/profile：新增 meta 目录
  - asset/handbook：新增 meta 目录

## [0.0.2] - 2026-03-05

### 变更

- 新增 meta/ 目录：元数据统一管理
- 更新子模块引用：
  - asset/profile v0.0.4
  - asset/profile/domain/asset v0.0.3
- 元数据迁移至主仓库统一管理

## [0.0.1] - 2026-03-04

### 探索期

初始化项目结构，建立知识管理体系基础框架。

- 初始化项目结构
- 添加 `asset/` 目录 - 量潮资产（工程标准、工作档案）
- 添加 `domain/` 目录 - 量潮领域（数据工程等）
- 新增 `asset/README.md` - 量潮资产说明文档
- 新增 `domain/README.md` - 量潮领域说明文档
- 新增 `CHANGELOG.md` - 更新日志
- 新增 `ROADMAP.md` - 路线图
- 新增 `CONTRIBUTING.md` - 贡献指南
- 新增 `AGENTS.md` - Agent 工作指南
- 添加 `index.md` - 项目概述和架构说明
- 添加 `README.md` - 快速开始指南
