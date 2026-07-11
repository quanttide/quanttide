#!/usr/bin/env bash
set -euo pipefail

PARENT_REPO="$(cd "$(dirname "$0")/.." && pwd)"
LOCKFILE="/tmp/quanttide-sync.lock"
LOGFILE="$HOME/logs/quanttide-sync.log"
LAST_RUN_FILE="/tmp/quanttide-sync-lastrun"
exec 200>"$LOCKFILE"
flock -n 200 || exit 0

now=$(date +%s)
if [ -f "$LAST_RUN_FILE" ]; then
    last_run=$(cat "$LAST_RUN_FILE")
    if [ $((now - last_run)) -lt 300 ]; then
        exit 0
    fi
fi
echo "$now" > "$LAST_RUN_FILE"

log() { echo "[$(date '+%m-%d %H:%M')] $*" >> "$LOGFILE"; }

cd "$PARENT_REPO"

commit_repo() {
    local repo="$1"
    cd "$repo"
    if [ -f ".gitmodules" ]; then
        while IFS= read -r sub; do
            [ -n "$sub" ] && commit_repo "$repo/$sub"
        done < <(git config --file .gitmodules --get-regexp path | awk '{print $2}')
    fi
    if [ -n "$(git status --porcelain)" ]; then
        branch=$(git rev-parse --abbrev-ref HEAD)
        git add -A
        git commit -m "chore(auto-sync): $(date '+%m-%d %H:%M')"
        git push origin "$branch" 2>&1 | log "push" || log "push failed: $repo"
    fi
}

pull_repo() {
    local repo="$1"
    cd "$repo"
    branch=$(git rev-parse --abbrev-ref HEAD)
    git fetch origin "$branch" 2>&1 | log "fetch" || log "fetch failed: $repo"
    if git log HEAD..origin/"$branch" --oneline | head -1 | grep -q .; then
        git pull --rebase origin "$branch" 2>&1 | log "pull" || log "pull failed: $repo"
    fi
    if [ -f ".gitmodules" ]; then
        git submodule update --remote 2>&1 | log "submodule" || log "submodule update failed: $repo"
        if [ -n "$(git status --porcelain)" ]; then
            git add -A
            git commit -m "chore(auto-sync): update submodules $(date '+%m-%d %H:%M')"
            git push origin "$branch" 2>&1 | log "push" || log "push failed: $repo"
        fi
        while IFS= read -r sub; do
            [ -n "$sub" ] && pull_repo "$repo/$sub"
        done < <(git config --file .gitmodules --get-regexp path | awk '{print $2}')
    fi
}

case "${1:-commit}" in
    commit)
        while IFS= read -r sub; do
            [ -n "$sub" ] && [ -d "$sub" ] && commit_repo "$PARENT_REPO/$sub"
        done < <(git config --file .gitmodules --get-regexp path | awk '{print $2}')
        if [ -n "$(git status --porcelain)" ]; then
            branch=$(git rev-parse --abbrev-ref HEAD)
            git add -A
            git commit -m "chore(auto-sync): update pointers $(date '+%m-%d %H:%M')"
            git push origin "$branch" 2>&1 | log "push" || log "parent push failed"
        fi
        ;;
    pull)
        pull_repo "$PARENT_REPO"
        ;;
esac
