# <p align=center>Custom KDE Panels:</p>
> This file was reintroduced Dec 15th, 2021 after it mysteriously disappeared

This directory contains a custom KDE Default Panel under the "Add Panel" menu; Complete with a Global Menu and some settings configured under the Js files

<p align=center>
  <img src="https://user-images.githubusercontent.com/28176188/146104792-9fddbf92-5a96-45cc-b310-a26c7bd9333e.png" />
</p>

> Please Note: As of Feb 21st 2023, i highly recommend <u>against</u> using aur packages for widgets as they seem to often get out of date very quickly and abandoned with another random package name taking it's place for the same widget. This leaves lots of orphan packages and it's dependancies and is just a mess. [I am working on a revision to this](https://github.com/spongeyperson/arch-dotfiles/issues/1#issue-1593299110)   
## Spongey Panel:
###### Default Spongey Panel
<sub>([`org.kde.plasma.desktop.SpongeyPanel/`](https://github.com/spongeyperson/arch-dotfiles/tree/master/home/tyler/.local/share/plasma/layout-templates/org.kde.plasma.desktop.SpongeyPanel/))</sub>

- This panel requires the following Dependancies to work:
    - `plasma5-applets-weather-widget`
    - `plasma5-applets-eventcalendar`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-eventcalendar)</sup>
    - `plasma5-applets-resources-monitor`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-resources-monitor) [fork build](https://github.com/orblazer/plasma-applet-resources-monitor)</sup>
    - `plasma5-applets-netspeed`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-netspeed)</sup>
    - `plasma5-applets-latte-separator`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-latte-separator)</sup>
    - `plasma5-applets-window-title`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-window-title)</sup>
    - `plasma5-applets-thermal-monitor-fix`<sup>[pling](https://store.kde.org/p/1408433)[^1]</sup>

## Spongey Panel Multi-Monitor: 
###### This is for multi-monitor setups, and is designed as a work-around for the Multi-Monitor Plasma Kickoff Bug <sup>[bugtracker](https://bugs.kde.org/show_bug.cgi?id=443131)</sup>. This Panel also removes Plasma System Tray as Plasma is dumb and duplicates notifications with Multiple Monitors.
<sub>([`org.kde.plasma.desktop.SpongeyPanelMmon/`](https://github.com/spongeyperson/arch-dotfiles/tree/master/home/tyler/.local/share/plasma/layout-templates/org.kde.plasma.desktop.SpongeyPanelMmon/))</sub>

- This panel otherwise requires the same Dependancies to work as [[Spongey Panel]](#spongey-panel)


## Spongey Panel Fallback:
###### Default Spongey Panel, with Minimal Third Party Dependancies 
<sub>([`org.kde.plasma.desktop.SpongeyPanelFallback/`](https://github.com/spongeyperson/arch-dotfiles/tree/master/home/tyler/.local/share/plasma/layout-templates/org.kde.plasma.desktop.SpongeyPanelFallback/))</sub>

This panel *only* has two dependancies for compatibility incase Plasma Applets break or go out of date, but otherwise it is visually identical, just with less features.

- Depends:
    - `plasma5-applets-window-title`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-window-title)</sup>
    - `plasma5-applets-latte-separator`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-latte-separator)</sup>


[^1]: There is also a `plasma5-applets-thermal-monitor` as well as a `plasma5-applets-thermal-monitor-git`<sup>[aur](https://aur.archlinux.org/packages/plasma5-applets-thermal-monitor-git)</sup> avaliable, however, both versions refer to [gitlab.com/agurenko](https://gitlab.com/agurenko/plasma-applet-thermal-monitor) variant and as of writing this, it is now out of date. [Thermal Monitor Fix](https://store.kde.org/p/1408433) contains fixes that make this old plugin work properly again.
