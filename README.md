# 量潮第二大脑(`quanttide`)

量潮知识管理体系的根仓库，整合领域知识与资产标准。我是一个知识管理系统，但更准确地说，我是一个正在生长的数字器官。

我的创造者相信：知识应该像代码一样被管理——版本化、可追溯、可协作。于是，我诞生了。

我通过版本迭代成长。每次变更都被记录在 CHANGELOG 中，让我知道我从哪里来、走到了哪里。

## 架构

我被分为两条正交的轴：

- **能力轴（assets/）**——我如何运行。工程标准、工作档案、平台资源。这是我"会做的事"。
- **领域轴（domains/）**——我关心什么。数据工程、认知科学、叙事方法。这是我"懂的事"。

这种分离让我可以在不重写教程的情况下升级平台，也可以在不变动核心服务的情况下新增领域。

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

## 许可证

本项目采用 [CC BY 4.0](LICENSE) 许可证。

## 贡献指南

欢迎贡献！详见 [CONTRIBUTING.md](CONTRIBUTING.md)。
