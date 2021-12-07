#if status is-interactive
#     # Commands to run in interactive sessions can go here
#end

# General Aliases
alias tb="nc termbin.com 9999"
alias termbin="nc termbin.com 9999"
alias aliases="vim /home/tyler/.config/fish/config.fish"
alias fishconfig="vim /home/tyler/.config/fish/config.fish"
alias vi="vim"
alias phone="scrcpy -t --bit-rate 15M --max-fps 60 --window-title 'Samsung Galaxy S9+'"

# File Management Tweaks
alias mv="mv -v"
alias cp="cp -v"
alias ls="ls -Ch --color=always"
alias l="ls -alh --color=always"
alias ..="cd .."
alias ...="cd -"

# SSH
alias sshkeys="echo -e '\033[0;32mAuthorized SSH Devices:\033[0m' && ls /home/tyler/.ssh/ssh-identities/ -1I '*.pub'"
alias sshkey="echo -e '\033[0;32mAuthorized SSH Devices:\033[0m' && ls /home/tyler/.ssh/ssh-identities/ -1I '*.pub'"
alias keys="echo -e '\033[0;32mAuthorized SSH Devices:\033[0m' && ls /home/tyler/.ssh/ssh-identities/ -1I '*.pub'"
alias key="echo -e '\033[0;32mAuthorized SSH Devices:\033[0m' && ls /home/tyler/.ssh/ssh-identities/ -1I '*.pub'"


# Manipulate KDE
alias lockwidgets="echo -e '\033[0;31mWidgets Locked\033[0m' ; qdbus org.kde.plasmashell /PlasmaShell evaluateScript 'lockCorona(true)'"
alias unlockwidgets="echo -e '\033[0;32mWidgets Unlocked\033[0m' ; qdbus org.kde.plasmashell /PlasmaShell evaluateScript 'lockCorona(false)'"
alias restartkwin="killall kwin_x11 ; nohup kstart5 kwin_x11 </dev/null &>/dev/null & ; echo -e '\033[0;32mKwin Restarted'"
alias restartplasma="killall plasmashell ; nohup kstart5 plasmashell </dev/null &>/dev/null & ; echo -e '\033[0;32mPlasma Shell Restarted'"
alias restartdock="killall latte-dock ; nohup kstart5 latte-dock </dev/null &>/dev/null & ; echo -e '\033[0;32mLatte Dock Restarted'"

# Dotfiles Sync
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=/'

# Radeon Vulkan Settings
alias radv="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/radeon_icd.x86_64.json'"
alias radv64="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/radeon_icd.x86_64.json'"
alias radv32="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/radeon_icd.i686.json'"
alias amdvlk="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/amd_icd64.json'"
alias amdvlk64="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/amd_icd64.json'"
alias amdvlk32="VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/amd_icd32.json'"
##
