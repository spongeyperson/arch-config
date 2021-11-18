# Spongey's Arch Linux KDE dotfiles
###### A Simple Git Repository to store various Arch Linux User Configs (Dotfiles).
- ###### Host Config: [spongeyperson/proxmox-config](https://github.com/spongeyperson/proxmox-config/)

![I run Arch BTW](https://user-images.githubusercontent.com/28176188/140734509-d661b98b-b5bd-4ffc-9f59-69d9bed8f1c9.png)

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

**Please note:** `suspend_compositing` script sometimes prevents certain games with Anticheat or launchers from starting. If your game instantly closes, try removing that and suspending compositing with `Alt`+`Shift`+`F12` instead.

## Lutris:

- Work In Progress

[^1]: "[mangohud](https://github.com/spongeyperson/arch-config/blob/master/home/tyler/.config/MangoHud/MangoHud.conf)" and "[suspend_compositing](https://github.com/spongeyperson/arch-config/blob/master/usr/local/bin/suspend_compositing)" commands refer to the following config files required to make them work.
