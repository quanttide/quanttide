# CHANGELOG

所有显著变更都将记录在此文件中。

格式基于 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/)。

版本遵循语义化版本规范：0.0.x（探索期）→ 0.x.y（验证期）→ x.y.z（正式期）

---

## [Unreleased]

## [0.0.3] - 2026-03-05

### 新增

- 新增 asset/handbook 子模块：量潮工作手册
- 新增 asset/specification 子模块：量潮工程规范
- 新增 domain/quanttide-data 子模块：量潮数据领域

### 变更

- 重构元数据管理架构：各子模块独立维护 meta/ 目录
- 精简主仓库 metadata.md，指向子模块元数据避免重复维护
- 更新子模块引用：
  - asset/profile：新增 meta 目录
  - asset/handbook：新增 meta 目录

## [0.0.2] - 2026-03-05

### 变更

- 新增 meta/ 目录：元数据统一管理
- 更新子模块引用：
  - asset/profile v0.0.4
  - asset/profile/domain/asset v0.0.3
- 元数据迁移至主仓库统一管理

## [0.0.1] - 2026-03-04

### 探索期

初始化项目结构，建立知识管理体系基础框架。

- 初始化项目结构
- 添加 `asset/` 目录 - 量潮资产（工程标准、工作档案）
- 添加 `domain/` 目录 - 量潮领域（数据工程等）
- 新增 `asset/README.md` - 量潮资产说明文档
- 新增 `domain/README.md` - 量潮领域说明文档
- 新增 `CHANGELOG.md` - 更新日志
- 新增 `ROADMAP.md` - 路线图
- 新增 `CONTRIBUTING.md` - 贡献指南
- 新增 `AGENTS.md` - Agent 工作指南
- 添加 `index.md` - 项目概述和架构说明
- 添加 `README.md` - 快速开始指南
