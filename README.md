# 量潮第二大脑(`quanttide`)

量潮知识管理体系的根仓库，整合领域知识与资产标准。

## 许可证

本项目采用 [CC BY 4.0](LICENSE) 许可证。

## 贡献指南

欢迎贡献！详见 [CONTRIBUTING.md](CONTRIBUTING.md)。

## 目录结构

```
quanttide/
├── assets/                   # 量潮资产
│   ├── specification/       # 工程标准
│   └── profile/             # 工作档案
├── domains/                  # 量潮领域
│   └── quanttide-data/      # 数据工程
├── CHANGELOG.md             # 版本变更记录
├── CONTRIBUTING.md          # 贡献指南
├── index.md                 # 项目概述
├── LICENSE                  # 许可证
└── README.md                # 本文件
```

## 子项目

### 资产 (asset)

量潮资产库，包含工程标准和工作档案。

- [asset/specification](asset/specification/) - 量潮工程标准
- [asset/profile](asset/profile/) - 量潮工作档案

### 领域 (domains)

量潮领域仓库，包含各技术领域的项目集合。

- [domains/quanttide-data](domains/quanttide-data/) - 量潮数据工程

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

## 格式规范

### 文件命名

- 使用小写字母
- 单词之间用下划线 `_` 分隔
- 示例：`agent.md`、`product_roadmap.md`

### 目录命名

- 使用小写字母
- 使用复数形式
- 示例：`assets/`、`domains/`、`docs/`

### Markdown 规范

- 标题使用 ATX 风格（`#`、`##`、`###`）
- 代码块使用 fenced code（```）
- 列表使用 `-` 或 `1.`
- 链接使用 `[文字](路径)` 格式
- 区块之间保留空行

## 构建命令

对于 Jupyter Book 文档项目：

```bash
# 进入子模块目录
cd asset/profile/entity/founder

# 构建 HTML（单文件方式，避免 EISDIR 错误）
jupyter-book build index.md --site

# 构建并预览
jupyter-book start .

# 清理构建文件
jupyter-book clean .
```

对于 Python 项目：

```bash
cd domains/quanttide-data

# 显示所有可用命令
make help

# 运行所有测试
make test
```

## 质量检查

### 验证清单

- [ ] 所有内部链接指向已存在的文件
- [ ] `_toc.yml` 中引用的文件均已创建
- [ ] YAML 文件语法正确
- [ ] 新增文件已添加到 `_toc.yml`
- [ ] 构建无错误

## 子项目详情

请进入各子目录查看详细说明：

- [assets/README.md](assets/README.md) - 资产项目说明
- [domains/README.md](domains/README.md) - 领域项目说明

## 说明

各领域（如 `domains/quanttide-data`）内部的文档、实现及其子模块由该领域仓库统一维护，父仓库只负责记录与引用领域级别的子模块。
