# 💕 勛凱 ♡ 恩懿 婚禮邀請函

> 2026/10/25（週六）17:30 迎賓 / 18:30 晚宴
> 茹曦酒店 ILLUME TAIPEI · 5F 斯賓諾莎廳

---

## 📁 專案結構

```
wedding-invitation/
├── index.html          # 喜帖主檔（單檔含所有 CSS/JS/圖片）
├── README.md           # 本檔案
├── .gitignore          # Git 忽略清單
└── _headers            # Cloudflare Pages 安全標頭（可選）
```

---

## 🚀 快速部署

### 方案 A：GitHub Pages（最簡單）

```bash
# 1. 推送到 GitHub
git init
git branch -M main
git add .
git commit -m "Initial wedding invitation"
git remote add origin https://github.com/YOUR_NAME/wedding-invitation.git
git push -u origin main

# 2. 在 GitHub repo 開啟 Pages
# Settings → Pages → Source: main / (root) → Save

# 3. 等 1-2 分鐘，網址會出現：
# https://YOUR_NAME.github.io/wedding-invitation/
```

### 方案 B：Cloudflare Pages（速度最快）

1. 註冊 [dash.cloudflare.com](https://dash.cloudflare.com)
2. **Workers & Pages** → **Create** → **Pages** → **Connect to Git**
3. 選擇 `wedding-invitation` repo
4. Build 設定全部留空
5. Save and Deploy → 得到 `https://wedding-invitation.pages.dev`

---

## 🛠 後台管理

部署後，賓客打開喜帖會看到正常版面。
**進入後台：**

1. 滑到喜帖最底部的 footer 文字
2. **連續點擊 5 次**「With Love, Hsun-Kai & En-Yi」
3. 輸入密碼：`2026`（後台可改）
4. 進入管理介面

**後台功能：**
- 📊 儀表板（出席統計）
- 🎀 賓客名單（CSV 匯出）
- 💌 祝福留言
- ⚙️ 系統設定（姓名 / 日期 / 場地 / 照片 / 邀請語）

---

## ⚠️ 重要提醒

**目前資料儲存於 localStorage（瀏覽器本地）：**
- 賓客填寫的資料**只存在他自己的裝置**
- 你打開喜帖**看不到賓客的回覆**
- 適合**測試階段** ✓

**正式收集資料前，建議整合 Firebase Firestore：**
- 資料同步到雲端
- 後台即時看到所有回覆
- 跨裝置共享資料

---

## 📝 修改內容後重新部署

```bash
# 修改 index.html 後
git add index.html
git commit -m "更新：[描述改動]"
git push

# 1-2 分鐘後 GitHub Pages 自動更新
```

---

## 🎨 技術規格

- 純單檔 HTML（含 CSS / JS / 圖片 base64）
- 無需 build 工具
- 無需後端伺服器（純前端）
- 行動裝置優化
- Google Fonts 線上載入

---

## 💕 製作

For Hsun-Kai & En-Yi's wedding 2026.10.25
