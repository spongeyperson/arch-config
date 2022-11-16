# <p align=center>- Spongey's Arch Linux KDE Dotfiles -
###### <p align=center> A Simple Git Repository to store various Arch Linux User Configs (Dotfiles).


<!--#### <p align=center> Index:
-->
<details>
  <summary><b>Index</b></summary>
  <ul>
   <li><b>This Repo</b>:
    <ul>
      <li>Documentation:
        <ul>
          <li>Wine Gaming Related:
            <ul>
              <li><a href="https://github.com/spongeyperson/arch-dotfiles/blob/master/docs/Game-Settings.md">Game settings<a></li>
              <li><a href="https://github.com/spongeyperson/arch-dotfiles/blob/master/docs/Game-Troubleshooting.md">Game troubleshooting<a></li>
            </ul>
        </ul>
        <li><a href="https://github.com/spongeyperson/arch-dotfiles/tree/master/home/tyler/.local/share/plasma/layout-templates">Custom KDE panels</a></li>
        <li><a href="https://github.com/spongeyperson/arch-dotfiles/tree/master/etc/X11/xorg.conf.d/">Xorg configuration</a></li>
        <li><a href="https://github.com/spongeyperson/arch-dotfiles/tree/master/home/tyler/arch-dotfiles/unused">Unused files directory</a></li>
      </ul>
    </li>
  </ul>
  <li><b>Other Repos</b>:</li>
    <ul>
      <li><b>Proxmox</b>: <a href="https://github.com/spongeyperson/proxmox-config/">spongeyperson/proxmox-config</a></li>
      <li><b>Fedora</b>: <a href="https://github.com/spongeyperson/fedora-dotfiles/">spongeyperson/fedora-dotfiles</a></li>
    </ul>
</details>


![I run Arch BTW](https://user-images.githubusercontent.com/28176188/146662437-bbd5fc0d-ae98-4f28-a2df-12b89f819534.png)

# Gaming Tweaks:

## <img src="https://user-images.githubusercontent.com/28176188/142364090-9c9b1eaf-8e94-4402-b943-0d46895032f2.png" width="25" height="25"> Steam:
###### Various Launch Commands used for Steam:

#### <img src="https://user-images.githubusercontent.com/28176188/142365376-270d160f-33c3-4012-a3d9-541ab65bfdb6.png" width="15" height="15"> AMD / Radeon Specific:

- RAD-V ACO Recompiler (Recommended): [^1]
  ```bash
  VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco suspend_compositing gamemoderun mangohud %command%
  ```
  - Possible Alternatives:
    ```bash
    AMD_VULKAN_ICD=RADV RADV_PERFTEST=aco
    ```
- AMDVLK: [^1]
  ```bash
  VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/amd_icd64.json suspend_compositing gamemoderun mangohud %command%
  ```

- Additional Flags for Radeon dGPU Switchable Graphics (Using [`amdgpu`](https://wiki.archlinux.org/title/AMDGPU)'s native [`prime` GPU Offloading](https://wiki.archlinux.org/title/PRIME#PRIME_GPU_offloading=) functions):
  - For Non-Steam Applications: `DRI_PRIME=1`
  - or for Steam: `DRI_PRIME=1 %command%`

#### <img src="https://user-images.githubusercontent.com/28176188/142362826-8090a147-94ee-4f67-a3ed-f87058a6797d.png" width="15" height="15"> Nvidia Specific:

- Work In Progress

**Please note:** [`suspend_compositing`](usr/local/bin/suspend_compositing) script sometimes prevents certain games with Anticheat or launchers from starting. If your game instantly closes, try removing that and suspending compositing with `Alt`+`Shift`+`F12` instead.

## <img src="https://user-images.githubusercontent.com/28176188/142367009-ea2326c6-16ca-494a-9a4f-2591f90e2cae.png" width="25" height="25"> Lutris:

- Work In Progress

###### <p align=center> Note: I do <ins>not</ins> pretend to own any content on this git repository. All contents are copyright of their respective owners. This repository is intented for recreating Linux installs only. Content on this repository is installed <ins>at your own risk</ins>. If you have any legal issue with the content on this repository, please make a github issue and i will create a submodule linking to your project instead.</p>

[^1]: "[mangohud](home/tyler/.config/MangoHud/MangoHud.conf)" and "[suspend_compositing](usr/local/bin/suspend_compositing)" commands refer to the following config files required to make them work.
