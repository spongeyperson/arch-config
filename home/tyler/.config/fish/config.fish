## Aliases
alias tb="nc termbin.com 9999"
alias termbin="nc termbin.com 9999"
alias aliases="vim /home/tyler/.config/fish/config.fish"
alias fishconfig="vim /home/tyler/.config/fish/config.fish"
alias ls="ls -Ch --color=always"
alias l="ls -alh --color=always"
alias vi="vim"
alias phone="scrcpy -t --bit-rate 15M --max-fps 60 --window-title 'Samsung Galaxy S9+'"
alias mv="mv -v"
alias cp="cp -v"
alias ..="cd .."
alias ...="cd -"
alias lockwidgets="qdbus org.kde.plasmashell /PlasmaShell evaluateScript 'lockCorona(true)'"
alias unlockwidgets="qdbus org.kde.plasmashell /PlasmaShell evaluateScript 'lockCorona(false)'"

#Dotfiles Sync
alias config="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"

#Radeon Vulkan Settings
alias radv="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/radeon_icd.x86_64.json'"
alias radv64="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/radeon_icd.x86_64.json'"
alias radv32="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/radeon_icd.i686.json'"
alias amdvlk="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/amd_icd64.json'"
alias amdvlk64="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/amd_icd64.json'"
alias amdvlk32="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/amd_icd32.json'"
##
