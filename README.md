# Spongey's Arch Linux KDE dotfiles
###### A Simple Git Repository to store various Arch Linux User Configs (Dotfiles).
- ###### Host Config: [spongeyperson/proxmox-config](https://github.com/spongeyperson/proxmox-config/)

![I run Arch BTW](https://user-images.githubusercontent.com/28176188/140734509-d661b98b-b5bd-4ffc-9f59-69d9bed8f1c9.png)

![](https://gyazo.com/eb5c5741b6a9a16c692170a41a49c858.png | width=100)


# Gaming Tweaks:

## Steam:
###### Various Launch Commands used for Gaming:

<img src="https://user-images.githubusercontent.com/28176188/142360649-4d0ddff1-2a57-47f0-8da2-c575311db19e.jpg" width="15" height="15"> Radeon Specific:

- RAD-V ACO Recompiler (Recommended): [^1]
```bash
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco suspend_compositing gamemoderun mangohud %command%
```

- AMDVLK: [^1]
```bash
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/amd_icd64.json suspend_compositing gamemoderun mangohud %command%
```
**Please note:** `suspend_compositing` script sometimes prevents certain games with Anticheat or launchers from starting. If your game instantly closes, try removing that and suspending compositing with `Alt`+`Shift`+`F12` instead.

<img src="https://user-images.githubusercontent.com/28176188/142362826-8090a147-94ee-4f67-a3ed-f87058a6797d.png" width="20" height="20"> Nvidia Specific:

- Work In Progress

[^1]: "[mangohud](https://github.com/spongeyperson/arch-config/blob/master/home/tyler/.config/MangoHud/MangoHud.conf)" and "[suspend_compositing](https://github.com/spongeyperson/arch-config/blob/master/usr/local/bin/suspend_compositing)" commands refer to the following config files required to make them work.
