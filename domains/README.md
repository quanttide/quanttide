# 量潮领域

量潮领域仓库，包含各业务领域的知识资产。每个子目录对应一个独立领域。

## 目录结构

```
domains/
├── quanttide-think/       # 认知工程
├── quanttide-data/        # 数据工程
├── quanttide-agent/       # 智能体工程
├── quanttide-knowl/       # 知识工程
├── quanttide-code/        # 软件工程
├── quanttide-devops/      # DevOps 工程
├── quanttide-asset/       # 资产管理
├── quanttide-media/       # 媒体资产
├── quanttide-meta/        # 元工程
├── quanttide-econ/        # 经济建模
└── index.md               # 领域索引
```

## 领域定义

基于技术委员会领域命名规则：

### 命名规则

- **中文命名**：四个字最佳，避免六个字。格式为"xx管理"（以人为主）或"xx工程"（以机为主）
- **英文命名**：统一使用单数
- **缩写规则**：市场通用缩写（hr、crm 等）；超过 8 字母的单词使用缩写

### 领域清单

| 中文命名 | 英文命名 | 缩写 | 描述 |
| :--- | :--- | :--- | :--- |
| **核心技术工程** |
| 数据工程 | data-engineering | `data` | 数据采集、存储、处理与服务的工程化实践。 |
| 知识工程 | knowledge-engineering | `knowl` | 知识表示、建模、推理与应用的工程化实践。 |
| 智能体工程 | agent-engineering | `agent` | 侧重多智能体与人机协作。 |
| 云计算工程 | infrastructure | `infra` | 侧重 IaaS 的标准化。 |
| 写作管理 | writing-management | `writing` | 面向内容创作者的写作流程管理。 |
| **沟通与管理** |
| 议事管理 | deliberation-management | `delib` | 会议、决议与集体决策过程管理。 |
| 行政管理 | administration-management | `admin` | 日常行政事务、资产管理。 |
| 沟通管理 | communication-management | `comm` | 组织内外部沟通的标准化管理。 |
| **职能与人力** |
| 人力资源 | human-resources | `hr` | 组织架构、招聘、绩效管理。 |
| 财务管理 | finance-management | `finance` | 预算、核算、税务管理。 |
| 法务管理 | legal-management | `legal` | 合同、合规与风险控制。 |
| 项目管理 | project-management | `project` | 项目全周期管理。 |
| **业务与客户** |
| 数字身份 | identity-management | `iam` | 统一身份与权限管理。 |
| 支付工程 | payment-engineering | `pay` | 支付流程与账务处理。 |
| 算法工程 | algorithm-engineering | `alg` | 算法开发与部署工程化。 |
| 商务拓展 | business-development | `bd` | 合作伙伴关系与市场开拓。 |
| 客户关系 | customer-relation-management | `crm` | 客户信息与销售过程管理。 |
| **品牌与运营** |
| 新媒体运营 | social-media | `media` | 社交媒体矩阵运营。 |
| 社群运营 | social-group | `group` | 私域社群组织与运营。 |
| 品牌管理 | brand-management | `brand` | 品牌定位与视觉识别。 |
| 公共关系 | public-relations | `pr` | 媒体关系与危机应对。 |

## 子模块使用

克隆此仓库时自动包含所有子模块：

```bash
git clone --recurse-submodules https://github.com/quanttide/quanttide.git
```

单独获取子模块：

```bash
git submodule update --init --recursive
```

更新所有子模块：

```bash
git submodule update --remote
```

## 领域项目

### quanttide-think

量潮认知工程，专注于知识管理的方法论研究和实践。

**功能：**
- 认知框架研究
- 知识工程方法论
- 思维模型与工具

### quanttide-data

量潮数据工程领域，提供数据工程相关的文档、工具、示例和云服务。

**文档：**
- tutorial - 数据工程教程
- handbook - 数据工程手册
- specification - 数据工程标准

**源代码：**
- qtcloud-data - 数据云服务
- toolkit - 数据工具包