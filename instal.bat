@echo off
echo Starting installation process...
echo.

echo Installing Amarok-v0.9.3.apk
adb install Amarok-v0.9.3.apk

echo Installing com.android1500.gpssetter_1210.apk
adb install com.android1500.gpssetter_1210.apk

echo Installing Magisk module: LSPosed-v1.9.2-7024-zygisk-release.zip
adb push LSPosed-v1.9.2-7024-zygisk-release.zip /sdcard/
adb shell su -c "magisk --install-module /sdcard/LSPosed-v1.9.2-7024-zygisk-release.zip"
adb shell su -c "magisk --enable-module zygisk_lsposed"

echo Rebooting device...
adb reboot

echo Waiting for device to come back online (120 seconds)...
timeout /t 120 /nobreak >nul

echo Waiting for device to be detected...
adb wait-for-device

echo Installing modified LSPosed module: LSPosed-v1.9.3_mod-7244-zygisk-release.zip
adb push LSPosed-v1.9.3_mod-7244-zygisk-release.zip /sdcard/
adb shell su -c "magisk --install-module /sdcard/LSPosed-v1.9.3_mod-7244-zygisk-release.zip"
adb shell su -c "magisk --enable-module zygisk_lsposed"

echo Final reboot...
adb reboot

echo Installation complete!
echo Please verify all modules are active in Magisk after reboot.
pause