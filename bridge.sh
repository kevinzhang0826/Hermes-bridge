#!/bin/bash
cd ~/Hermes-bridge || exit 1
echo "=== Hermes Bridge ==="
echo "[1/3] 拉取云端..."
git pull origin main
echo "[2/3] 待处理任务:"
ls inbox/ 2>/dev/null
echo "[3/3] 推送结果..."
git add outbox/ shared/ skills/ inbox/
git commit -m "sync $(date '+%m-%d %H:%M')" 2>/dev/null
git push origin main
echo "=== 完成 ==="
