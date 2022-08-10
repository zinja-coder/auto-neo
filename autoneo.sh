#!/usr/bin/env bash

#created by zinjacoder
#github github.com/jafar-pathan
#please let me know about improvements and suggestion i will appreciate it

#created array of allay available asciis of distros
myarray=("AIX" "Alpine" "AlterLinux" "Anarchy" "Android" "Antergos" "antiX" "AOSC OS" "AOSC OS/Retro" "Apricity" "ArcoLinux" "ArchBox" "ARCHlabs" "ArchStrike" "XFerience" "ArchMerge" "Arch" "Artix" "Arya" "Bedrock" "Bitrig" "BlackArch" "BLAG" "BlankOn" "BlueLight" "bonsai" "BSD" "BunsenLabs" "Calculate" "Carbs" "CentOS" "Chakra" "ChaletOS" "Chapeau" "Chrom" "Cleanjaro" "ClearOS" "Clear_Linux" "Clover" "Condres" "Container_Linux" "CRUX" "Cucumber" "Debian" "Deepin" "DesaOS" "Devuan" "DracOS" "DarkOs" "DragonFly" "Drauger" "Elementary" "EndeavourOS" "Endless" "EuroLinux" "Exherbo" "Fedora" "Feren" "FreeBSD" "FreeMiNT" "Frugalware" "Funtoo" "GalliumOS" "Garuda" "Gentoo" "Pentoo" "gNewSense" "GNOME" "GNU" "GoboLinux" "Grombyang" "Guix" "Haiku" "Huayra" "Hyperbola" "janus" "Kali" "KaOS" "KDE_neon" "Kibojoe" "Kogaion" "Korora" "KSLinux" "Kubuntu" "LEDE" "LFS" "Linux_Lite" "LMDE" "Lubuntu" "Lunar" "macos" "Mageia" "MagpieOS" "Mandriva" "Manjaro" "Maui" "Mer" "Minix" "LinuxMint" "MX_Linux" "Namib" "Neptune" "NetBSD" "Netrunner" "Nitrux" "NixOS" "Nurunner" "NuTyX" "OBRevenge" "OpenBSD" "openEuler" "OpenIndiana" "openmamba" "OpenMandriva" "OpenStage" "OpenWrt" "osmc" "Oracle" "OS Elbrus" "PacBSD" "Parabola" "Pardus" "Parrot" "Parsix" "TrueOS" "PCLinuxOS" "Peppermint" "popos" "Porteus" "PostMarketOS" "Proxmox" "Puppy" "PureOS" "Qubes" "Radix" "Raspbian" "Reborn_OS" "Redstar" "Redcore" "Redhat" "Refracted_Devuan" "Regata" "Rosa" "sabotage" "Sabayon" "Sailfish" "SalentOS" "Scientific" "Septor" "SereneLinux" "SharkLinux" "Siduction" "Slackware" "SliTaz" "SmartOS" "Solus" "Source_Mage", "Sparky" "Star" "SteamOS" "SunOS" "openSUSE_Leap" "openSUSE_Tumbleweed" "openSUSE" "SwagArch" "Tails" "Trisquel" "Ubuntu-Budgie" "Ubuntu-GNOME" "Ubuntu-MATE" "Ubuntu-Studio" "Ubuntu" "Venom" "Void" "Obarun" "windows10" "Windows7" "Xubuntu" "Zorin" "IRIX")


#creating bold variable to make name of distro bold
bold=$(tput bold)

#iterating through each distro 
for distro in ${myarray[@]}; do
	
	#clear screen at each iteration
	clear
	
	#checking for animate option
	case $1 in
		-a|--animate)
			neofetch -L --ascii_distro $distro | pv -qL 150
			;;
		*)
			neofetch -L --ascii_distro $distro
			;;
	esac
	
	#printing name of current distro
	echo "${bold} **$distro**     **$distro**     **$distro**     **$distro** "
	
	#stopping bash for 2 seconds
	sleep 2
	
done

#finished
