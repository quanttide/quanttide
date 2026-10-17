# 默认档案

量潮默认档案库，按**主体**组织。每个子目录对应一个主体（法人主体、创始人，子模块）。

## 主体

| 主体 | 路径 | 状态 |
|:-----|:-----|:-----|
| 公司 | `defaults/quanttide-tech` | 已接入 |
| 实训基地 | `defaults/quanttide-academy` | 已接入 |
| 联盟 | `defaults/quanttide-alliance` | 已接入 |
| 创始人 | `defaults/quanttide-founder` | 已接入 |

当前接入**公司**主体（`quanttide-tech` 科技档案）、**实训基地**主体（`quanttide-academy`）、**联盟**主体（`quanttide-alliance` 联盟第二大脑）与**创始人**主体（`quanttide-founder` 创始人创业档案）。

其他主体按需创建独立仓库后接入。目录即语义，未接入前不预留空目录。

命名沿革：实训基地原先按量潮内部教学制度中「训练营」惯例预留为 `bootcamp`（见 qtclass 内部教学：`ceo_assistant_bootcamp.md`）；2026-09-21 定名 `academy`，与学术研究领域（`research`）在名称上区分开；2026-10-17 联盟主体仓库由 `quanttide-innovation-alliance` 更名为 `quanttide-alliance`。

## 接入约定

1. 每个法人主体对应一个独立仓库，路径 `defaults/quanttide-{name}`
2. 仓库包含独立的 README、LICENSE、CHANGELOG 等档案文件
3. 接入后同步更新本文件的主体清单

## 使用说明

各子目录包含独立的 README 文件，请进入对应目录查看详细说明。
