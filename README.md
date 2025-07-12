
# *Hypr-dots*

![](../Pictures/system.png)

To Install my Dotfiles,etc Run the commands below....

    git clone https://github.com/varshan-4068/Hypr-dots.git
    sudo pacman -S gum timeshift grub-btrfs
    cd Hypr-dots/
    chmod +x install.sh
    ./install.sh

> [!Warning]
>
> *These Dotfiles were Tested on Arch Linux Only, Try it at other distros at your own risk..*
>
> *After Installing my script reboot your system for the effective Experience of the configs..*
> 
> *If u have a scaling factor greater than 1.0 then u might have issues in wayland with fractional scaling so the solution is refer ~/config/hypr/monitors.conf to get an idea*

And using nwg-look select your icon and gtk theme...

These were my Configuration Files With Graphite Themed GTK Setup.... 

![graphite](https://github.com/user-attachments/assets/2c703046-9121-4997-9fc8-a55f8c4972a0)

> [!Tip]
>
> *Try to have your packages up to date to prevent any breakages..*
>


# *Keybindings*

|   Application   |                Keybindings              |
|---------------- | ----------------------------------------|
|    Alacritty    |   <kbd>SUPER</kbd> + <kbd>RETURN</kbd>  | 
|      Rofi       |   <kbd>SUPER</kbd> + <kbd>A</kbd>       |
|   qutebrowser   |   <kbd>SUPER</kbd> + <kbd>Q</kbd>       |
|    Nautilus    |   <kbd>SUPER</kbd> + <kbd>E</kbd>       | 
| Waybar Toggling |   <kbd>SUPER</kbd> + <kbd>P</kbd>       |
|     Waypaper    |   <kbd>SUPER</kbd> + <kbd>W</kbd>       |
| yazi(alacritty) |   <kbd>SUPER</kbd> + <kbd>Y</kbd>       | 
|     kitty       |   <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>RETURN</kbd> |
|     Neovim      |   <kbd>SUPER</kbd> + <kbd>N</kbd>       |
|    Librewolf    |   <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>L</kbd> | 
|   yazi(kitty)   |   <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>Y</kbd> |


|                 Keys                | Action      |
| ----------------------------------- | ----------- |
| <kbd>SUPER</kbd> + <kbd>Left</kbd>  | focus left  |
| <kbd>SUPER</kbd> + <kbd>Right</kbd> | focus right |
| <kbd>SUPER</kbd> + <kbd>Up</kbd>    | focus up    |
| <kbd>SUPER</kbd> + <kbd>Down</kbd>  | focus down  |
| <kbd>SUPER</kbd> + <kbd>J</kbd>     | ToggleSplit | 
| <kbd>SUPER</kbd> + <kbd>T</kbd>     | Floating to resize Window | 
| Screenshot a region | <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> | 
| Screenshot whole screen | <kbd>PRINTSCREEN</kbd> |
| Screenshot a window | <kbd>SUPER</kbd> + <kbd>PRINTSCREEN</kbd> |

=> For More Keybindings Refer ~/.config/hypr/keybindings.conf

# *Swww*

> [!Tip]
>
> *Use Waypaper to change Wallpapers if u have a little good hardware because in a little old hardware the waypaper loads wallpapers a little slowly, just give it a try ...*
>

![waypaper](https://github.com/user-attachments/assets/808bc8f5-04af-4cd1-833b-ed42e209ecb0)

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

