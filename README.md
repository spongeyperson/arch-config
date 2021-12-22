# <p align=center>- Spongey's Arch Linux KDE Dotfiles -
###### <p align=center> A Simple Git Repository to store various Arch Linux User Configs (Dotfiles).


#### <p align=center> Index:
  - **This Repo**:
    - Documentation:
      - [Custom KDE Panels](https://github.com/spongeyperson/arch-dotfiles/tree/master/home/tyler/.local/share/plasma/layout-templates)
      - [Xorg Configuration](https://github.com/spongeyperson/arch-dotfiles/tree/master/etc/X11/xorg.conf.d)
      - [Unused Directory](https://github.com/spongeyperson/arch-dotfiles/tree/master/home/tyler/arch-dotfiles/unused)
  - Other Dotfiles:
    - **Proxmox**: [spongeyperson/proxmox-config](https://github.com/spongeyperson/proxmox-config/)
    - **Fedora**: [spongeyperson/fedora-dotfiles](https://github.com/spongeyperson/fedora-dotfiles/)

![I run Arch BTW](https://user-images.githubusercontent.com/28176188/146662437-bbd5fc0d-ae98-4f28-a2df-12b89f819534.png)

# Gaming Tweaks:

## <img src="https://user-images.githubusercontent.com/28176188/142364090-9c9b1eaf-8e94-4402-b943-0d46895032f2.png" width="25" height="25"> Steam:
###### Various Launch Commands used for Steam:

<img src="https://user-images.githubusercontent.com/28176188/142365376-270d160f-33c3-4012-a3d9-541ab65bfdb6.png" width="20" height="20"> Radeon Specific:

- RAD-V ACO Recompiler (Recommended): [^1]
```bash
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco suspend_compositing gamemoderun mangohud %command%
```

- AMDVLK: [^1]
```bash
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/amd_icd64.json suspend_compositing gamemoderun mangohud %command%
```

<img src="https://user-images.githubusercontent.com/28176188/142362826-8090a147-94ee-4f67-a3ed-f87058a6797d.png" width="20" height="20"> Nvidia Specific:

- Work In Progress

**Please note:** [`suspend_compositing`](https://github.com/spongeyperson/arch-dotfiles/blob/master/usr/local/bin/suspend_compositing) script sometimes prevents certain games with Anticheat or launchers from starting. If your game instantly closes, try removing that and suspending compositing with `Alt`+`Shift`+`F12` instead.

## <img src="https://user-images.githubusercontent.com/28176188/142367009-ea2326c6-16ca-494a-9a4f-2591f90e2cae.png" width="25" height="25"> Lutris:

- Work In Progress

[^Note]: Unused Directory 
[^1]: "[mangohud](https://github.com/spongeyperson/arch-dotfiles/blob/master/home/tyler/.config/MangoHud/MangoHud.conf)" and "[suspend_compositing](https://github.com/spongeyperson/arch-dotfiles/blob/master/usr/local/bin/suspend_compositing)" commands refer to the following config files required to make them work.
