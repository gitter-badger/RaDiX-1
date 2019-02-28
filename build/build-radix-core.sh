#!/bin/bash
# RaDiX - Core baseado no Xubuntu Core

echo 'deb http://deb.xanmod.org releases main' | tee /etc/apt/sources.list.d/xanmod-kernel.list && wget -qO - https://dl.xanmod.org/gpg.key | apt-key add -

wget -nc https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Ubuntu_18.10_standard/Release.key;apt-key add Release.key;rm -rf Release.key
echo 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Ubuntu_18.10_standard ./' | tee /etc/apt/sources.list.d/winehq.list

wget -q "http://deb.playonlinux.com/public.gpg" -O- | apt-key add -
wget http://deb.playonlinux.com/playonlinux_cosmic.list -O /etc/apt/sources.list.d/playonlinux.list

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian `lsb_release -s -c` contrib" | tee /etc/apt/sources.list.d/oracle-virtualbox.list

wget -q -O - https://repo.skype.com/data/SKYPE-GPG-KEY | apt-key add -
echo "deb https://repo.skype.com/deb stable main" | tee /etc/apt/sources.list.d/skype-stable.list

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo 'deb http://repository.spotify.com stable non-free' | tee /etc/apt/sources.list.d/spotify.list

wget -c https://shop.softmaker.com/repo/linux-repo-public.key;apt-key add linux-repo-public.key;rm -rf linux-repo-public.key
echo 'deb https://shop.softmaker.com/repo/apt wheezy non-free' | tee /etc/apt/sources.list.d/softmaker-freeoffice.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
echo "deb https://deb.etcher.io stable etcher" | tee /etc/apt/sources.list.d/etcher.list

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/;rm microsoft.gpg
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
#echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ bionic main" | tee /etc/apt/sources.list.d/brave-browser-release-`lsb_release -sc`.list

echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser:/compiz-reloaded-rebuilds/xUbuntu_17.10/ /' | tee /etc/apt/sources.list.d/compiz-reloaded.list
wget -qO- http://download.opensuse.org/repositories/home:/stevenpusser:/compiz-reloaded-rebuilds/Debian_Testing/Release.key | apt-key add -

add-apt-repository -y ppa:teejee2008/ppa

add-apt-repository -y ppa:graphics-drivers/ppa

add-apt-repository -y ppa:damentz/liquorix

add-apt-repository -y ppa:dyatlov-igor/materia-theme

add-apt-repository -y ppa:webupd8team/y-ppa-manager

add-apt-repository -y ppa:papirus/papirus-dev

add-apt-repository -y ppa:andreas-angerer89/sni-qt-patched

apt install -y curl deborphan gdebi-core git tilix

apt autoremove --purge -y\
 apport*\
 at-spi2-core\
 elementary-*\
 gnome-accessibility-themes\
 gnome-themes-standard\
 greybird-gtk-theme\
 gucharmap*\
 humanity-icon-theme\
 imagemagick\
 libgucharmap*\
 libyelp*\
 light-locker\
 lightdm-gtk-greeter\
 numix-gtk-theme\
 plymouth-theme-*\
 spice-vdagent\
 ubuntu-advantage-tools\
 ubuntu-minimal\
 ubuntu-release-upgrader-core\
 ubuntu-standard\
 xfce4-appfinder\
 xfce4-indicator-plugin\
 xfce4-power-manager-plugins\
 xfce4-screenshooter\
 xfce4-statusnotifier-plugin\
 xfce4-terminal\
 xubuntu*\
 yelp*\

apt install -y\
 alacarte\
 arc-theme\
 bat\
 brave-browser\
 breeze-cursor-theme\
 catfish\
 color-ls\
 compiz-reloaded\
 diodon\
 fish\
 fonts-powerline\
 galternatives\
 gnome-disk-utility\
 gnome-system-tools\
 gnome-usage\
 gtk3-nocsd\
 gufw\
 gvfs-backends\
 gvfs-bin\
 hardinfo\
 i3lock-fancy\
 kazam\
 language-selector-gnome\
 libinput-tools\
 libnss-winbind\
 materia-gtk-theme\
 mediainfo-gui\
 mesa-utils\
 mugshot\
 neofetch\
 p7zip-full\
 p7zip-rar\
 papirus-icon-theme\
 plank\
 pulseaudio-module-jack\
 python-gobject\
 python3-distutils\
 python3-setuptools\
 qt4-qtconfig\
 qt5-style-kvantum\
 qt5-style-plugin-gtk2\
 qt5ct\
 rar\
 samba\
 software-properties-gtk\
 synaptic\
 thunar-archive-plugin\
 undistract-me\
 unrar\
 winbind\
 wm-switcher\
 xarchiver\
 xcape\
 xdotool\
 xfce4-appmenu-plugin\
 xfce4-systemload-plugin\
 xfce4-netload-plugin\
 xfdashboard-radix-theme\
 xscreensaver\
 xscreensaver-gl*\
 y-ppa-manager\
 zram-config

wget -c http://ppa.launchpad.net/appgrid/stable/ubuntu/pool/main/a/appgrid/appgrid_0.298_all.deb;gdebi -n appgrid*.deb;rm -rf appgrid*

wget -c -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt update;apt -y install sublime-text

apt install -y alsa-firmware cadence;apt autoremove --purge -y build-essential fonts-lato meterbridge ruby-dev yelp* libyelp* xfdashboard-plugins

echo NoDisplay=true | tee -a /usr/share/applications/emerald* /usr/share/applications/fusion-icon*

echo '#!/bin/bash
synclient VertScrollDelta=-58
synclient HorizScrollDelta=-58' | tee /usr/local/bin/naturalscrolling

chmod +x /usr/local/bin/naturalscrolling

echo '[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=NaturalScrolling
Exec=naturalscrolling
OnlyShowIn=XFCE;
StartupNotify=false
Terminal=false
Hidden=false
Icon=mouse' | tee /etc/xdg/autostart/NaturalScrolling.desktop

git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
./libinput-gestures-setup install;cd ..
rm -rf libinput-gestures*

cp -v /usr/share/applications/libinput-gestures.desktop /etc/xdg/autostart/

echo '
OnlyShowIn=XFCE;' | tee -a /etc/xdg/autostart/libinput-gestures.desktop

echo '
gesture swipe left 3 xdotool key alt+Left
gesture swipe right 3 xdotool key alt+Right
gesture swipe up 4 xfdashboard -t' | tee -a /etc/libinput-gestures.conf

git clone https://gitlab.com/cunidev/gestures
cd gestures; python3 setup.py install;cd ..;rm -rf gestures*
sed -i 's/Icon=org.cunidev.gestures/Icon=libinput-gestures/g' /usr/share/applications/org.cunidev.gestures.desktop
sed -i 's/Name=Gestures/Name=Gestures\nName[pt_BR]=Gestos/g' /usr/share/applications/org.cunidev.gestures.desktop
echo 'StartupWMClass=Gestures' | tee -a /usr/share/applications/org.cunidev.gestures.desktop

cp /usr/share/applications/plank.desktop /etc/xdg/autostart;echo 'OnlyShowIn=XFCE;'|tee -a /etc/xdg/autostart/plank.desktop

echo '[Desktop Entry]
Name=Plank Preferences
Name[pt_BR]=Configurações do Plank
Categories=Settings;
Type=Application
Exec=plank --preferences
Icon=plank
Terminal=false
NoDisplay=false' | tee /usr/share/applications/plank-preferences.desktop

update-alternatives --set x-terminal-emulator /usr/bin/tilix.wrapper

update-alternatives --set x-cursor-theme /etc/X11/cursors/Breeze_Snow.theme

cp /usr/share/applications/Thunar-folder-handler.desktop /usr/share/applications/Thunar-plank-trash.desktop
sed -i 's/Exec=thunar %F/Exec=thunar %u/g' /usr/share/applications/Thunar-plank-trash.desktop
echo 'NoDisplay=true' | tee -a /usr/share/applications/Thunar-plank-trash.desktop 
echo 'x-scheme-handler/trash=Thunar-plank-trash.desktop;' | tee -a /usr/share/applications/mimeinfo.cache

sed -i 's/Icon=\/usr\/share\/hardinfo\/pixmaps\/logo.png/Icon=hardinfo/g' /usr/share/applications/hardinfo.desktop

echo '[Desktop Entry]
Exec=xcape -e "Super_L=Control_L|Escape"
Name=Xcape
Type=Application
OnlyShowIn=XFCE;' | tee /etc/xdg/autostart/xcape.desktop

sed -i 's/took/levou/g' /usr/share/undistract-me/long-running.bash
sed -i 's/dialog-information/xterm/g' /usr/share/undistract-me/long-running.bash
sed -i 's/Long\ command\ completed/Comando\ concluído\!/g' /usr/share/undistract-me/long-running.bash

echo "[Desktop Entry]
Type=Application
Name=Bash It
Exec=bash /opt/radix-desktop/bash_it.sh
Icon=xterm
StartupNotify=true1" | tee /etc/xdg/autostart/bash_it.desktop

echo "#!/bin/bash
bash ~/.bash_it/install.sh --silent
sed -i 's/bobby/powerline/g' ~/.bashrc
echo '
# Undistract-Me
. /usr/share/undistract-me/long-running.bash
notify_when_long_running_commands_finish_install' | tee -a ~/.bashrc
mkdir ~/.config/autostart
echo 'Hidden=true' | tee ~/.config/autostart/bash_it.desktop" | tee /opt/radix-desktop/bash_it.sh

#echo '#!/bin/bash
#notify-send -t 800 -i flameshot A\ captura\ de\ tela\ iniciará\ em\ 5\ segundos...;sleep 1
#notify-send -t 800 -i flameshot A\ captura\ de\ tela\ iniciará\ em\ 4\ segundos...;sleep 1
#notify-send -t 800 -i flameshot A\ captura\ de\ tela\ iniciará\ em\ 3\ segundos...;sleep 1
#notify-send -t 800 -i flameshot A\ captura\ de\ tela\ iniciará\ em\ 2\ segundos...;sleep 1
#notify-send -t 800 -i flameshot A\ captura\ de\ tela\ iniciará\ em\ 1\ segundo...;sleep 1.8
#flameshot gui' | tee /usr/local/bin/flameshot_delay;chmod +x /usr/local/bin/flameshot_delay

echo 'options nvidia-drm modeset=1' | tee /etc/modprobe.d/nvidia-drm-nomodeset.conf

mkdir -p /etc/X11/xorg.conf.d /opt/intel-sna

echo 'Section "Device"
Identifier "Intel Graphics"
Driver "Intel"
Option "AccelMethod" "sna"
Option "TearFree" "true"
EndSection' | tee /opt/intel-sna/20-intel.conf

echo '#!/bin/bash
gksudo cp /opt/intel-sna/20-intel.conf /etc/X11/xorg.conf.d/20-intel.conf
notify-send -i hardinfo "Intel SNA ativo, por favor reinicie a sessão."' | tee /usr/local/bin/intel-sna;chmod +x /usr/local/bin/intel-sna

sed -i 's/\ dns/\ wins\ dns\ mdns4/g' /etc/nsswitch.conf
sed -i 's/\#\ \ \ wins\ support\ \=\ no/\ \ \ wins\ support\ \=\ yes/g' /etc/samba/smb.conf
sed -i 's/workgroup = WORKGROUP/workgroup = WORKGROUP\n   client max protocol = NT1/g' /etc/samba/smb.conf

sed -i 's/#EXTRA_GROUPS/EXTRA_GROUPS/g' /etc/adduser.conf
sed -i 's/plugdev users/plugdev users input/g' /etc/adduser.conf
sed -i 's/#ADD_EXTRA_GROUPS/ADD_EXTRA_GROUPS/g' /etc/adduser.conf

wget -c https://github.com/rauldipeas/RaDiX/raw/master/wget-files/grub-theme-vimix.tar.xz
tar -Jxf grub-themes-vimix.tar.xz
mkdir -p /boot/grub/themes
cd grub-themes-vimix
bash Install;cd ..;sed -i 's/Booting in %d seconds/Iniciando em %d segundos/g' /boot/grub/themes/Vimix/theme.txt
rm -rf grub-themes-vimix*

mkdir -p /opt/radix-desktop
cp /etc/lsb-release /opt/radix-desktop/
cp /etc/default/grub /opt/radix-desktop/
sed -i 's/Ubuntu\ 18.10/RaDiX\ \-\ Core/g' /opt/radix-desktop/lsb-release
sed -i 's/GRUB_DISTRIBUTOR=`lsb_release\ -i\ -s\ 2>\ \/dev\/null\ ||\ echo\ Debian`/GRUB_DISTRIBUTOR=\"RaDiX\ \-\ Core\"/g' /opt/radix-desktop/grub
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash loglevel=0 logo.nologo vt.global_cursor_default=0/g' /opt/radix-desktop/grub
echo '#!/bin/sh -e
cp /opt/radix-desktop/grub /etc/default/grub
cp /opt/radix-desktop/lsb-release /etc/lsb-release
update-grub
exit 0' | tee /etc/rc.local
chmod +x /etc/rc.local
echo "RESUME=none" | tee /etc/initramfs-tools/conf.d/resume
echo "FRAMEBUFFER=y" | tee /etc/initramfs-tools/conf.d/splash

sed -i 's/us/br/g' /etc/default/keyboard

echo '[SeatDefaults]
autologin-user=radix
user-session=xfce
greeter-session=lightdm-webkit2-greeter' | tee /etc/lightdm/lightdm.conf