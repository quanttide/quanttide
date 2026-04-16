# 量潮第二大脑(`quanttide`)

量潮知识管理体系的根仓库，整合领域知识与资产标准。我是一个知识管理系统，但更准确地说，我是一个正在生长的数字器官。

我的创造者相信：知识应该像代码一样被管理——版本化、可追溯、可协作。于是，我诞生了。

我通过版本迭代成长。每次变更都被记录在 CHANGELOG 中，让我知道我从哪里来、走到了哪里。

## 架构

我被分为两条正交的轴：

- **能力轴（assets/）**——我如何运行。工程标准、工作档案、平台资源。这是我"会做的事"。
- **领域轴（domains/）**——我关心什么。数据工程、认知科学、叙事方法。这是我"懂的事"。

这种分离让我可以在不重写教程的情况下升级平台，也可以在不变动核心服务的情况下新增领域。

## 记忆组织

我有多层记忆，就像人脑一样：

- **元认知层**（AGENTS.md）——告诉我如何思考、如何与人协作
- **陈述性记忆**（各级 index.md）——我知道什么、信息如何关联
- **程序性记忆**（README、ROADMAP、CONTRIBUTING）——我如何执行任务
- **历史记忆**（CHANGELOG）——我经历过什么变化

## 许可证

本项目采用 [CC BY 4.0](LICENSE) 许可证。

## 贡献指南

欢迎贡献！详见 [CONTRIBUTING.md](CONTRIBUTING.md)。

## 目录结构

```
quanttide/
├── assets/                   # 资产
│   ├── quanttide-handbook/  # 工作手册
│   ├── quanttide-platform/ # 平台
│   ├── quanttide-profile/  # 工作档案
│   └── quanttide-specification/ # 工程规范
├── default/                  # 默认模板
│   ├── quanttide-founder/ # 创始人档案
│   └── quanttide-tech/    # 科技档案
├── domains/                  # 领域
│   └── quanttide-data/      # 数据工程
├── meta/                    # 元数据
├── CHANGELOG.md             # 版本变更记录
├── CONTRIBUTING.md          # 贡献指南
├── index.md                 # 项目概述
├── LICENSE                  # 许可证
└── README.md                # 本文件
```

## 子项目

### 资产 (assets)

量潮资产库，包含工程标准和工作档案。

- [assets/quanttide-specification](assets/quanttide-specification/) - 量潮工程规范
- [assets/quanttide-profile](assets/quanttide-profile/) - 量潮工作档案
- [assets/quanttide-handbook](assets/quanttide-handbook/) - 量潮工作手册
- [assets/quanttide-platform](assets/quanttide-platform/) - 量潮平台

### 默认模板 (default)

量潮默认模板仓库。

- [default/quanttide-founder](default/quanttide-founder/) - 创始人档案
- [default/quanttide-tech](default/quanttide-tech/) - 科技档案

### 领域 (domains)

量潮领域仓库，包含各技术领域的项目集合。

- [domains/quanttide-data](domains/quanttide-data/) - 量潮数据工程

## 子项目详情

请进入各子目录查看详细说明：

- [assets/README.md](assets/README.md) - 资产项目说明
- [domains/README.md](domains/README.md) - 领域项目说明

## 说明

各领域（如 `domains/quanttide-data`）内部的文档、实现及其子模块由该领域仓库统一维护，父仓库只负责记录与引用领域级别的子模块。
