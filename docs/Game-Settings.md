# <p align=center>Spongey's Personal Settings for Steam: </p>
###### <p align=center> A compiled list of games that run under Linux with no issues, but may need minor tweaks. </p>

# Table of Contents:
  - **Games**:
    - [Commonly Used Steam Launch Arguments](#commonly-used-steam-launch-arguments)
    - [Red Dead Redemption 2](#red-dead-redemption-2)
    - [Grand Theft Auto IV: The Complete Edition](#grand-theft-auto-iv-the-complete-edition)
    - [Farming Simulator 22](#farming-simulator-22)
    - [Spyro Reignited Trilogy](#spyro-reignited-trilogy)
    - [Ghostrunner](#ghostrunner)
    - [Satisfactory](#satisfactory)
    - [Sleeping Dogs: Definitive Edition](#sleeping-dogs-definitive-edition)
      - [Virtual Desktop & Multi-Monitor Fix](#how-to-fix-virtual-desktop--multi-mon-issues)
    - [Final Fantasy XV](#final-fantasy-xv-"windows"-edition)
    - [Bioshock Remastered](#bioshock-remastered)
    - [Ghost of a Tale](#ghost-of-a-tale)

## Commonly Used Steam Launch Arguments:
- ### Wine Specific
  - Enable Wine-Specific FSR (AMD Fidelity FX Super Resolution)
    - `WINE_FULLSCREEN_FSR=1`
- ### AMD Specific
  - Enable AMD ACO Recompiler:
    - `VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco`
- ### DXVK HUD
  - Show DXVK Shader Compilation using DXVK HUD
    - `DXVK_HUD=compile`
- ### [Valve GAMESCOPE (Formerly steamcompmgr)](https://github.com/Plagman/gamescope)
  ```bash
  # Upscale a 720p game to 1440p with integer scaling
  gamescope -h 720 -H 1440 -n -- %command%

  # Limit a vsynced game to 30 FPS
  gamescope -r 30 -- %command%

  # Run the game at 1080p, but scale output to a fullscreen 3440×1440 pillarboxed ultrawide window
  gamescope -w 1920 -h 1080 -W 3440 -H 1440 -b -- %command%
  ```
  ### Options:

  See `gamescope --help` for a full list of options.

  * `-W`, `-H`: set the resolution used by gamescope. Resizing the gamescope window will update these settings. Ignored in embedded mode. If `-H` is specified but `-W` isn't, a 16:9 aspect ratio is assumed. Defaults to 1280×720.
  * `-w`, `-h`: set the resolution used by the game. If `-h` is specified but `-w` isn't, a 16:9 aspect ratio is assumed. Defaults to the values specified in `-W` and `-H`.
  * `-r`: set a frame-rate limit for the game. Specified in frames per second. Defaults to unlimited.
  * `-o`: set a frame-rate limit for the game when unfocused. Specified in frames per second. Defaults to unlimited.
  * `-U`: use AMD FidelityFX™ Super Resolution 1.0 for upscaling 
  * `-n`: use integer scaling.
  * `-b`: create a border-less window.
  * `-f`: create a full-screen window.


## Red Dead Redemption 2:

- #### Wine / Proton Info:
  - Initial Test Version: `Proton-7.0rc3-GE-1`
  - Last Known Working: `GE-Proton7-10`

- **Steam Launch Arguments**:
  ```bash
  VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco gamemoderun mangohud %command% -vulkan -ignorepipelinecache
  ```
- **Notes**: 
    - This game uses standard RADV ICD + ACO Recompiler, Gamemode Run, and Mangohud
    - `-ignorepipelinecache`: Use this flag for performance reasons.
    - `-vulkan`: is required to get the game to display 
    - **Notice**: **Proton-7.0rc2-GE-1** has issues starting RGSC Launcher and will cause the game to never launch. Use **Standard Valve Proton** or **Proton-7.0rc3-GE-1** or newer. 

## Grand Theft Auto IV: The Complete Edition:

- #### Wine / Proton Info:
  - Last Known Working: `Proton-6.21-GE-2`
  
- **Steam Launch Arguments**:
  ```bash
  DXVK_HUD=compile gamemoderun mangohud %command%
  ```

## Farming Simulator 22:

- #### Wine / Proton Info:
  - Last Known Working: `Proton 6.3-8`

- **Steam Launch Arguments**:
  ```bash
  VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco gamemoderun mangohud %command%
  ```
- **Notes**: 
    - This game uses standard RADV ICD + ACO Recompiler, Gamemode Run, and Mangohud

## Spyro Reignited Trilogy:

- #### Wine / Proton Info:
  - Last Known Working: `Proton-7.0rc2-GE-1`

- **Steam Launch Arguments**:
  ```bash
  VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco gamemoderun mangohud %command% -nohmd -DX11
  ```
- **Notes**: 
    - This game uses standard RADV ICD + ACO Recompiler, Gamemode Run, and Mangohud
    - Without `-nohmd` and `-DX11` flags, this game will either crash at random intervals, or instantly crash without any warning before the game launches.

## Ghostrunner:

- #### Wine / Proton Info:
  - Last Known Working: `Proton-7.0rc6-GE-1`

- **Steam Launch Arguments**:
  ```bash
  VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco gamemoderun mangohud %command%
  ```

## Satisfactory:

- #### Wine / Proton Info:
  - Last Known Working: `GE-Proton7-10`

- **Steam Launch Arguments**:
```
MESA_GL_VERSION_OVERRIDE=4.4COMPAT __GL_SHADER_DISK_CACHE=1 VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco gamemoderun mangohud %command% -opengl -SkipBuildPatchPrereq
```

## Assassins Creed Origins:

- #### Wine / Proton Info:
  - Last Known Working: `GE-Proton7-9`
- **Steam Launch Arguments:**
  ```bash
  DXVK_LOG_LEVEL=none PROTON_USE_D9VK=1 %command%
  ```

## Sleeping Dogs: Definitive Edition:

- #### Wine / Proton Info:
  - Last Known Working: `Proton 6.3-8`

- **Dependancies:**
    - `gamescope-git`<sup>[aur](https://aur.archlinux.org/packages/gamescope-git)</sup>
      - Required due to [Sleeping Dogs White Screen issue](https://github.com/ValveSoftware/Proton/issues/872#issuecomment-468116035). Default Proton Fix includes using a Virtual Desktop, however, the gamescope approach works nicer with Multi-Mon Setups.
- **Steam Launch Arguments:**
  ```bash
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

## Final Fantasy XV: "Windows" Edition:

- #### Wine / Proton Info:
  - Initial Test Version: `GE-Proton7-18`<sup>[Regression](https://github.com/ValveSoftware/Proton/issues/74#event-5256563749)</sup>
    -  **Regression Info**:
       -  Every version past `Proton 7.0-2` is known to have a regression where a message pops up containing: ["Unable to create interface ISteamUser" error](https://user-images.githubusercontent.com/3923810/44459007-53c26c80-a608-11e8-9a79-734b6050b927.png), or the game starts with a Black Screen; along with various other issues with the game past this specific Proton version. Use with Caution.
  - Last Known Working: `Proton 7.0-2`
- **Steam Launch Arguments:**
  ```bash
  VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json RADV_PERFTEST=aco gamemoderun mangohud %command%
  ```
## Bioshock Remastered:

- #### Wine / Proton Info:
  - Working Status: `Working, occasional crashing. Unsure if caused by Proton.`
  - Initial Test Version: `Proton Experimental`
  - Last Known Working: `GE-Proton7-18` <sup>*Possibly* also causing crashing, further testing / research needed.</sup>
- Issues:
  - Game is known to crash upon saving, loading the map (m key), or loading a new world. These issues are sporadic and random, ~~and no discernable cause has been placed yet.~~ It's possible crashes are caused by DXVK trying to inject 64bit libraries into a 32bit game, as forcing Vulkan ICD as the `i686` variant seems to stop or limit crashing. More testing is needed.
- **Steam Launch Arguments:**
  ```bash
  VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.i686.json RADV_PERFTEST=aco mangohud %command% -nointro
  ```
## Ghost of a Tale:

- #### Wine / Proton Info:
  - Working Status: `Seems to be Fully Working, More Testing Needed`
  - Initial Test Version: `GE-Proton7-20` <sup>*Possibly* Also Broken, further testing needed.</sup>
  - Last Known Working: `Proton 6.3-8`
- **Steam Launch Arguments:**
  ```bash
  VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.i686.json RADV_PERFTEST=aco gamemoderun mangohud %command%
  ```