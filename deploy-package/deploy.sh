#!/bin/bash
# 一鍵部署腳本
# 使用：chmod +x deploy.sh && ./deploy.sh "更新訊息"

# 檢查 git 是否初始化
if [ ! -d ".git" ]; then
  echo "🔧 初始化 git..."
  git init
  git branch -M main
fi

# 取得 commit 訊息（沒填就用預設）
MSG=${1:-"Update wedding invitation"}

# 加入所有變更
git add .

# 檢查是否有變更
if git diff --staged --quiet; then
  echo "✓ 沒有需要提交的變更"
  exit 0
fi

# 提交並推送
git commit -m "$MSG"

# 檢查是否設定 remote
if git remote | grep -q origin; then
  echo "🚀 推送到 GitHub..."
  git push
  echo ""
  echo "✅ 部署完成！1-2 分鐘後網站會自動更新"
else
  echo "⚠️  尚未設定 remote，請執行："
  echo "   git remote add origin https://github.com/YOUR_NAME/wedding-invitation.git"
  echo "   git push -u origin main"
fi
