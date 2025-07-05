
# *Hypr-dots*

![system](https://github.com/user-attachments/assets/eec7025a-fce6-474c-9f09-42bb7ec35aef)

This Repo is an Stable release repo of my dotfiles for Rolling release checkout [My gitlab repo](https://gitlab.com/varshan-4068/Hyprland-Arch)

To Install my Dotfiles,etc Run the commands below....

    git clone https://github.com/varshan-4068/Hypr-dots.git
    sudo pacman -S gum
    cd Hypr-dots/
    chmod +x install.sh
    ./install.sh

> [!Warning]
>
> *These Dotfiles were Tested on Arch Linux Only, Try it at other distros at your own risk..*
>
> *After Installing my script reboot your system for the effective Experience of the configs..*
> 
> *These Dotfiles were made for 1980 x 1080 Resolutions only so to use with other Resolutions configure the dotfiles accordingly*
> 
> *If u have a scaling factor greater than 1.0 then u might have issues in wayland with fractional scaling so the solution is refer ~/config/hypr/monitors.conf to get an idea*

And using nwg-look select your icon and gtk theme as Tokyonight or Graphite ...

These were my Configuration Files With Tokyonight & Graphite Themed GTK Setup.... 

![tokyonight-dark](https://github.com/user-attachments/assets/9eb887ff-269a-4bbf-9f19-9d33829f4d1d)

> [!Tip]
>
> *Try to have your packages up to date to prevent any breakages..*
>


# *Keybindings*

|   Application   |                Keybindings              |
|---------------- | ----------------------------------------|
|    Alacritty    |   <kbd>Super</kbd> + <kbd>Return</kbd>  | 
|      Rofi       |   <kbd>Super</kbd> + <kbd>A</kbd>       |
|   qutebrowser   |   <kbd>Super</kbd> + <kbd>Q</kbd>       |
|    Nautilus    |   <kbd>Super</kbd> + <kbd>E</kbd>       | 
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
>
> *Use Waypaper to change Wallpapers if u have a little good hardware because in a little old hardware the waypaper loads wallpapers a little slowly, just give it a try ...*
>

![waypapers](https://github.com/user-attachments/assets/5a37b3dd-3632-4bc4-aa1a-fc93748837bd)

--> *To Install waypaper in arch linux* , 

     paru -S waypaper --> if u have paru as aur package manager

# *Pywal16*

> [!IMPORTANT]
>
> *Using waypaper if u had selected the wallpaper then pywal16 colors would be set perfectly for alacritty and waybar*
>
> *pywal16 will just pick colors from the x.png and sets colors into the terminal as the .bashrc has a line cat ~/.cache/wal/sequences which does caches the pywal16 colors in terminal*
>
> *pywal16 as the name signifies it uses 16 color palettes to generate colors but the python-pywal package generates colors with only 8 color palletes and is dead as the maintainer archives the repo as read-only and is not maintained for more than 1 year,so i switched to pywal16 package at aur which is well maintained..*


# *Inspirations*

The following projects have inspired me:

 https://github.com/JaKooLit/Hyprland-Dots

 https://github.com/prasanthrangan/hyprdots 

 https://github.com/mylinuxforwork/dotfiles

*Man all of your dots are really amazing and you guys have helped me to learn a lot and thanks for your sincere efforts..*

