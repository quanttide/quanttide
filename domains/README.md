# 量潮领域

量潮领域仓库，包含各业务领域的知识资产。每个子目录对应一个独立领域。

## 目录结构

```
domains/
├── quanttide-agent/       # 智能体工程
├── quanttide-alliance/    # 联盟管理
├── quanttide-asset/       # 资产管理
├── quanttide-auth/        # 身份认证
├── quanttide-business/    # 商务拓展
├── quanttide-code/        # 软件工程
├── quanttide-connect/     # 沟通管理
├── quanttide-course/      # 课程研发
├── quanttide-crowd/       # 众包管理
├── quanttide-customer/    # 客户关系
├── quanttide-data/        # 数据工程
├── quanttide-delib/       # 议事管理
├── quanttide-design/      # 交互设计
├── quanttide-devops/      # DevOps 工程
├── quanttide-docs/        # 文档工程
├── quanttide-econ/        # 经济建模
├── quanttide-entrep/      # 创业管理
├── quanttide-execute/     # 执行管理
├── quanttide-finance/     # 财务管理
├── quanttide-health/      # 健康管理
├── quanttide-human/       # 人力资源
├── quanttide-innov/       # 创新管理
├── quanttide-knowl/       # 知识工程
├── quanttide-learn/       # 学习管理
├── quanttide-media/       # 新媒体运营
├── quanttide-meta/        # 元工程
├── quanttide-org/         # 组织管理
├── quanttide-pay/         # 支付工程
├── quanttide-product/     # 产品研发
├── quanttide-project/     # 项目管理
├── quanttide-sales/       # 销售管理
├── quanttide-secret/      # 密码管理
├── quanttide-security/    # 安全工程
├── quanttide-strategy/    # 战略管理
├── quanttide-think/       # 认知工程
└── quanttide-write/       # 写作管理
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
| 课程研发 | course-engineering | `course` | 课程研发全生命周期的工程化实践。 |
| 写作管理 | writing-management | `writing` | 面向内容创作者的写作流程管理。 |
| 文档工程 | document-engineering | `docs` | 文档的写作、组织、发布与访问工程化实践。 |
| 安全工程 | security-engineering | `sec` | 网络、应用与数据安全的防护与运营工程化实践。 |
| 交互设计 | interaction-design | `ixd` | 产品界面布局与交互流程的设计工程化实践。 |
| **沟通与管理** |
| 议事管理 | deliberation-management | `delib` | 会议、决议与集体决策过程管理。 |
| 行政管理 | administration-management | `admin` | 日常行政事务、资产管理。 |
| 沟通管理 | communication-management | `comm` | 组织内外部沟通的标准化管理。 |
| 联盟管理 | alliance-management | `alliance` | 组织间联盟的建立、协作与治理。 |
| **职能与人力** |
| 人力资源 | human-resources | `hr` | 组织架构、招聘、绩效管理。 |
| 健康管理 | health-management | `health` | 身心健康平衡管理，面向个人、家庭与企业。 |
| 财务管理 | finance-management | `finance` | 预算、核算、税务管理。 |
| 法务管理 | legal-management | `legal` | 合同、合规与风险控制。 |
| 项目管理 | project-management | `project` | 项目全周期管理。 |
| 学习管理 | learning-management | `learn` | 学习路径、进度与效果的标准化管理。 |
| **业务与客户** |
| 数字身份 | identity-management | `iam` | 统一身份与权限管理。 |
| 密码管理 | secret-management | `secret` | 凭证、密钥与敏感信息的全生命周期管理。 |
| 支付工程 | payment-engineering | `pay` | 支付流程与账务处理。 |
| 算法工程 | algorithm-engineering | `alg` | 算法开发与部署工程化。 |
| 商务拓展 | business-development | `bd` | 合作伙伴关系与市场开拓。 |
| 创业管理 | entrepreneurship-management | `entrep` | 从创业想法到企业成立与早期成长的经营过程管理。 |
| 众包管理 | crowdsourcing-management | `crowd` | 众包市场的发单、接单、标准交易与信用沉淀。 |
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

### quanttide-course

量潮课程研发，专注于课程研发全生命周期的工程化实践。

**功能：**
- 课程设计与开发
- 课程内容管理
- 课程交付与评估

### quanttide-auth

量潮身份认证，专注于统一身份管理与权限控制的工程化实践。

**功能：**
- 身份生命周期管理
- 认证协议与实现（OAuth 2.0、OIDC、SAML）
- 授权与权限模型（RBAC、ABAC）
- 安全策略（多因素认证、会话管理）

### quanttide-business

量潮商务拓展，专注于合作伙伴关系与市场开拓的管理实践。

**功能：**
- 合作伙伴管理（筛选、评估、关系维护）
- 市场开拓（目标市场分析、渠道建设、商机挖掘）
- 销售策略（定价、合同谈判、成交管理）
- 客户关系（信息管理、售前支持、售后维护）

### quanttide-execute

量潮执行管理，专注于任务执行与流程编排的管理实践。

**功能：**
- 任务执行（任务定义、调度策略、执行引擎）
- 流程编排（流程建模、规则引擎、状态管理）
- 工作流管理（工作流设计、审批流转、版本管理）
- 自动化调度（定时任务、事件触发、重试机制）

**应用：**
- `apps/qtcloud-execute` - 量潮执行云服务

### quanttide-org

量潮组织管理，专注于组织架构设计与行政管理的工程化实践。

**功能：**
- 组织架构（部门设置、岗位体系、权责划分）
- 行政管理（日常事务、资产管理、办公流程）
- 组织发展（人才发展、绩效管理、文化建设）
- 制度规范（管理制度、流程标准、合规运营）

### quanttide-pay

量潮支付工程，专注于支付流程与账务处理的工程化实践。

**功能：**
- 支付流程（收银台、支付网关、路由策略）
- 账务处理（账户体系、会计分录、余额管理）
- 对账结算（交易对账、资金结算、差错处理）
- 风控合规（交易风控、反欺诈、监管合规）

### quanttide-project

量潮项目管理，专注于项目全生命周期的管理实践与工程化支持。

**功能：**
- 项目规划（立项评估、范围界定、计划制定）
- 项目执行（任务分解、进度跟踪、资源协调）
- 项目监控（里程碑管理、风险控制、质量保障）
- 项目收尾（验收交付、复盘总结、经验沉淀）

**应用：**
- `apps/qtcloud-project` - 量潮项目管理云服务

### quanttide-connect

量潮沟通管理，专注于组织内外部沟通的标准化管理实践。

**功能：**
- 沟通策略与标准化
- 消息与通知管理
- 沟通渠道管理

### quanttide-secret

量潮密码管理，专注于凭证、密钥与敏感信息全生命周期的管理实践。

**功能：**
- 凭证管理（口令、API Key、Token 的登记、轮换与回收）
- 密钥管理（签名密钥、加密密钥的生成、存储与分发）
- 敏感信息（分类、脱敏、访问控制与审计）
- 工具规范（Vault 等密钥管理服务的接入规范）

### quanttide-security

量潮安全工程，专注于网络、应用与数据安全的防护与运营工程化实践。

**功能：**
- 网络与边界安全（防火墙与访问控制、VPN、入侵检测与防御）
- 应用与代码安全（安全开发生命周期、威胁建模、代码审计、漏洞管理）
- 数据安全与加密（加密、脱敏、防泄漏、密钥体系应用）
- 身份与访问安全（认证授权机制加固、权限治理）
- 安全运营（威胁监测、应急响应、安全审计与合规）

### quanttide-health

量潮健康管理，强调身心健康的平衡，面向个人、家庭、企业等主体。

**功能：**
- 身体健康（体检、运动、睡眠、营养管理）
- 心理健康（情绪与压力管理、心理测评与干预）
- 家庭健康（家庭成员协同健康管理）
- 企业健康（员工健康、职业健康与健康福利）
- 健康数据（健康档案与指标的集中管理、关联分析）

### quanttide-design

量潮交互设计，专注于产品界面布局与交互流程的设计工程化实践。

**功能：**
- 界面布局（页面结构、信息层级、导航与组件摆放）
- 交互流程（操作路径、状态流转与反馈设计）
- 设计原则（一致性、反馈即时、极简主义）
- 设计工程化（设计文档标准化、设计稿与代码衔接）

### quanttide-entrep

量潮创业管理，专注于从创业想法到企业成立与早期成长的经营过程管理。

**功能：**
- 创业机会（机会识别与评估、商业模式设计、市场验证）
- 创业计划（商业计划书、融资计划、资源整合）
- 早期经营（公司设立、团队组建、产品市场匹配）
- 成长管理（规模化经营、组织建设、退出与传承）

### quanttide-alliance

量潮联盟管理，专注于组织间联盟的建立、协作与治理。

**功能：**
- 联盟建立（联盟目标与模式设计、成员招募与准入、合作协议）
- 联盟协作（联合项目、资源共享、跨组织协同机制）
- 联盟治理（议事与决策机制、权责划分、冲突处理）
- 联盟运营（成员关系维护、价值评估、联盟演进与退出）

### quanttide-crowd

量潮众包管理，专注于众包市场的发单、接单、标准交易与信用沉淀。

**功能：**
- 需求发单（需求拆解为标准任务、交付标准与验收准则定义）
- 执行接单（执行方注册准入、标准内竞价、接单履约）
- 标准交易（标准任务、标准交付、标准验收，验收准则兜底）
- 信用沉淀（执行方信用记录、标准执行率、认证与导流）

### quanttide-docs

量潮文档工程，专注于文档的写作、组织、发布与访问工程化实践。

**功能：**
- 文档写作（文档规范、写作流程、内容结构管理）
- 文档组织（文档分类、目录体系、关联关系管理）
- 文档发布（文档构建、站点发布、版本管理）
- 文档访问（检索、导航、阅读体验）