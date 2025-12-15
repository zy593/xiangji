# 相机海报生成器 - PWA应用

一个专业的相机海报生成器，支持剪影效果、自定义颜色、图片上传等功能。

## 🚀 快速安装

### 第一步：生成图标（必须）
1. 打开 `icon-generator.html` 文件
2. 点击"生成图标"查看预览
3. 点击"下载图标"下载两个图标文件
4. 将 `icon-192.png` 和 `icon-512.png` 放到项目根目录（与index.html同一文件夹）

### 第二步：安装应用

#### 📱 iPhone (iOS)
1. 在Safari浏览器中打开 `index.html`
2. 点击底部"分享"按钮（方框+箭头）
3. 选择"添加到主屏幕"
4. 点击"添加"

#### 🤖 Android
1. 在Chrome浏览器中打开 `index.html`
2. 浏览器会提示"添加到主屏幕"，点击"安装"
3. 或点击右上角菜单 → "添加到主屏幕"

#### 💻 桌面浏览器
- Chrome/Edge: 地址栏右侧显示"安装"图标，点击安装
- Firefox: 地址栏"+"图标 → "安装此站点为应用"

## 功能特点

- 📷 实时相机拍摄
- 🎨 6种预设颜色主题 + 自定义色环选择
- 🖼️ 剪影效果（纯黑剪影 + 纯色背景）
- 📁 图片上传功能
- 🔍 缩放功能（0.3x - 3.0x）
- ⬜ 正方形拍摄模式
- 🔄 前后摄像头切换
- 📱 横竖屏自动适配
- 💾 海报下载功能

## 使用说明

1. **拍摄照片**：点击"📷 拍摄"按钮
2. **选择颜色**：点击颜色按钮或使用色环选择自定义颜色
3. **调整缩放**：使用滑块或双指捏合
4. **上传图片**：点击"📁 上传"从相册选择图片
5. **正方形模式**：点击"⬜"按钮切换正方形拍摄
6. **下载海报**：拍摄后点击"💾 下载"

## 技术栈

- HTML5
- CSS3
- JavaScript (ES6+)
- WebRTC API
- Canvas API
- PWA (Progressive Web App)

## 浏览器支持

- Chrome/Edge (推荐)
- Safari (iOS/macOS)
- Firefox
- 需要HTTPS或localhost环境

## 🚀 快速部署APK

想要一键部署并打包APK？查看：
- 🎯 **一键部署脚本.md** - 完整的部署流程（推荐）
- 🤖 **自动部署APK.bat** - Windows自动化脚本
- 📖 **GitHub Pages使用指南.md** - GitHub Pages详细说明（在哪里、怎么用）

**最快方法**（5分钟）：
1. 上传代码到GitHub（创建仓库并上传文件）
2. 启用GitHub Pages（仓库 → Settings → Pages）
3. 使用PWABuilder打包APK（输入GitHub Pages网址）
4. 下载并安装到手机

**GitHub Pages在哪里？**
- 不是单独网站，是GitHub仓库设置中的功能
- 位置：仓库页面 → Settings（设置）→ Pages（在左侧菜单）
- 详细步骤见：**GitHub Pages使用指南.md**

上传后可以：
- 启用GitHub Pages获得在线网址
- 使用PWABuilder打包APK
- 分享给其他人

## 📱 安装到手机

想要安装到手机？查看：
- 📱 **手机安装指南.md** - 完整的安装步骤（推荐先看这个）
- 📦 **快速打包APK.md** - APK打包方法
- 📦 **打包APK指南.md** - 详细的打包选项

**最简单方法**（PWA方式，无需APK）：
1. 访问：`https://zy593.github.io/xiangji/`
2. Android：Chrome浏览器 → 点击"安装"
3. iPhone：Safari浏览器 → 分享 → "添加到主屏幕"

**APK方式**（Android专用）：
1. 使用PWABuilder打包APK
2. 下载APK到手机
3. 安装APK文件

## 注意事项

- 首次使用需要授予摄像头权限
- 建议在HTTPS环境下使用以获得最佳体验
- 支持离线使用（通过Service Worker缓存）
- 打包APK需要将应用部署到可访问的网址

