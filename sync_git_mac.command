#!/bin/bash
# 双击即可运行：同步 exchange 仓库（先拉取、再提交本地改动、最后推送）
# 用法：在 Finder 中双击本文件；或在终端执行 ./sync_git_mac.command

# 让脚本无论从哪里被双击，都切到脚本所在目录
cd "$(dirname "$0")" || { echo "❌ 无法进入脚本目录"; read -n 1 -s -r -p "按任意键关闭..."; exit 1; }

echo "==============================================="
echo "  Git 同步开始： $(pwd)"
echo "  时间： $(date '+%Y-%m-%d %H:%M:%S')"
echo "==============================================="
echo

# 1) 先拉取远端最新
echo "▶ 拉取远端最新 (git pull)..."
if ! git pull origin master; then
    echo "⚠️  拉取失败，可能有冲突或网络问题，请手动检查后再试。"
    read -n 1 -s -r -p "按任意键关闭..."
    exit 1
fi
echo

# 2) 暂存所有本地改动
git add --all

# 3) 只有在确实有改动时才提交，避免 “nothing to commit” 报错中断
if git diff --cached --quiet; then
    echo "ℹ️  本地没有需要提交的改动，跳过提交。"
else
    echo "▶ 提交本地改动 (git commit)..."
    git commit -m "sync quant via mac @ $(date '+%Y-%m-%d %H:%M:%S')"
    echo
    echo "▶ 推送到远端 (git push)..."
    if ! git push origin master; then
        echo "⚠️  推送失败，请手动检查。"
        read -n 1 -s -r -p "按任意键关闭..."
        exit 1
    fi
fi
echo

echo "==============================================="
echo "  ✅ 同步完成！"
echo "==============================================="
# 保持窗口不关闭，方便查看结果
read -n 1 -s -r -p "按任意键关闭窗口..."
echo
