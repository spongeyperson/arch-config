# <p align=center>VFIO GPU Passthrough VBIOS ROMs:</p>

<!--
> This file was reintroduced Dec 15th, 2021 after it mysteriously disappeared

This directory contains a custom KDE Default Panel under the "Add Panel" menu; Complete with a Global Menu and some settings configured under the Js files

<p align=center>
  <img src="https://user-images.githubusercontent.com/28176188/146104792-9fddbf92-5a96-45cc-b310-a26c7bd9333e.png" />
</p>
-->

- ## Files in this Directory:
  - **ROMs Ready for Passthrough:**
    - <a href="https://github.com/spongeyperson/arch-dotfiles/blob/master/usr/share/kvm/RX6800XT-RedDevilLE.rom">RX6800XT-RedDevilLE.rom</a>
      - Patched ROM file for the Radeon RX 6800XT Red Devil Limited Edition
    - <a href="https://github.com/spongeyperson/arch-dotfiles/blob/master/usr/share/kvm/GTX1070-GamingX.rom">GTX1070-GamingX.rom</a>
      - Patched ROM file for the MSI Gaming X GTX 1070 
    - <a href="https://github.com/spongeyperson/arch-dotfiles/blob/master/usr/share/kvm/RTX3090-TUFOC.rom">RTX3090-TUFOC.rom</a>
      - Patched ROM file for the ASUS TUF RTX 3090 OC
  - **ROMs <u>NOT</u> Ready for Passthrough:**
    - <a href="https://github.com/spongeyperson/arch-dotfiles/blob/master/usr/share/kvm/RTX3090-TUFOC.rom.original">RTX3090-TUFOC.rom.original</a>
      - Original ROM Dump from ASUS TUF RTX 3090 OC. This BIOS will <i>probably **not**</i> work properly when used in a Passed through GPU. This ROM is only here for completeness
    - <a href="https://github.com/spongeyperson/arch-dotfiles/blob/master/usr/share/kvm/RTX3090-TUFOC.rom.echo">RTX3090-TUFOC.rom.echo</a>
      - Original ROM Dump from ASUS TUF RTX 3090 OC. This BIOS will <i>probably **not**</i> work properly when used in a Passed through GPU. <u>This BIOS is also possibly invalid.</u> This was extracted using the following command(s):
      > Substitute `0000:01:00.0` for your GPU's Device ID

        ```bash
        $ echo 1 > /sys/bus/pci/devices/0000:01:00.0/rom
        $ cat /sys/bus/pci/devices/0000:01:00.0/rom > /tmp/image.rom
        $ echo 0 > /sys/bus/pci/devices/0000:01:00.0/rom
        ```


- # VBIOS Setup:
  This Section will explain how to patch a VBIOS for use in GPU passthrough. Some, if not all GPUs will need this at some point, so it's useful to know how achieve this. Look for your type of GPU below, and continue on from there.


  - ## <img src="https://user-images.githubusercontent.com/28176188/142362826-8090a147-94ee-4f67-a3ed-f87058a6797d.png" width="25" height="25"> NVIDIA GPUs:
    - ### <u>NVIDIA VBIOS Setup - Step 1:</u> How to extract your VBIOS:
      > This Section was taken from a message by <a href="https://discord.com/channels/244187921228234762/352637972882915340/468650722284535848">Aiber</a> from the <a href="https://discord.com/invite/f63cXwH">VFIO Discord</a>. I do not take credit for any of this information, merely relaying it elsewhere for others to benefit. 
      - **Option 1**: <u>(Preferred)</u> Grab the ROM from Nvidia's Propietary Flashing Utility: <a href="https://www.techpowerup.com/download/nvidia-nvflash/">`nvflash`</a>
        - **Instructions**:
          1) Download the Zipped Binary (not source) & Simply Unzip it
          2) Run `chmod +x nvflash` on the Binary
          3) Extract your vbios: `./nvflash --save original.rom`
              - **Note**: This tool <u>may not</u> work when the NVIDIA Propietary Driver is currently bound to the card. <u>It can</u> work with no driver bound, `vfio-pci` is bound, or in some cases when `nouveau` (sketchy) is bound to the gpu.
    
      - **Option 2**: Grab the ROM from GPU-Z in either Native or Virtualized VM using the "Save VBIOS" Button. <sup><sup>(GPU-Z Uses nvflash internally)</sup></sup>
          - **Instructions**:
            1) Download <a href="https://www.techpowerup.com/download/techpowerup-gpu-z/">GPU-Z</a> inside Windows
            2) Run the Application
            3) Click this button:
     
      - **Option 3**: Download a ROM Matching your GPU on Techpowerup's Database that matches your PCI ID's and Subsystem ID's.
        - Example of PCI ID's & Subsystem ID's with a Nvidia RTX 3090:
          > The IDs are `10de:2204` & `1043:87b3`. Google Techpowerup & these numbers and download a ROM that matches. **DOUBLE CHECK that all ID's match.**
          ```bash
          $ lspci -nnk
            (...)
            4e:00.0 VGA compatible controller [0300]: NVIDIA Corporation GA102 [GeForce RTX 3090] [10de:2204] (rev a1)
                    Subsystem: ASUSTeK Computer Inc. Device [1043:87b3]
            (...)
          ```

  - ## <img src="https://user-images.githubusercontent.com/28176188/142365376-270d160f-33c3-4012-a3d9-541ab65bfdb6.png" width="25" height="25"> AMD GPUs:
    - Extract your VBIOS using the following commands:
      > Substitute `0000:01:00.0` for your GPU's Device ID

        ```bash
        $ echo 1 > /sys/bus/pci/devices/0000:01:00.0/rom
        $ cat /sys/bus/pci/devices/0000:01:00.0/rom > /tmp/image.rom
        $ echo 0 > /sys/bus/pci/devices/0000:01:00.0/rom
        ```

<!--
###### ASUS TUF RTX 3090 OC

<sub>([`org.kde.plasma.desktop.SpongeyPanel/`](https://github.com/spongeyperson/arch-dotfiles/tree/master/home/tyler/.local/share/plasma/layout-templates/org.kde.plasma.desktop.SpongeyPanel/))</sub>

- This panel requires the following Dependancies to work:
    - `plasma5-applets-weather-widget`
    - `plasma5-applets-eventcalendar`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-eventcalendar)</sup>
    - `plasma5-applets-resources-monitor`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-resources-monitor) [fork build](https://github.com/orblazer/plasma-applet-resources-monitor)</sup>
    - `plasma5-applets-netspeed`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-netspeed)</sup>
    - `plasma5-applets-latte-separator`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-latte-separator)</sup>
    - `plasma5-applets-window-title`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-window-title)</sup>
    - `plasma5-applets-thermal-monitor-fix`<sup>[pling](https://store.kde.org/p/1408433)[^1]</sup>

## Spongey Panel Multi-Monitor: 
###### This is for multi-monitor setups, and is designed as a work-around for the Multi-Monitor Plasma Kickoff Bug <sup>[bugtracker](https://bugs.kde.org/show_bug.cgi?id=443131)</sup>. This Panel also removes Plasma System Tray as Plasma is dumb and duplicates notifications with Multiple Monitors.
<sub>([`org.kde.plasma.desktop.SpongeyPanelMmon/`](https://github.com/spongeyperson/arch-dotfiles/tree/master/home/tyler/.local/share/plasma/layout-templates/org.kde.plasma.desktop.SpongeyPanelMmon/))</sub>

- This panel otherwise requires the same Dependancies to work as [[Spongey Panel]](#spongey-panel)


## Spongey Panel Fallback:
###### Default Spongey Panel, with Minimal Third Party Dependancies 
<sub>([`org.kde.plasma.desktop.SpongeyPanelFallback/`](https://github.com/spongeyperson/arch-dotfiles/tree/master/home/tyler/.local/share/plasma/layout-templates/org.kde.plasma.desktop.SpongeyPanelFallback/))</sub>

This panel *only* has two dependancies for compatibility incase Plasma Applets break or go out of date, but otherwise it is visually identical, just with less features.

- Depends:
    - `plasma5-applets-window-title`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-window-title)</sup>
    - `plasma5-applets-latte-separator`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-latte-separator)</sup>


[^1]: There is also a `plasma5-applets-thermal-monitor` as well as a `plasma5-applets-thermal-monitor-git`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-thermal-monitor-git)</sup> avaliable, however, both versions refer to [gitlab.com/agurenko](https://gitlab.com/agurenko/plasma-applet-thermal-monitor) variant and as of writing this, it is now out of date. [Thermal Monitor Fix](https://store.kde.org/p/1408433) contains fixes that make this old plugin work properly again.
-->