# <p align=center>(WIP) ASUS ROG G15 "Advantage Edition" on Linux:
###### <p align=center> ROG G15 G513QY


## <img src="https://user-images.githubusercontent.com/28176188/192112809-e2564eee-f9a6-4504-8d13-a56d58b268f3.svg" width="20" height="20"> Neofetch:
<p align=center><img src="https://user-images.githubusercontent.com/28176188/192112487-b5c15ca1-9600-4fba-b113-fb439ba4de87.png"></p>

<!--
### WIP SECTION

## Annoyances:

- ### General Annoyances:

  WIP SECTION
  There's only a few. One of the biggest annoyances is the Laptop does not allow the useage of more than 512MB of Video Memory on the iGPU


- ### Linux Specific:
  -->

## <img src="https://user-images.githubusercontent.com/28176188/142365376-270d160f-33c3-4012-a3d9-541ab65bfdb6.png" width="20" height="20"> **AMD PRIME Render Offload**:

 This Laptop has 2 Graphics Processors. 1x AMD (Cyzanne) RENOIR Based APU, and 1x NAVI 21 Based RX 6800M with a Software-based Hybrid GPU setup, similar to Nvidia Optimus, but without a MUX Chip. AMD Graphics (mostly) work out of the box with this Laptop, however, dedicated GPU video out ports (USB-C DP Out) does not work out of the box. 
 
 PRIME Render Offload is needed for the RX 6800M to be used, and luckily, by default, it does just that. But for more granilar control, the following below can be used:


- #### Prime Render Offload Standard Environment Variable:
  
  ```
  DRI_PRIME=<dev-id>
  ```
  - This Environment Variable allows you to toggle the use of PRIME. However, some applications may ignore this value (Particularly Vulkan Applications), but for sanity sake, i usually toggle it anyway.
    - By Default, the Following Device-IDs should be binded in this fashion:
      - <u>Device 0</u> = AMD RENOIR (VEGA 8) APU
      - <u>Device 1</u> = RX 6800M

- #### Vulkan Specific:
  - For Vulkan Specific applications, Vulkan **will ignore** your options set in the Prime Render Offload Environment Variable as Vulkan has it's own device management. In order to overcome this, there's a nice third-party tool we can use to manipulate Vulkan to our whims. [`VKDEVICECHOOSER`](https://github.com/aejsmith/vkdevicechooser)<sup><sup>[aur](https://aur.archlinux.org/packages/vkdevicechooser)</sup></sup> lets us do exactly this.
    - **Vulkan Default Device Binding**:
        - <u>Device 0</u> = RX 6800M
        - <u>Device 1</u> = AMD RENOIR (VEGA 8) APU
          - Steam Launch Args Useage:
            ```
            ENABLE_DEVICE_CHOOSER_LAYER=<dev-id> VULKAN_DEVICE_INDEX=<dev-id> %command%
            ```

- References:
    - https://github.com/aejsmith/vkdevicechooser
    - https://wiki.archlinux.org/title/Vulkan#Selecting_via_environment_variable
    - https://wiki.archlinux.org/title/PRIME#PRIME_GPU_offloading
    - https://wiki.archlinux.org/title/PRIME#Configure_applications_to_render_using_GPU
