#!/usr/bin/env bash
# 全量清账：逐层提交并推送本地所有未提交更新。
# 后序遍历（叶子 → 中间层 → 根仓），子模块先于父仓推送，满足 pre-push 钩子对子模块指针的校验。
# 用法：scripts/commit-and-push-all.sh [--dry-run]
set -uo pipefail

DRY=""
[ "${1:-}" = "--dry-run" ] && DRY=1

export GIT_TERMINAL_PROMPT=0

note() { printf '%s\n' "$*"; }

push_with_rebase() {
  local r="$1" name="$2" i
  for i in 1 2 3 4 5; do
    git -C "$r" fetch -q origin 2>/dev/null || true
    if [ "$(git -C "$r" log HEAD..origin/main --oneline 2>/dev/null | wc -l)" -gt 0 ]; then
      git -C "$r" rebase -q origin/main 2>/dev/null || true
    fi
    if [ -n "$DRY" ]; then note "[$name] (dry-run) 跳过 push"; return 0; fi
    if timeout 60 git -C "$r" push origin HEAD:main 2>&1 | grep -qE 'main -> main|Everything up-to-date'; then
      note "[$name] 推送成功"
      return 0
    fi
    sleep 2
  done
  note "[$name] !! 推送失败（重试 5 次），检查该仓"
  return 1
}

process() {
  local r="$1"
  # 只处理已初始化的 git 仓；未注册的克隆（不在 .gitmodules）天然不进递归
  { [ -d "$r/.git" ] || [ -f "$r/.git" ]; } || return 0
  local name; name=$(basename "$r")

  # 后序：先处理子模块
  if [ -f "$r/.gitmodules" ]; then
    local _key sub
    while read -r _key sub; do
      [ -n "${sub:-}" ] && process "$r/$sub"
    done < <(git -C "$r" config --file .gitmodules --get-regexp '\.path$' 2>/dev/null)
  fi

  git -C "$r" fetch -q origin 2>/dev/null || true

  # detached HEAD：有本地提交或有脏改动才转 main，否则不动（可能是并行会话的检出）
  if ! git -C "$r" symbolic-ref -q HEAD >/dev/null 2>&1; then
    local ahead_d; ahead_d=$(git -C "$r" log origin/main..HEAD --oneline 2>/dev/null | wc -l)
    if [ "$ahead_d" -gt 0 ] || [ -n "$(git -C "$r" status --porcelain 2>/dev/null)" ]; then
      git -C "$r" checkout -q -B main 2>/dev/null || true
      note "[$name] detached → main"
    else
      return 0
    fi
  fi

  # dirty → 提交
  if [ -n "$(git -C "$r" status --porcelain 2>/dev/null)" ]; then
    if [ -n "$DRY" ]; then
      note "[$name] (dry-run) 待提交："
      git -C "$r" status --short | sed 's/^/    /'
    else
      git -C "$r" add -A 2>/dev/null
      if ! git -C "$r" diff --cached --quiet 2>/dev/null; then
        git -C "$r" commit -q -m "chore: 提交本地未提交更新" 2>/dev/null \
          && note "[$name] 已提交"
      fi
    fi
  fi

  # ahead → 推送
  local ahead; ahead=$(git -C "$r" log origin/main..HEAD --oneline 2>/dev/null | wc -l)
  [ "$ahead" -gt 0 ] && push_with_rebase "$r" "$name"
  return 0
}

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
note "全量清账：$ROOT${DRY:+（dry-run）}"
process "$ROOT"

note "=== 终态 ==="
git -C "$ROOT" fetch -q origin 2>/dev/null || true
note "根仓 ahead: $(git -C "$ROOT" log origin/main..HEAD --oneline 2>/dev/null | wc -l)  暂存: $(git -C "$ROOT" diff --cached --name-only | wc -l)"
note "dirty（未注册克隆除外）: $(git -C "$ROOT" status --porcelain | grep -v '^?? assets/' | wc -l)"
