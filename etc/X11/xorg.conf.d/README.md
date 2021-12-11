# <p align=center>Xorg Configuration Files</p>
###### <p align=center>/etc/X11/xorg.conf.d</p> 


- [20-amdgpu.conf](https://github.com/spongeyperson/arch-dotfiles/blob/master/etc/X11/xorg.conf.d/20-amdgpu.conf)
  - Enables Variable Refresh & Tear Free Configs for `amdgpu` kernel module
- [50-digimend.conf](https://github.com/spongeyperson/arch-dotfiles/blob/master/etc/X11/xorg.conf.d/50-digimend.conf)
  - This Config File is for Huion H610 Tablet Drivers.
    - Depends on `xf86-input-wacom` & `digimend-kernel-drivers-dkms`<sup>[aur](https://aur.archlinux.org/packages/digimend-kernel-drivers-dkms/)</sup>
