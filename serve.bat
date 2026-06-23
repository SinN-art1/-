@echo off
chcp 65001 >nul
echo.
echo  ═══════════════════════════════
echo    暑期日课 · 本地服务器
echo  ═══════════════════════════════
echo.
echo  本机地址（手机用这个）:
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /i "IPv4"') do (
  for %%b in (%%a) do echo    http://%%b:8080
)
echo.
echo  本机浏览器: http://localhost:8080
echo.
echo  按 Ctrl+C 停止服务器
echo.
python -m http.server 8080
pause
