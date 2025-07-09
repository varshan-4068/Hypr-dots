#!/usr/bin/env bash

dependencies=(

	neovim #must
	curl #must
	wget #must
	eza #must
	less #must
	collision #if u want to check hashes or like checksum of the files like .iso or .zip
	video-trimmer #if u want to trim a video
	gum #must
	cameractrls #must for taking good quality pictures
	gnome-software #must if u want to install flatpaks with gui's..
	pdfslicer #if u want to delete or merge some pages of a pdf..
	decoder #if u want to generate or scan a QRcode 
	morphosis #if u want to convert some format like .docx to pdf u can use this 
	base-devel #must
	gnome-disk-utility #optional
	gtk-engine-murrine #must for tokyonight colorscheme to work
	capitaine-cursors #must
	shellcheck #must for nvim bash linter
	nautilus #file manager
	hyprpaper #must
	bat #must
	flatpak #optional
	gcc #must
	make #must
	alacritty #must
	tmux #optional
	python #must
	starship #must
	npm #must
	go #must
	fzf #fuzzy finding tool
	polkit-gnome #needed for good ui while asking sudo permissions like for mounting the disk.. #must
	dysk #optional
	axel #downloading files via terminal usinng the link
	ncdu #must
	yazi #must
	rofi-wayland #must
	ufw #firewall
	os-prober #needed for dual booting with some other os
	qutebrowser #vim browser
	pavucontrol #sound
	ttf-font-awesome  #must
	ttf-meslo-nerd #must for kitty
	python-adblock #must
	python-pynvim #must
	cheese #camera optional
	pipewire #must
	pipewire-alsa #must
	pipewire-jack #must
	pipewire-pulse #must
	polkit-kde-agent #must

	#packages below are needed for virt-manager to work..

	qemu-full 
	virt-manager 
	qemu-system-x86 
	qemu-system-x86-firmware 
	qemu-img
	bridge-utils 
	dnsmasq
	ovmf
	swtpm
	spice 
	sof-firmware
	libgovirt
	libvirt

	#end of packages needed for virt-manager to work..
	trash-cli #useful tool must for removing files via terminal i had aliased it with rm command 
	fastfetch #optional
	yt-dlp #needed for playing youtube videos in mpv via qutebrowser
	ttf-jetbrains-mono
	ttf-fira-code #needed for waybar fonts
	ttf-jetbrains-mono-nerd
	net-tools
	zoxide #must
	tldr #optinal
	timeshift #must
	thermald #must
	mpv #must
	blueman #bluetooth
	swappy #image viewer
	pamixer #sound
	network-manager-applet #must
	nwg-displays #must for checking or adjusting resolutions via gui
	nwg-look #must
	swww #must
	grub-btrfs #timeshift snapshots in grub menu so must
	bash-completion #must
	ntp #must
	libreoffice-fresh #optional
	brightnessctl #must
	acpi #must
	imagemagick #must
	tree #must
	qalculate-gtk #optional
	gvfs-mtp #must
	unzip #must
	gimp #optional
	bluez #must
	bluez-utils #must
	transmission-gtk #optional
	filelight #optional
	impression #optional
	waybar #must
	aquamarine #must
	hyprutils #must
	hyprcursor #must
	hyprwayland-scanner #must
	hyprgraphics #must
	hyprlang #must
	hyprland-protocols #must
	hyprland-qt-support #must
	hyprland-qtutils #must
	hyprland #must
	hyprlock #must
	xdg-desktop-portal-hyprland #must
	xdg-utils #must
	xdotool #must
	xorg-server #must
	xorg-xinit #must
	xorg-xhost #must

	# u can avoid the optional denoted packages but the must denoted packages should be installed or else breakages may occur.
)


while true;do

gum confirm " :: Do u wanna install the dependencies? (y/n): " && package="yes" || package="no"

case "$package" in

	[yes]*)
		echo " :: Installing dependencies ::"

		sudo pacman -S "${dependencies[@]}" --needed --noconfirm
	  echo 
		echo
		break
		;;
	[no]*)

		break
		;;

	*)
		echo 
		echo
		echo " :: Please answer yes(y) or no(n) ::"
		echo 
		echo
		;;

esac

done

