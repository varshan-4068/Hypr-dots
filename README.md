
# *Hypr-dots*

This Repo is an Stable release repo of my dotfiles for Rolling release checkout [My github repo](https://gitlab.com/varshan-4068/Hyprland-Arch)...

To Install my Dotfiles,etc Run the commands below....

    git clone https://github.com/varshan-4068/Hyprland-Arch.git
    sudo pacman -S gum
    cd Hyprland-Arch
    chmod +x install.sh
    ./install.sh

> [!Warning]
>
> ---------------------
> *These Dotfiles were Tested on Arch Linux Only, Try it at other distros at your own risk..*
>
> *Backup your config files with timeshift or just backup your configs while running my installation script by answering the prompt asking to backup configs as yes..*
>
> *After Installing my script reboot your system for the effective Experience of the configs..*
> 
> *These Dotfiles were made for 1980 x 1080 Resolutions only so to use with other Resolutions configure the dotfiles accordingly*
> 
> *If u have a scaling factor greater than 1.0 then u might have issues in wayland with fractional scaling so the solution is refer ~/config/hypr/monitors.conf to get an idea*

And using nwg-look select your icon and gtk theme as Dracula if the theme doesn't apply to your applications automatically...

These were my personal Configuration Files With Dracula Themed GTK Setup.... 

> [!Tip]
>---------------
> *Try to have your packages up to date to prevent any breakages..*
>


# *Keybindings*

|   Application   |                Keybindings              |
|---------------- | ----------------------------------------|
|    Alacritty    |   <kbd>Super</kbd> + <kbd>Return</kbd>  | 
|      Rofi       |   <kbd>Super</kbd> + <kbd>A</kbd>       |
|   qutebrowser   |   <kbd>Super</kbd> + <kbd>Q</kbd>       |
|      Brave      |   <kbd>Super</kbd> + <kbd>B</kbd>       |
|     Nautilus    |   <kbd>Super</kbd> + <kbd>E</kbd>       | 
| Waybar Toggling |   <kbd>Super</kbd> + <kbd>P</kbd>       |

|                 Keys                | Action      |
| ----------------------------------- | ----------- |
| <kbd>SUPER</kbd> + <kbd>Left</kbd>  | focus left  |
| <kbd>SUPER</kbd> + <kbd>Right</kbd> | focus right |
| <kbd>SUPER</kbd> + <kbd>Up</kbd>    | focus up    |
| <kbd>SUPER</kbd> + <kbd>Down</kbd>  | focus down  |

=> For More Keybindings Refer ~/.config/hypr/keybindings.conf


# *Swww*


> [!Tip]
>-------------------------
> *Use Waypaper to change Wallpapers if u have a little good hardware because in a little old hardware the waypaper loads wallpapers a little slowly, just give it a try ...*

--> *To Install waypaper in arch linux* , 

     paru -S waypaper --> if u have paru as aur package manager

# *Pywal16*

> [!IMPORTANT]
>------------------------
> *Using waypaper if u had selected the wallpaper then pywal16 colors would be set perfectly for alacritty*
>
> *pywal16 will just pick colors from the x.png and sets colors into the terminal as the .bashrc has a line cat ~/.cache/wal/sequences which does caches the pywal16 colors in terminal*
>
> *pywal16 as the name signifies it uses 16 color palettes to generate colors but the python-pywal package generates colors with only 8 color palletes and is dead as the maintainer archives the repo as read-only and is not maintained for more than 1 year,so i switched to pywal16 package at aur which is well maintained..*

# *Vim Based Browsers Aren't good ?*

> [!Tip]
>------------------------
> Seriously qutebrowser is an underrated vim based browser for more than 11 years, but still due to to lack of support the browser faces some issues.
>
> Coming to the point if u are a programmer or developer or anyone who is using vim or nvim you can use this browser.
>
> Note this browser has no support for extension suppport till now (i.e qutebrowser is not for extension users).
> 
> This browser is recommended if u are only interested in a vim based browser.
> 
> Youtube videos rendering is also an issues but i think it is a qtwebengine issue (Not sure) although u can fix it by using url hints and play the youtube videos in mpv (Included in my dotfiles..).
> 
> Just give it a try or u can try other vim based browers like vimb or just install brave and use the vimium-ff extension.

# *Inspirations*

The following projects have inspired me:

 https://github.com/JaKooLit/Hyprland-Dots

 https://github.com/prasanthrangan/hyprdots 

 https://github.com/mylinuxforwork/dotfiles

*Man all of your dots are really amazing and you guys have helped me to learn a lot and thanks for your sincere efforts..*

