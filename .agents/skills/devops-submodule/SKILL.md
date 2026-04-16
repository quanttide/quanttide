---
name: devops-submodule
description: Git 子模块操作技能，用于管理主仓库的子模块，包括更新、提交、推送等操作。
---

# Git 子模块操作技能

## 查看子模块状态

```bash
git submodule status
```

## 更新子模块

```bash
# 初始化并更新所有子模块
git submodule update --init --recursive

# 更新特定子模块
git submodule update --init <子模块路径>
```

## 子模块内操作

### 在子模块中提交

```bash
# 进入子模块目录
cd docs/handbook

# 检查状态
git status

# 添加并提交
git add -A
git commit -m "docs: 更新文档"

# 推送到远程
git push
```

### 在子模块中创建分支

```bash
cd docs/handbook
git checkout -b feature/my-feature
```

## 主仓库更新子模块引用

```bash
# 返回主仓库
cd ../..

# 添加子模块引用变更
git add docs/handbook

# 提交子模块引用更新
git commit -m "chore: update handbook submodule"

# 推送到远程
git push
```

## 添加新子模块

```bash
# 添加子模块
git submodule add <仓库URL> <子模块路径>

# 初始化子模块
git submodule init
```

## 删除子模块

```bash
# 取消注册子模块
git submodule deinit -f <子模块路径>

# 删除子模块目录
rm -rf <子模块路径>

# 从版本控制中删除
git rm -f <子模块路径>

# 删除 .git/modules 中的缓存
rm -rf .git/modules/<子模块路径>
```

## 常见场景

### 场景一：更新现有子模块内容

```bash
# 1. 在子模块中提交并推送
cd docs/gallery
git add -A
git commit -m "docs: 添加新示例"
git push

# 2. 返回主仓库，更新引用
cd ../..
git add docs/gallery
git commit -m "chore: update gallery submodule"
git push
```

### 场景二：切换子模块分支

```bash
cd docs/handbook
git checkout main
git pull origin main
cd ..
git add docs/handbook
git commit -m "chore: switch handbook to main branch"
```

### 场景三：子模块回滚

```bash
cd docs/handbook
git log --oneline -5
git reset --hard <commit-hash>
git push --force
cd ..
git add docs/handbook
git commit -m "chore: rollback handbook submodule"
```
