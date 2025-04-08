Below is a README file tailored for your GitHub repository based on the provided document. It’s formatted in Markdown, which is standard for GitHub READMEs, and includes clear instructions, prerequisites, and notes for users attempting to root their Samsung A21S.

---

# A21S Root Guide

This repository contains a detailed guide to root the Samsung Galaxy A21S using ODIN, Magisk, and TWRP. The steps have been tested and confirmed to work as of April 08, 2025. Rooting your device will give you superuser access but will void your warranty and may brick your device if not done correctly. Proceed at your own risk.

## Prerequisites

Before starting, ensure you have the following:

- **Samsung Galaxy A21S** device
- A Windows PC with ODIN installed
- USB cable to connect your phone to the PC
- The following files downloaded:
  - Stock firmware for your A21S (specific to your region and model)
  - [ODIN](https://odindownload.com/) (flash tool)
  - [Magisk 26.4 flashable ZIP](https://github.com/topjohnwu/Magisk/releases/tag/v26.4)
  - [Magisk 26.3 APK](https://github.com/topjohnwu/Magisk/releases/tag/v26.3)
  - [TWRP 2](https://twrp.me/) (specific version for A21S)
  - [TWRP 12.1](https://twrp.me/) (specific version for A21S)

**Note:** Ensure USB Debugging is enabled on your phone (Settings > Developer Options) and your device is charged above 50%.

## Rooting Instructions

Follow these steps carefully to root your Samsung Galaxy A21S:

1. **Download Required Files**  
   Download the stock firmware for your A21S, ODIN, Magisk 26.4 ZIP, Magisk 26.3 APK, TWRP 2, and TWRP 12.1.

2. **Extract AP File**  
   From the stock firmware, extract the file starting with `AP` (e.g., `AP_A217FXXSADWI1_CL24202344_QB70902586_REV00_user_low_ship_MULTI_CERT_meta_RKEY_OS12.tar.md5`).

3. **Transfer AP File**  
   Copy the extracted `AP...tar.md5` file to your A21S’s internal storage.

4. **Install Magisk APK**  
   Install the Magisk 26.3 APK on your phone.

5. **Patch AP File with Magisk**  
   Open Magisk, click "Install," then "Select and Patch a File." Choose the `AP...tar.md5` file. Magisk will generate a patched file (e.g., `magisk_patched-26300...tar`).

6. **Copy Patched File**  
   Transfer the `magisk_patched-26300...tar` file from your phone to your PC.

7. **Enter Download Mode**  
   Reboot your phone into Download Mode (Power off, then hold Vol Up + Vol Down while connecting to PC via USB).

8. **Launch ODIN**  
   Open ODIN on your PC.

9. **Flash TWRP 2**  
   In ODIN, select the TWRP 2 `.tar` file in the `AP` field. In the "Options" tab, ensure only `F. Reset Time` is checked. Click "Start" to flash.

10. **Boot to Recovery**  
    After "Success!" in ODIN, reboot directly into Recovery Mode (hold Vol Up + Power until the TWRP screen appears).

11. **Disable Encryption**  
    In TWRP, go to `Advanced > Terminal` and type:  
    ```
    multidisabler execute
    ```

12. **Reboot to Recovery**  
    Go back, select `Reboot > Recovery` to restart TWRP.

13. **Flash Magisk ZIP**  
    In TWRP, select `Install` and flash the Magisk 26.4 ZIP file.

14. **Reboot to Download Mode**  
    Power off your phone and boot back into Download Mode.

15. **Prepare ODIN for Firmware Flash**  
    In ODIN’s "Options" tab, check `Auto Reboot` and `F. Reset Time`. Load the following files:
    - `BL` slot: BL file from stock firmware
    - `AP` slot: `magisk_patched-26300...tar` file
    - `CP` slot: CP file from stock firmware
    - `CSC` slot: CSC file (use the full `CSC` file, **not** `HOME_CSC`)

16. **Flash Firmware**  
    Click "Start" in ODIN. Wait for "Success!"

17. **Handle Stock Recovery**  
    If the phone reboots into stock recovery, select `Wipe Data/Factory Reset` and reboot.

18. **Finalize Magisk Setup**  
    Install the Magisk 26.3 APK again. Open it—Magisk will prompt to install additional files. Accept, and the phone will reboot.

19. **Verification**  
    Once rebooted, open Magisk to confirm root access. Congratulations, your A21S is rooted! (Note: TWRP will be overwritten at this stage.)

20. **Optional: Reinstall TWRP**  
    If you need TWRP back, reboot to Download Mode and flash the TWRP 12.1 `.tar` file using ODIN (load in `AP` slot, then "Start").

## Important Notes

- **Warranty Void:** Rooting voids your device warranty.
- **Risk of Bricking:** Incorrect steps or incompatible files may brick your device. Double-check your firmware and model (A217F).
- **Knox Tripped:** Flashing custom files will trip Samsung Knox, disabling features like Secure Folder.
- **TWRP Overwritten:** The final firmware flash replaces TWRP with stock recovery. Reinstall TWRP 12.1 if needed.
- **Backup:** Always back up your data before proceeding, as a factory reset may be required.

## Troubleshooting

- **ODIN Fails:** Ensure drivers are installed (Samsung USB Drivers) and try a different USB port/cable.
- **Bootloop:** Reflash stock firmware using ODIN with all slots filled (BL, AP, CP, CSC).
- **Magisk Not Working:** Verify the patched AP file was correctly generated and flashed.

## Credits

- Guide by orginal author 
- Thanks to the Magisk and TWRP communities for their tools.

## License

This guide is provided under the [MIT License](LICENSE). Use it freely, but at your own risk.

---

Feel free to adjust the `[Your GitHub Username]` placeholder with your actual username or name! This README is concise, professional, and includes all necessary details for users to follow your rooting process safely. Let me know if you'd like to tweak anything further!
