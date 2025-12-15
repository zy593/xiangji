# 📝 启用GitHub Pages - 详细操作步骤

## ⚠️ 重要提示

如果你在Pages页面**看不到Source选项**，说明你在**账户设置**页面！

GitHub Pages需要在**仓库设置**中启用，那里才有Source选项！

### 如何区分：
- ❌ **账户设置**：显示"已验证的域名"、"添加域名" → **没有Source**
- ✅ **仓库设置**：显示"Build and deployment"、"Source" → **有Source**

---

## 🎯 正确步骤

### 第一步：进入你的仓库

1. **离开当前页面**
   - 点击页面左上角的GitHub Logo，或
   - 在地址栏输入：`https://github.com`

2. **找到你的仓库**
   - 点击右上角你的头像
   - 选择 "Your repositories"（你的仓库）
   - 找到你的仓库（如果没有，先创建一个）

3. **进入仓库页面**
   - 点击仓库名称进入

---

### 第二步：进入仓库设置

在仓库页面顶部，你会看到一排菜单：

```
┌─────────────────────────────────────────────────────┐
│ Code | Issues | Pull requests | Actions | ... | Settings |
└─────────────────────────────────────────────────────┘
```

**点击 "Settings"（设置）**

---

### 第三步：找到Pages选项

在Settings页面的**左侧菜单**中：

```
左侧菜单：
├─ General
├─ Access
├─ Secrets and variables
├─ Actions
├─ Environments
├─ Pages  ← 点击这里！
├─ Security
└─ ...
```

**点击 "Pages"**

---

### 第四步：启用GitHub Pages

在Pages设置页面：

1. **找到 "Source"（源）部分**

2. **选择分支**
   - 点击下拉菜单
   - 选择 **"main"**（或"master"）

3. **选择文件夹**
   - 保持默认：**"/ (root)"**（根目录）

4. **点击 "Save"（保存）按钮**

---

### 第五步：等待部署

保存后：

1. **等待1-2分钟**
   - GitHub会自动部署你的网站

2. **查看部署状态**
   - 页面会显示：
     ```
     Your site is live at:
     https://你的用户名.github.io/仓库名/
     ```

3. **测试访问**
   - 复制这个网址
   - 在浏览器中打开
   - 如果能看到你的应用，说明成功！

---

## 🚀 完整流程（从零开始）

### 如果还没有仓库：

1. **创建仓库**
   - GitHub首页 → 右上角 "+" → "New repository"
   - 仓库名：`camera-poster`
   - 选择 Public
   - **不要**勾选 "Initialize this repository with a README"
   - 点击 "Create repository"

2. **上传文件**
   - 创建后，点击 "uploading an existing file"
   - 拖拽所有项目文件到页面
   - 输入提交信息："初始提交"
   - 点击 "Commit changes"

3. **启用Pages**（按照上面的步骤）

---

## 📍 位置对比

### ❌ 错误位置（你现在在的地方）：
```
GitHub → 你的头像 → Settings（账户设置）
         ↓
    左侧菜单：页面（Pages）
    （这是账户级别的Pages设置，用于自定义域名）
```

### ✅ 正确位置：
```
GitHub → 你的仓库 → Settings（仓库设置）
         ↓
    左侧菜单：Pages
    （这是仓库级别的Pages设置，用于启用网站）
```

---

## 🎯 快速检查清单

- [ ] 在仓库页面（不是账户设置页面）
- [ ] 点击了仓库顶部的 "Settings"
- [ ] 在左侧菜单找到了 "Pages"
- [ ] 选择了 "main" 分支
- [ ] 点击了 "Save"
- [ ] 等待1-2分钟
- [ ] 获得了网址

---

## 💡 提示

- **账户设置** vs **仓库设置**：这是两个不同的地方！
- **账户设置**：管理你的个人账户
- **仓库设置**：管理单个仓库的功能（包括Pages）

---

## ❓ 如果还是找不到？

1. **确认你在正确的页面**
   - 地址栏应该包含：`github.com/你的用户名/仓库名/settings/pages`
   - 而不是：`github.com/settings/pages`

2. **检查仓库是否存在**
   - 如果没有仓库，先创建一个

3. **检查权限**
   - 确保你有仓库的管理权限

---

**记住：GitHub Pages在仓库设置中，不在账户设置中！** 🎯

