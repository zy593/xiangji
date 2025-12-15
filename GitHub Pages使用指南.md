# 📖 GitHub Pages 使用指南

## 🎯 什么是GitHub Pages？

GitHub Pages **不是**一个单独的网站，而是GitHub仓库中的一个**功能**。

- ✅ 它是**免费的网站托管服务**
- ✅ 它可以将你的代码自动变成网站
- ✅ 网址格式：`https://你的用户名.github.io/仓库名/`
- ✅ 完全免费，无需额外配置

---

## 📍 GitHub Pages在哪里？

### ⚠️ 重要：在仓库设置中，不在账户设置中！

**常见错误**：在账户设置中找Pages（这是用于自定义域名的）
**正确位置**：在仓库设置中找Pages（这是用于启用网站的）

### 详细步骤：

1. **登录GitHub**
   - 访问：https://github.com
   - 登录你的账号

2. **进入你的仓库**（重要！）
   - 点击你的头像 → "Your repositories"
   - 找到你的仓库（如：camera-poster）
   - **点击进入仓库页面**（不是账户设置）

3. **打开仓库设置**
   - 在仓库页面顶部，有一排菜单：
     ```
     Code | Issues | Pull requests | Actions | Projects | Wiki | Security | Insights | Settings
     ```
   - 点击 **"Settings"**（设置）
   - **注意**：这是仓库的Settings，不是账户的Settings

4. **找到Pages选项**
   - 在左侧菜单中，向下滚动
   - 找到 **"Pages"** 选项（在"Environments"下面）
   - 点击进入

5. **配置Pages**
   - 在"Source"（源）部分
   - 选择分支：**"main"**（或"master"）
   - 选择文件夹：**"/ (root)"**（根目录）
   - 点击 **"Save"**（保存）

6. **等待部署**
   - 保存后，会显示：
     ```
     Your site is live at https://你的用户名.github.io/仓库名/
     ```
   - 等待1-2分钟，网站就可以访问了

---

## 🖼️ 图文说明

### 步骤1：进入仓库
```
GitHub首页 → 点击你的头像 → Your repositories → 点击仓库名
```

### 步骤2：找到Settings
```
仓库页面顶部菜单栏：
[Code] [Issues] [Pull requests] ... [Settings] ← 点击这里
```

### 步骤3：找到Pages
```
左侧菜单：
├─ General
├─ Access
├─ Secrets and variables
├─ Actions
├─ Environments
├─ Pages ← 点击这里
├─ Security
└─ ...
```

### 步骤4：配置Pages
```
Pages设置页面：

Build and deployment
├─ Source
│  └─ Branch: [main ▼]  ← 选择main分支
│  └─ Folder: [/ (root) ▼]  ← 选择根目录
│
└─ [Save]  ← 点击保存按钮
```

### 步骤5：获得网址
```
保存后显示：

Your site is live at:
https://你的用户名.github.io/仓库名/

例如：
https://zhangsan.github.io/camera-poster/
```

---

## ✅ 启用后的效果

启用GitHub Pages后：

1. **自动生成网站**
   - GitHub会自动将你的代码变成网站
   - 不需要任何额外配置

2. **获得网址**
   - 网址格式：`https://你的用户名.github.io/仓库名/`
   - 这个网址可以分享给任何人

3. **自动更新**
   - 每次你更新代码并推送到GitHub
   - 网站会自动更新（等待1-2分钟）

4. **HTTPS支持**
   - 自动提供HTTPS加密
   - 可以安全访问

---

## 🔍 如何检查是否启用成功？

### 方法1：查看Settings
- 进入仓库 → Settings → Pages
- 如果看到绿色提示："Your site is live at..."
- 说明已成功启用

### 方法2：访问网址
- 在浏览器中输入：`https://你的用户名.github.io/仓库名/`
- 如果能看到你的应用，说明成功

### 方法3：查看Actions
- 进入仓库 → Actions标签
- 如果看到"pages build and deployment"正在运行
- 说明正在部署

---

## ⚠️ 常见问题

### Q1: 找不到Pages选项？
**A**: 
- 确保你登录了GitHub账号
- 确保你有仓库的管理权限
- 确保仓库是Public（公开），或者你是Pro账号（Private仓库也支持）

### Q2: 保存后没有显示网址？
**A**: 
- 等待1-2分钟（首次部署需要时间）
- 刷新页面
- 检查是否有错误提示

### Q3: 访问网址显示404？
**A**: 
- 确保仓库中有 `index.html` 文件
- 确保文件在根目录（不是子文件夹）
- 等待几分钟后重试（部署需要时间）

### Q4: 如何更新网站？
**A**: 
- 直接更新代码并推送到GitHub
- 网站会自动更新（等待1-2分钟）

### Q5: 可以自定义域名吗？
**A**: 
- 可以！在Pages设置中可以添加自定义域名
- 需要配置DNS记录

---

## 🚀 完整流程示例

### 示例：部署相机海报生成器

1. **创建仓库**
   ```
   GitHub → New repository → 名称：camera-poster → Create
   ```

2. **上传文件**
   ```
   上传所有项目文件到仓库
   ```

3. **启用Pages**
   ```
   仓库 → Settings → Pages → Source: main → Save
   ```

4. **获得网址**
   ```
   https://你的用户名.github.io/camera-poster/
   ```

5. **使用网址**
   ```
   - 在浏览器中访问测试
   - 在PWABuilder中打包APK
   - 分享给其他人
   ```

---

## 💡 提示

- **免费**：GitHub Pages完全免费
- **自动**：每次推送代码，网站自动更新
- **HTTPS**：自动提供安全连接
- **快速**：部署通常只需1-2分钟
- **稳定**：GitHub提供的高质量服务

---

## 📞 需要帮助？

如果还是找不到：
1. 确保已登录GitHub
2. 确保已创建仓库
3. 确保有仓库的管理权限
4. 查看仓库页面顶部的菜单栏，找到"Settings"

**GitHub Pages就在仓库的Settings（设置）中！** 🎯

