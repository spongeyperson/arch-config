# Spongey's Personal Settings for Steam:

#### A compiled list of games that run under Linux with no issues, but may need minor tweaks.

# Table of Contents:
  - **Games**:
    - [Red Dead Redemption 2](#red-dead-redemption-2)
    - [Grand Theft Auto IV: The Complete Edition](#grand-theft-auto-iv-the-complete-edition)
    - [Farming Simulator 22](#farming-simulator-22)
    - [Spyro Reignited Trilogy](#spyro-reignited-trilogy)
    - [Ghostrunner](#ghostrunner)
    - [Sleeping Dogs: Definitive Edition](#sleeping-dogs-definitive-edition)
      - [Virtual Desktop & Multi-Monitor Fix](#how-to-fix-virtual-desktop--multi-mon-issues)

## Red Dead Redemption 2
#### Proton-7.0rc3-GE-1
- **Steam Launch Arguments**:
```
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco gamemoderun mangohud %command% -vulkan -ignorepipelinecache
```
- **Notes**: 
    - This game uses standard RADV ICD + ACO Recompiler, Gamemode Run, and Mangohud
    - `-ignorepipelinecache`: Use this flag for performance reasons.
    - `-vulkan`: is required to get the game to display 
    - **Notice**: **Proton-7.0rc2-GE-1** has issues starting RGSC Launcher and will cause the game to never launch. Use **Standard Valve Proton** or **Proton-7.0rc3-GE-1** or newer. 

## Grand Theft Auto IV: The Complete Edition
#### Proton-6.21-GE-2
- **Steam Launch Arguments**:
```
WINE_FULLSCREEN_FSR=1 DXVK_HUD=compile gamemoderun mangohud %command%
```

## Farming Simulator 22
#### Proton v6.3.8
- **Steam Launch Arguments**:
```
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco gamemoderun mangohud %command%
```
- **Notes**: 
    - This game uses standard RADV ICD + ACO Recompiler, Gamemode Run, and Mangohud

## Spyro Reignited Trilogy
#### Proton-7.0rc2-GE-1
- **Steam Launch Arguments**:
```
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco gamemoderun mangohud %command% -nohmd -DX11
```
- **Notes**: 
    - This game uses standard RADV ICD + ACO Recompiler, Gamemode Run, and Mangohud
    - Without `-nohmd` and `-DX11` flags, this game will either crash at random intervals, or instantly crash without any warning before the game launches.

## Ghostrunner
#### Proton-7.0rc6-GE-1
- **Steam Launch Arguments**:
```
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco gamemoderun mangohud %command%
```

## Sleeping Dogs: Definitive Edition
#### Proton 6.3-8
- **Dependancies:**
    - `gamescope-git`<sup>[aur](https://aur.archlinux.org/packages/gamescope-git)</sup>
      - Required due to [Sleeping Dogs White Screen issue](https://github.com/ValveSoftware/Proton/issues/872#issuecomment-468116035). Default Proton Fix includes using a Virtual Desktop, however, the gamescope approach works nicer with Multi-Mon Setups.
- **Steam Launch Arguments:**
```
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco gamemoderun gamescope -w 2560 -h 1440 -W 2560 -H 1440 -b -- mangohud %command%
```
- ### Fixes:
  - #### How to fix Virtual Desktop / Multi-Mon Issues:
    1. Install Dependancies
    2. In the commandline, run `protontricks 307690 --gui`
    3. When Protontricks opens, Click `Select the default wineprefix` and Click `ok`.
    4. Click `Run winecfg`
    5. In the "`Graphics`" tab of winecfg, uncheck: `Emulate a virtual desktop`
    6. add Steam Launch Arguments, and replace both instances of Width and Height (`-w` & `-h`) to your Monitor's Resolution.