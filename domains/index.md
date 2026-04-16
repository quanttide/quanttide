# 领域知识集合

本目录包含量潮所有业务领域的知识资产。每个子目录对应一个独立领域，遵循技术委员会定义的领域命名规则。

## 领域定义

基于技术委员会【提案】领域命名规则，我们定义了以下核心领域：

### 命名规则

**基本原则：**
- 尽可能和市场习惯一致。
- 可能根据需要重命名。

**中文命名：**
- 四个字最佳，可以五个字，避免六个字。
- 默认格式为 “xx 管理”和 “xx 工程”，其中管理以“人”为主要对象、工程以“机”为主要对象。

**英文命名与缩写：**
- **单数形式**：统一使用单数，如产品研发领域的缩写 `products` 改为 `product`。
- **约定俗称**：优先采用市场通用的缩写，如 `hr`（人力资源）、`crm`（客户关系）。
- **长单词缩写**：超过 8 个字母的英文单词使用缩写，如 communication 缩写为 `comm`。
- **一般规则**：通常使用单个单词或其缩写作为领域标识符。


### 领域清单
以下命名包括中文、英文、缩写、建设优先级（待修改）及描述：
| 中文命名 | 英文命名 | 缩写 | 建设优先级 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| **核心技术工程** |
| 数据工程 | data-engineering | `data` | 高优 | 数据采集、存储、处理与服务的工程化实践。 |
| 知识工程 | knowledge-engineering | `knowl` | 高优 | 知识表示、建模、推理与应用的工程化实践。 |
| 智能体工程 | agent-engineering | `agent` | 高优 | 侧重多智能体与人机协作。原 AIGC 工程重组升级。 |
| 云计算工程 | infrastructure | `infra` | 高优 | 侧重 IaaS 的标准化。备选名称“基础设施”。 |
| 写作管理 | writing-management | `writing` | 高优 | 面向内容创作者的写作流程、规范与协同管理。 |
| **沟通与管理** |
| 议事管理 | deliberation-management | `delib` | 高优 | 会议、决议与集体决策过程的规范管理。 |
| 行政管理 | administration-management | `admin` | 高优 | 日常行政事务、资产与服务的综合管理。 |
| 沟通管理 | communication-management | `comm` | 中优 | 组织内外部沟通的标准化与流程管理。 |
| **职能与人力** |
| 人力资源 | human-resources | `hr` | 高优 | 组织架构、招聘、绩效与员工关系管理。 |
| 财务管理 | finance-management | `finance` | 高优 | 预算、核算、税务与资金流动管理。 |
| 法务管理 | legal-management | `legal` | 中优 | 合同、合规与风险控制的法务管理。 |
| 项目管理 | project-management | `project` | 中优 | 项目立项、进度、资源与交付的全周期管理。 |
| **业务与客户** |
| 数字身份 | identity-management | `iam` 或 `id` | 中优 | 人员、组织与设备的统一身份与权限管理。 |
| 支付工程 | payment-engineering | `pay` | 中优 | 支付流程、渠道集成与账务处理的工程化。 |
| 算法工程 | algorithm-engineering | `alg` | 中优 | 算法的开发、训练、评估与部署工程化。 |
| 商务拓展 | business-development | `bd` | 中优 | 合作伙伴关系、新市场开拓与商业模式探索。 |
| 客户关系 | customer-relation-management | `crm` | 低优 | 客户信息、销售过程与售后服务的全链路管理。 |
| **品牌与运营** |
| 新媒体运营 | social-media | `media` | 中优 | 社交媒体矩阵、内容发布与粉丝互动运营。 |
| 社群运营 | social-group | `group` | 中优 | 私域社群、用户社区的组织与活跃度运营。 |
| 品牌管理 | brand-management | `brand` | 中优 | 品牌定位、视觉识别与市场声誉管理。 |
| 公共关系 | public-relations | `pr` | 低优 | 媒体关系、公众沟通与危机应对管理。 |

## 目录结构规范

每个领域目录遵循以下结构：
```
domain/
├── {领域缩写}/
│ ├── README.md
│ ├── spec/
│ ├── templates/
│ ├── examples/
│ └── glossary.md
└── index.md
```