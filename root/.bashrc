#!/usr/bin/bash

[[ $- != *i* ]] && return

# eval section
eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init bash)"

# checks window size after wach command
shopt -s checkwinsize

#makes bash to append instead of overwriting the history
shopt -s histappend

# export seciton
export LS_COLORS="di=39:fi=35:ln=37:ex=34"
export EDITOR=nvim
export HISTFILESIZE=10000
export HISTSIZE=1000
export CLICOLOR=1
export FZF_DEFAULT_OPTS=' --height=45% --layout=reverse --border=bold --no-info --highlight-line --no-scrollbar --list-label=" SEARCH FOR ANY FILE " --list-border=sharp --preview-label=" PREVIEW OF THE FILE " --preview-border=sharp ' 

# alias section
alias grep='grep --color=auto'
alias cp='cp -r'
alias mkdir='mkdir -p'
alias ls='eza --color=auto --group-directories-first'
alias nv='fzf --preview "less {}" | xargs -ro nvim'
alias grubmk='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias rl='source .bashrc'
alias pacsyu='sudo pacman -Syu'
alias c='clear'
alias ll='eza -lah --color=auto --group-directories-first'
alias la='eza -a --color=auto --group-directories-first'
alias lt='eza -aT --color=auto --group-directories-first'
alias l.='eza -lah --color=auto --group-directories-first ../'
alias l..='eza -lah --color=auto --group-directories-first ../../'
alias l...='eza -lah --color=auto --group-directories-first ../../../'
alias .='cd ../'
alias ..='cd ../../'
alias ...='cd ../../../'
alias h='history'
alias check='journalctl -xb -p 3'
alias cpu='auto-cpufreq --stats'
alias bar='waybar &'
alias swww='swww-daemon'
alias k='killall'
alias pacs='sudo pacman -S'
alias pacrns='sudo pacman -Rns'
alias rm='trash -v'
alias chx='chmod +x'
alias ff='fastfetch'
alias aur='paru -Slq | fzf --height=100% --algo=v1 --list-border --list-label=" PACKAGE LIST " --reverse --margin=1% --border=sharp --border-label=" PARU AUR PACKAGE MANAGER " --no-info --input-border --input-label=" SEARCH PACKAGES " --multi --preview "paru -Sii {1}" --preview-window=right:75% --preview-label=" PACKAGE INFO " --preview-border=sharp --preview-label-pos=bottom -0 | xargs -ro paru -S --noconfirm --needed'
alias rmaur='paru -Qqe | fzf --height=100% --algo=v1  --list-border --list-label=" INSTALLED PACKAGES " --reverse --margin=1% --border=sharp --border-label=" PARU AUR PACKAGE MANAGER " --no-info --input-border --input-label=" REMOVE PACKAGES " --multi --preview "paru -Qi {1}" --preview-window=right:75% --preview-label=" PACKAGE INFO " --preview-border=sharp --preview-label-pos=bottom -0 | xargs -ro paru -Rns --noconfirm'
alias ts-gtk='sudo -E timeshift-launcher'
alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f "     
alias ga="git add"
alias gc="git commit -m"
alias gcm="git commit -m 'Updates..'"
alias gp="git push"
alias gu="git pull"
alias gf="git fetch"
alias ips="whatsmyip"

# function section
function whatsmyip () {
    # Internal IP Lookup.
    if command -v ip &> /dev/null; then
        echo -n "Internal IP: "
        ip addr show wlan0 | grep "inet " | awk '{print $2}' | cut -d/ -f1
    else
        echo -n "Internal IP: "
        ifconfig wlan0 | grep "inet " | awk '{print $2}'
    fi
}

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# keybind section
if [[ $- == *i* ]]; then   # zoxide
    bind '"\C-f":"zi\n"'
fi

if [[ $- == *i* ]]; then   # nvim with fzf integretion
	  bind '"\C-n":"nv\n"'
fi

# whenever doing cd the ll will be executed too
cd() {
	builtin cd "$@"
	ll
}

# bash_completion section
if [ -f /etc/bash_completion ]; then
		./etc/bash_completion
elif [ -f /usr/share/bash_completion ]; then
		./usr/share/bash_completion
fi


