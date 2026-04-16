# 量潮领域

量潮领域仓库，包含各技术领域的项目集合。

## 目录结构

```
domain/
└── quanttide-data/          # 量潮数据工程
    ├── docs/                # 文档类项目
    │   ├── tutorial/        # 数据工程教程
    │   ├── handbook/        # 数据工程手册
    │   ├── alternative/     # 数据工程竞品
    │   ├── specification/   # 数据工程标准
    │   └── profile/         # 数据工程档案
    ├── src/                 # 源代码类项目
    │   ├── qtcloud-data/    # 数据云
    │   └── toolkit/         # 数据工程工具箱
    ├── examples/            # 示例类项目
    │   ├── quanttide-example-of-data-engineering/
    │   └── quanttide-example-of-big-data/
    └── tests/               # 测试类项目
        └── fixtures/        # 测试数据集
```

## 领域项目

### 数据工程 (quanttide-data)

量潮数据工程领域，提供数据工程相关的文档、工具、示例和云服务。

**文档**
- tutorial - 数据工程教程
- handbook - 数据工程手册
- alternative - 备选方案文档
- specification - 数据工程标准
- profile - 数据工程画像

**源代码**
- qtcloud-data - 数据云服务
- toolkit - 数据工具包（Python/Flutter/Django SDK）

**示例**
- quanttide-example-of-data-engineering - 数据工程示例
- quanttide-example-of-big-data - 大数据示例

**测试**
- fixtures - 测试数据集

## 使用说明

克隆此仓库时会自动包含所有子模块：

```bash
git clone --recurse-submodules https://github.com/quanttide/quanttide-data.git
```

如果已经克隆了仓库，可以单独获取子模块：

```bash
git submodule update --init --recursive
```

## 更新子模块

更新所有子模块到最新版本：

```bash
git submodule update --remote
```

## 子项目详情

请进入各子目录查看详细说明：

- [quanttide-data/README.md](./quanttide-data/README.md)
