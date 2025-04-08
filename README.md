# A21S Root Guide

This guide helps you root the **Samsung Galaxy A21S** using ODIN, Magisk, and TWRP. Tested as of April 08, 2025. **Warning:** Rooting voids your warranty and risks bricking your device—proceed at your own risk.

## Prerequisites

- **Samsung Galaxy A21S**
- Windows PC with [ODIN](https://odindownload.com/)
- USB cable
- Required files:
  - Stock firmware (specific to your region/model)
  - [Magisk 26.4 ZIP](https://github.com/topjohnwu/Magisk/releases/tag/v26.4)
  - [Magisk 26.3 APK](https://github.com/topjohnwu/Magisk/releases/tag/v26.3)
  - [TWRP 2](https://twrp.me/) (A21S-specific)
  - [TWRP 12.1](https://twrp.me/) (A21S-specific)

**Note:** Enable USB Debugging (Settings > Developer Options) and charge your device above 50%.

## Rooting Instructions

1. **Download Files**: Grab stock firmware, ODIN, Magisk 26.4 ZIP, Magisk 26.3 APK, TWRP 2, and TWRP 12.1.
2. **Extract AP**: From the firmware, extract the `AP...tar.md5` file (e.g., `AP_A217FXXSADWI1...`).
3. **Transfer**: Move the `AP...tar.md5` to your A21S’s storage.
4. **Install Magisk**: Install Magisk 26.3 APK on your phone.
5. **Patch AP**: In Magisk, select "Install > Select and Patch a File," choose `AP...tar.md5`, and get `magisk_patched-26300...tar`.
6. **Copy Patched File**: Transfer `magisk_patched-26300...tar` to your PC.
7. **Enter Download Mode**: Power off, then hold Vol Up + Vol Down while connecting to PC.
8. **Launch ODIN**: Open ODIN on your PC.
9. **Flash TWRP 2**: In ODIN, load TWRP 2 `.tar` in `AP`, check only `F. Reset Time` in Options, and click "Start."
10. **Boot to Recovery**: After "Success," reboot to Recovery (hold Vol Up + Power until TWRP loads).
11. **Disable Encryption**: In TWRP, go to `Advanced > Terminal` and run:  

12. **Reboot Recovery**: Select `Reboot > Recovery`.
13. **Flash Magisk**: In TWRP, choose `Install` and flash Magisk 26.4 ZIP.
14. **Reboot to Download Mode**: Power off and enter Download Mode again.
15. **Flash Firmware**: In ODIN, check `Auto Reboot` and `F. Reset Time`. Load:
- `BL`: BL file
- `AP`: `magisk_patched-26300...tar`
- `CP`: CP file
- `CSC`: Full CSC file (**not** `HOME_CSC`)
Click "Start."
16. **Handle Recovery**: If it boots to stock recovery, select `Wipe Data/Factory Reset` and reboot.
17. **Finalize**: Install Magisk 26.3 APK, open it, accept additional setup, and let it reboot.
18. **Verify**: Open Magisk to confirm root. Done! (TWRP is overwritten.)
19. **Optional TWRP**: To reinstall TWRP, flash TWRP 12.1 `.tar` in ODIN’s `AP` slot.

## Important Notes

- **Warranty**: Rooting voids it.
- **Bricking Risk**: Wrong files/steps may brick your A21S (model A217F).
- **Knox**: Flashing trips Knox, breaking features like Secure Folder.
- **TWRP**: Overwritten by firmware; reinstall if needed.
- **Backup**: Save your data—factory reset might be required.

## Troubleshooting

- **ODIN Fails**: Check Samsung USB Drivers, switch USB ports/cables.
- **Bootloop**: Reflash full stock firmware in ODIN.
- **Magisk Issues**: Ensure the patched AP file is valid.

## Credits

- Guide by original author
- Thanks to [Magisk](https://github.com/topjohnwu/Magisk) and [TWRP](https://twrp.me/) communities

## License

[MIT License](LICENSE)—use freely, but at your own risk.