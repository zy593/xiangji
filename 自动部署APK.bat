@echo off
chcp 65001 >nul
echo ========================================
echo   相机海报生成器 - 自动部署APK
echo ========================================
echo.

REM 检查必要文件
echo [检查] 检查必要文件...
if not exist "index.html" (
    echo [错误] 缺少 index.html
    pause
    exit /b 1
)
if not exist "manifest.json" (
    echo [错误] 缺少 manifest.json
    pause
    exit /b 1
)
if not exist "service-worker.js" (
    echo [错误] 缺少 service-worker.js
    pause
    exit /b 1
)
echo [完成] 必要文件检查通过
echo.

REM 检查图标文件
if not exist "icon-192.png" (
    echo [警告] 缺少 icon-192.png，建议先生成图标
    echo.
)
if not exist "icon-512.png" (
    echo [警告] 缺少 icon-512.png，建议先生成图标
    echo.
)

echo ========================================
echo   部署选项
echo ========================================
echo.
echo 1. 部署到GitHub Pages（推荐，免费）
echo 2. 部署到Netlify（简单，免费）
echo 3. 使用PWABuilder打包APK（需要先部署）
echo 4. 查看详细指南
echo.
set /p choice="请选择 (1-4): "

if "%choice%"=="1" goto github
if "%choice%"=="2" goto netlify
if "%choice%"=="3" goto pwa
if "%choice%"=="4" goto guide
goto end

:github
echo.
echo ========================================
echo   部署到GitHub Pages
echo ========================================
echo.
echo 步骤：
echo 1. 确保已安装Git
echo 2. 确保已登录GitHub账号
echo 3. 在GitHub上创建新仓库
echo.
set /p repo="请输入GitHub仓库地址 (如: https://github.com/用户名/仓库名.git): "
if "%repo%"=="" (
    echo [错误] 仓库地址不能为空
    pause
    goto end
)

echo.
echo [1/4] 检查Git...
git --version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未安装Git，请先安装: https://git-scm.com/download/win
    pause
    goto end
)

echo [2/4] 初始化Git仓库...
if not exist .git (
    git init
    git config user.name >nul 2>&1
    if errorlevel 1 (
        set /p gitname="请输入Git用户名: "
        set /p gitemail="请输入Git邮箱: "
        git config --global user.name "%gitname%"
        git config --global user.email "%gitemail%"
    )
)

echo [3/4] 添加文件...
git add .
git commit -m "部署：相机海报生成器" >nul 2>&1

echo [4/4] 推送到GitHub...
git remote remove origin >nul 2>&1
git remote add origin "%repo%"
git branch -M main
echo.
echo [提示] 即将推送到GitHub，可能需要输入用户名和密码
echo [提示] 如果使用Personal Access Token，密码处输入token
echo.
git push -u origin main

if errorlevel 1 (
    echo.
    echo [错误] 推送失败，请检查：
    echo 1. 仓库地址是否正确
    echo 2. 是否有推送权限
    echo 3. 网络连接是否正常
    echo.
    echo 也可以手动执行：
    echo   git push -u origin main
) else (
    echo.
    echo [完成] 已推送到GitHub！
    echo.
    echo 下一步：启用GitHub Pages
    echo 1. 访问仓库页面
    echo 2. Settings → Pages
    echo 3. Source选择 main 分支
    echo 4. 保存后等待几分钟
    echo 5. 获得网址后，使用PWABuilder打包APK
    echo.
)

pause
goto end

:netlify
echo.
echo ========================================
echo   部署到Netlify
echo ========================================
echo.
echo 步骤：
echo 1. 访问 https://www.netlify.com/
echo 2. 注册/登录账号
echo 3. 点击 "Add new site" → "Deploy manually"
echo 4. 拖拽整个项目文件夹到页面
echo 5. 等待部署完成，获得网址
echo.
echo 部署完成后，使用网址在PWABuilder打包APK
echo.
pause
goto end

:pwa
echo.
echo ========================================
echo   使用PWABuilder打包APK
echo ========================================
echo.
set /p url="请输入应用网址 (如: https://你的用户名.github.io/仓库名/): "
if "%url%"=="" (
    echo [错误] 网址不能为空
    pause
    goto end
)

echo.
echo [提示] 正在打开PWABuilder...
echo [提示] 请在浏览器中：
echo 1. 输入应用网址
echo 2. 点击 "Start"
echo 3. 点击 "Build My PWA" → "Android"
echo 4. 点击 "Generate Package"
echo 5. 等待打包完成后下载APK
echo.

start https://www.pwabuilder.com/

pause
goto end

:guide
echo.
echo ========================================
echo   详细指南
echo ========================================
echo.
echo 已创建以下指南文件：
echo - 上传到GitHub指南.md
echo - 快速打包APK.md
echo - 打包APK指南.md
echo.
echo 请查看这些文件获取详细步骤
echo.
pause
goto end

:end
echo.
echo ========================================
echo   完成
echo ========================================
pause

