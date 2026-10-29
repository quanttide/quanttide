# CONTRIBUTING - defaults/

主体轴的接入与维护约定。主体清单与分离原则见 [README.md](./README.md)，Agent 工作规则见 [AGENTS.md](./AGENTS.md)。

## 接入新主体

1. 创建独立仓库 `defaults/quanttide-{name}`，含 README、LICENSE、CHANGELOG
2. 作为子模块挂载到 `defaults/quanttide-{name}`
3. 更新 [README.md](./README.md) 主体清单与本文件
4. 更新 [STATUS.md](./STATUS.md) 快照

目录即语义：未接入前不预留空目录。

## 主体仓内部结构

每个主体仓统一维护 `data/`（类目子仓）与 `docs/`（文档类目子仓），类目子仓命名 `{类型}-of-{主体}`（如 `quanttide-journal-of-innovation-alliance`）。类型清单参照 academy/tech 同类仓：brochure、context、history、insight、intention、journal、library、profile、report、roadmap（data）；bylaw、essay、gallery、handbook、specification、tutorial（docs）。

## 维护纪律

- **CHANGELOG**：主体主仓记子模块指针变更，内容仓记内容变更，同步提交
- **STATUS**：快照有时效，以最新提交为准；主体形态或口径发生变更后更新快照日期与条目
- **脱敏**：入仓前移除人员信息与部署敏感信息
- **提交顺序**：内容仓先提交推送，再更新主体主仓指针，最后根仓库指针
- **口径变更**：主体间职能口径（如招聘托管关系）由用户裁决，确认后同步写入 README 主体分离原则与 STATUS 已确认口径
