# 量潮资产

量潮资产库（能力轴），包含工程标准、工作档案与平台资源。每个子目录对应一个独立资产仓库（子模块）。

## 目录结构

```
assets/
├── quanttide-handbook/      # 工作手册
├── quanttide-intention/     # 意图资产
├── quanttide-journal/       # 工作日志
├── quanttide-laboratory/    # 实验室（实验原型元仓库）
├── quanttide-platform/      # 平台（系统发布：apps + manifests）
├── quanttide-profile/       # 工作档案
├── quanttide-roadmap/       # 路线图
├── quanttide-specification/ # 工程规范
├── quanttide-toolkit/       # 工具集元仓库（toolkit 包聚合）
└── quanttide-tutorial/      # 教程
```

## 元仓库（一分为三）

平台资源按职能拆分为三个独立仓库，各自演进：

| 元仓库 | 路径 | 职能 |
|--------|------|------|
| quanttide-platform | `assets/quanttide-platform` | 系统发布：apps/（可部署应用）+ manifests/（发布清单） |
| quanttide-toolkit | `assets/quanttide-toolkit` | 工具集聚合：packages/（语言无关 toolkit 包） |
| quanttide-laboratory | `assets/quanttide-laboratory` | 实验原型聚合 |

## 使用说明

各子目录包含独立的 README 文件，请进入对应目录查看详细说明。
