# <p align=center>(WIP) PRIME Render Offload Settings:
###### <p align=center> The Following Page is currently <u>only Applicable to my current hardware</u>. This page is being used as Internal notes to write the proper Prime Offload Settings Page for General Purpose systems. In the meantime, this page will not be visible on the main [README.md](https://github.com/spongeyperson/arch-dotfiles/blob/master/README.md).


## <img src="https://user-images.githubusercontent.com/28176188/192112809-e2564eee-f9a6-4504-8d13-a56d58b268f3.svg" width="20" height="20"> Current Testing Hardware:
<p align=center><img src="https://user-images.githubusercontent.com/28176188/192112487-b5c15ca1-9600-4fba-b113-fb439ba4de87.png"></p>

## <img src="https://user-images.githubusercontent.com/28176188/142365376-270d160f-33c3-4012-a3d9-541ab65bfdb6.png" width="20" height="20"> **AMD**:

- Enable Prime Render Offload in OpenGL / OpenCL Applications:
    - Device 0 = AMD RENOIR (VEGA 8) APU
    - Device 1 = RX 6800M
      - ```DRI_PRIME=<dev-id>```

- ### Vulkan Specific:
  - Requirements:
    - [VKDEVICECHOOSER](https://github.com/aejsmith/vkdevicechooser)<sup><sup>[aur](https://aur.archlinux.org/packages/vkdevicechooser)</sup></sup>
        - Device 0 = RX 6800M
        - Device 1 = AMD RENOIR (VEGA 8) APU
          - Steam Device Chooser:
            - ```ENABLE_DEVICE_CHOOSER_LAYER=<dev-id> VULKAN_DEVICE_INDEX=<dev-id> %command%```
---

- References:
    - https://github.com/aejsmith/vkdevicechooser
    - https://wiki.archlinux.org/title/Vulkan#Selecting_via_environment_variable
    - https://wiki.archlinux.org/title/PRIME#PRIME_GPU_offloading
    - https://wiki.archlinux.org/title/PRIME#Configure_applications_to_render_using_GPU