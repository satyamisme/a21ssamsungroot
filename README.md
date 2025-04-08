# A21S Root Guide

Root your **Samsung Galaxy A21S** using ODIN, Magisk, and TWRP. Tested as of April 08, 2025. **Warning:** Rooting voids your warranty and risks bricking—proceed with caution!

## Prerequisites

- **Samsung Galaxy A21S**
- Windows PC with [ODIN](https://odindownload.com/)
- USB cable
- Files (included in this repo where noted):
  - Stock firmware (region/model-specific, not included)
  - `Magisk-26.4.zip` (included) - [Latest Magisk](https://github.com/topjohnwu/Magisk/releases/tag/v26.4)
  - `Magisk_patched_for_A21S.apk` (included) - Pre-patched Magisk APK
  - [TWRP 2 by AndyBGD](https://github.com/AndyBGD/android_device_samsung_a21s/releases) (initial flash, download from link)
  - `TWRP-12.1_KAWA.tar` (included) - Based on [TWRP 12.1 by DozNaka](https://github.com/DozNaka/exynos3830-a21s-twrp/releases)

**Note:** Enable USB Debugging (Settings > Developer Options) and charge above 50%.

## Rooting Instructions

1. **Download Files**: Get stock firmware (external), plus included `Magisk-26.4.zip`, `Magisk_patched_for_A21S.apk`, and `TWRP-12.1_KAWA.tar`.
2. **Extract AP**: From firmware, extract `AP...tar.md5` (e.g., `AP_A217FXXSADWI1_CL24202344_QB70902586_REV00_user_low_ship_MULTI_CERT_meta_RKEY_OS12.tar.md5`).
3. **Transfer**: Copy `AP...tar.md5` to your A21S.
4. **Install Magisk**: Install `Magisk_patched_for_A21S.apk`.
5. **Patch AP**: In Magisk, click "Install > Select and Patch a File," choose `AP...tar.md5`, save `magisk_patched-26300...tar`.
6. **Move Patched File**: Copy `magisk_patched-26300...tar` to your PC.
7. **Enter Download Mode**: Power off, hold Vol Up + Vol Down, connect to PC.
8. **Open ODIN**: Launch ODIN.
9. **Flash TWRP**: Load [TWRP 2 by AndyBGD](https://github.com/AndyBGD/android_device_samsung_a21s/releases) in `AP`, check only `F. Reset Time` in Options, click "Start."
10. **Boot Recovery**: After "Success," hold Vol Up + Power to enter TWRP.
11. **Run Multidisabler**: In TWRP, go `Advanced > Terminal`, type:  multidisabler execute
12. **Reboot Recovery**: Select `Reboot > Recovery`.
13. **Flash Magisk**: Choose `Install`, flash `Magisk-26.4.zip`.
14. **Reboot to Download Mode**: Power off, re-enter Download Mode.
15. **Flash Firmware**: In ODIN, check `Auto Reboot` and `F. Reset Time`. Load:
- `BL`: BL file from firmware
- `AP`: `magisk_patched-26300...tar`
- `CP`: CP file from firmware
- `CSC`: Full CSC file (**not** `HOME_CSC`)
Click "Start."
16. **Fix Recovery**: If stock recovery loads, select `Wipe Data/Factory Reset`, reboot.
17. **Finalize Root**: Open `Magisk_patched_for_A21S.apk`, accept additional setup, reboot.
18. **Verify**: Check Magisk for root access. Done! (TWRP is overwritten.)
19. **Optional**: Reboot to Download Mode, flash `TWRP-12.1_KAWA.tar` in ODIN’s `AP` slot to reinstall TWRP.

## Key Highlights

- **Root Access**: Magisk grants superuser privileges.
- **TWRP Variants**: [TWRP 2 by AndyBGD](https://github.com/AndyBGD/android_device_samsung_a21s/releases) for initial setup, `TWRP-12.1_KAWA.tar` (from [TWRP 12.1 by DozNaka](https://github.com/DozNaka/exynos3830-a21s-twrp/releases)) for recovery.
- **Knox Tripped**: Custom flashing disables Knox features.

## Notes

- **Backup First**: Data loss possible—save everything.
- **TWRP Overwritten**: Firmware flash replaces TWRP; reinstall with `TWRP-12.1_KAWA.tar` if needed.
- **Model Check**: Verify A217F compatibility.

## Troubleshooting

- **ODIN Errors**: Install Samsung USB Drivers, try different USB ports/cables.
- **Bootloop**: Reflash full stock firmware in ODIN.
- **Magisk Fails**: Ensure `magisk_patched-26300...tar` is correctly generated.

## Credits

- Guide by original author
- TWRP: [AndyBGD](https://github.com/AndyBGD/android_device_samsung_a21s) & [DozNaka](https://github.com/DozNaka/exynos3830-a21s-twrp)
- Magisk: [topjohnwu](https://github.com/topjohnwu)

## License

[MIT License](LICENSE)—use at your own risk!