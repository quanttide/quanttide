# 量潮第二大脑(`quanttide`)

量潮知识管理体系的根仓库，整合领域知识与资产标准。

## 目录结构

```
quanttide/
├── asset/                   # 量潮资产
│   ├── specification/       # 工程标准
│   └── profile/             # 工作档案
└── domain/                  # 量潮领域
    └── quanttide-data/      # 数据工程
```

## 子项目

### 资产 (asset)

量潮资产库，包含工程标准和工作档案。

- [asset/specification](asset/specification/) - 量潮工程标准
- [asset/profile](asset/profile/) - 量潮工作档案

### 领域 (domain)

量潮领域仓库，包含各技术领域的项目集合。

- [domain/quanttide-data](domain/quanttide-data/) - 量潮数据工程

## 快速开始

克隆并同时初始化子模块：

```bash
git clone --recurse-submodules https://github.com/quanttide/quanttide.git
```

如果已经克隆仓库，初始化并更新子模块：

```bash
git submodule update --init --recursive
```

## 更新子模块

更新所有子模块到最新版本：

```bash
git submodule update --remote
```

更新特定子模块：

```bash
cd <submodule-path>
git pull origin main
cd ..
git add <submodule-path>
git commit -m "Update <submodule-path>"
```

## 子项目详情

请进入各子目录查看详细说明：

- [asset/README.md](asset/README.md) - 资产项目说明
- [domain/README.md](domain/README.md) - 领域项目说明

## 说明

各领域（如 `domain/quanttide-data`）内部的文档、实现及其子模块由该领域仓库统一维护，父仓库只负责记录与引用领域级别的子模块。
