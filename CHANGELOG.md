# CHANGELOG

所有显著变更都将记录在此文件中。

格式基于 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/)。

版本遵循语义化版本规范：0.0.x（探索期）→ 0.x.y（验证期）→ x.y.z（正式期）

---

## [Unreleased]

## [0.2.4] - 2026-05-22

### 变更

- 更新子模块引用：
  - `assets/quanttide-platform`
  - `default/quanttide-founder`
  - `default/quanttide-tech`

## [0.2.3] - 2026-05-18

### 变更

- 更新子模块引用：
  - `assets/quanttide-platform`
  - `default/quanttide-founder`
  - `default/quanttide-tech`
  - `domains/quanttide-asset`

## [0.2.2] - 2026-05-08

### 变更

- 更新子模块引用：
  - `default/quanttide-founder` → v0.6.2
  - `default/quanttide-tech` → v0.5.1-1
  - `assets/quanttide-platform` → v0.4.2-2

## [0.2.1] - 2026-05-01

### 变更

- 更新子模块引用：
  - `assets/quanttide-platform`
  - `assets/quanttide-tutorial`
  - `default/quanttide-founder`
  - `default/quanttide-tech`
  - `domains/quanttide-asset`
  - `domains/quanttide-data`

## [0.2.0] - 2026-04-30

### 新增

- 新增 `assets/quanttide-tutorial` 子模块：教程指南
- 新增 `domains/quanttide-media` 子模块：媒体资产领域

### 变更

- 更新子模块引用：
  - `assets/quanttide-handbook` → v0.0.1-2
  - `assets/quanttide-journal` → heads/master
  - `assets/quanttide-platform` → v0.1.2-118
  - `assets/quanttide-profile` → v0.0.5-1
  - `assets/quanttide-specification` → 0.0.1-2
  - `default/quanttide-founder` → v0.2.1-376
  - `default/quanttide-tech` → v0.1.2-60
  - `domains/quanttide-asset` → v0.1.1-14
  - `domains/quanttide-data` → 0.0.1-5

## [0.1.3] - 2026-04-26

### 变更

- 更新 11 个子模块引用

## [0.1.2] - 2026-04-25

### 新增

- 新增 `domains/quanttide-think` 子模块：认知工程领域

### 变更

- 重构 `domains/README.md`：补充领域定义、命名规则和完整清单

## [0.1.1] - 2026-04-25

### 新增

- 新增 `domains/quanttide-asset` 子模块：资产管理领域

### 变更

- 更新子模块引用：
  - `default/quanttide-founder` → v0.2.1-378
  - `default/quanttide-tech` → v0.1.2-82
  - `domains/quanttide-data` → 0.0.1-22
  - `assets/quanttide-profile` → v0.0.5-2
  - `assets/quanttide-specification` → 0.0.1-2
  - `assets/quanttide-handbook` → v0.0.1-2
  - `assets/quanttide-journal`

## [0.1.0] - 2026-04-16

### 验证期

从探索期进入验证期，架构重构为双轴模型。

#### 新增

- 新增 `default/` 目录：默认模板仓库
- 新增 `default/quanttide-founder` 子模块：创始人档案
- 新增 `default/quanttide-tech` 子模块：科技档案
- 新增 `assets/quanttide-platform` 子模块：量潮平台
- 新增 `assets/quanttide-journal` 子模块：工作日志
- 新增 `.agents/` 目录：Agent 技能
- 新增 `.quanttide/` 目录：配置契约文件
- 新增 GitHub releases：v0.0.2, v0.0.3, v0.0.4

#### 变更

- 架构重构：`asset/` → `assets/`、`domain/` → `domains/`
- 子模块命名：使用仓库名作为目录名
- 简化文档：删除 index.md、meta/ 目录
- 合并文档：meta/self.md 内容合并到 README.md

## [0.0.4] - 2026-03-05

### 变更

- 更新子模块引用：
  - asset/handbook v0.0.1-1：新增 AGENTS.md
  - asset/profile v0.0.5：更新子模块和元数据
  - asset/specification 0.0.1-1：新增工程规范
  - domain/quanttide-data：新增数据领域

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
