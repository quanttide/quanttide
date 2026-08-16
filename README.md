# 量潮第二大脑(`quanttide`)

量潮知识管理体系的根仓库，整合领域知识与资产标准。我是一个知识管理系统，但更准确地说，我是一个正在生长的数字器官。

我的创造者相信：知识应该像代码一样被管理——版本化、可追溯、可协作。于是，我诞生了。

我通过版本迭代成长。每次变更都被记录在 CHANGELOG 中，让我知道我从哪里来、走到了哪里。

## 架构

我被分为三条正交的轴：

- **能力轴（assets/）**——我如何运行。工程标准、工作档案、平台资源。这是我"会做的事"。
- **领域轴（domains/）**——我关心什么。数据工程、认知科学、叙事方法。这是我"懂的事"。
- **主体轴（default/）**——我是谁。法人主体档案（公司、实训基地、联盟）。这是我"所属的事"。

这种分离让我可以在不重写教程的情况下升级平台，也可以在不变动核心服务的情况下新增领域，还可以在不改动体系结构的情况下接入新的法人主体。

## 统一规范

三轴正交解决「怎么分」，统一规范解决「怎么统一」——两者共同保证整个系统的一致性：

- **统一结构**：每个领域第二大脑遵循同一套信息架构（data/ 陈述性记忆 + docs/ 程序性记忆 + apps/ + packages/ + examples/），新领域按模板创建
- **信息集中**：领域第二大脑是该领域信息的唯一集中点，应用产生的数据回流领域档案
- **关联分析**：信息集中后通过统一命名与契约声明建立跨领域关联，支持关联分析

平台资源按"一分为三"组织，各自独立演进：

- **quanttide-platform**——系统发布。收敛为 apps（可部署应用）+ manifests（发布清单）。
- **quanttide-toolkit**——工具集元仓库。聚合语言无关的 toolkit 包（packages/）。
- **quanttide-laboratory**——实验室元仓库。聚合实验性/原型项目。

## 目录结构

```
quanttide/
├── assets/                      # 能力轴：资产仓库
│   ├── quanttide-handbook/      # 工作手册
│   ├── quanttide-intention/     # 意图资产
│   ├── quanttide-journal/       # 工作日志
│   ├── quanttide-laboratory/    # 实验室（实验原型元仓库）
│   ├── quanttide-platform/      # 平台（系统发布：apps + manifests）
│   ├── quanttide-profile/       # 工作档案
│   ├── quanttide-roadmap/       # 路线图
│   ├── quanttide-specification/ # 工程规范
│   ├── quanttide-toolkit/       # 工具集元仓库（toolkit 包聚合）
│   └── quanttide-tutorial/      # 教程
├── default/                     # 法人主体档案
│   └── quanttide-tech/          # 科技档案
├── domains/                     # 领域轴：31 个领域仓库
│   ├── quanttide-data/          # 数据工程
│   ├── quanttide-course/        # 课程研发
│   ├── quanttide-design/        # 交互设计
│   ├── quanttide-finance/       # 财务管理
│   ├── quanttide-health/        # 健康管理
│   ├── quanttide-knowl/         # 知识工程
│   ├── quanttide-secret/        # 密码管理
│   ├── quanttide-security/      # 安全工程
│   └── ...                      # 完整列表见 domains/README.md
├── .quanttide/                  # 元数据与契约文件
├── AGENTS.md                    # AI 协作指南
├── CHANGELOG.md                 # 版本变更记录
├── CONTRIBUTING.md              # 贡献指南
├── LICENSE                      # 许可证
└── README.md                    # 本文件
```

## 许可证

本项目采用 [CC BY 4.0](LICENSE) 许可证。

## 贡献指南

欢迎贡献！详见 [CONTRIBUTING.md](CONTRIBUTING.md)。
