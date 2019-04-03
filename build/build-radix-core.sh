#!/bin/bash
# Raul Dipeas Repo
echo 'deb https://radix.ws/core-repo cosmic main' > /etc/apt/sources.list.d/rauldipeas.list
echo 'deb https://master.dl.sourceforge.net/project/radix-core/large-repo cosmic main' >> /etc/apt/sources.list.d/rauldipeas.list
wget -qO- https://radix.ws/core-repo/rauldipeas.key | apt-key add -
echo '
Package: qt5-style-kvantum
Pin: origin radix.ws
Pin-Priority: 600

Package: qt5-style-kvantum-l10n
Pin: origin radix.ws
Pin-Priority: 600

Package: qt5-style-kvantum-themes
Pin: origin radix.ws
Pin-Priority: 600' > /etc/apt/preferences.d/kvantum-pin-600
add-apt-repository universe;add-apt-repository multiverse;apt update
apt install -y apt-transport-https build-essential curl gdebi-core libglibmm-2.4-1v5 ruby-dev software-properties-common
# KXStudio
wget -c https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_9.5.1~kxstudio3_all.deb
wget -c https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb
gdebi -n kxstudio-repos_9.5.1~kxstudio3_all.deb
gdebi -n kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb
#find / -type f -name "*.deb" -exec dpkg -i {} \;
apt update;apt dist-upgrade -y;rm -rf kxstudio*

# XanMod (Converter em Deb)
wget -qO- https://dl.xanmod.org/gpg.key | apt-key add -
echo 'deb http://deb.xanmod.org releases main' > /etc/apt/sources.list.d/xanmod-kernel.list
# WINE (Converter em Deb)
wget -qO- https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Ubuntu_18.10_standard/Release.key | apt-key add -
echo 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Ubuntu_18.10_standard ./' > /etc/apt/sources.list.d/winehq.list
# PlayOnLinux (Converter em Deb)
wget -qO- http://deb.playonlinux.com/public.gpg | apt-key add -
wget http://deb.playonlinux.com/playonlinux_cosmic.list -O /etc/apt/sources.list.d/playonlinux.list
# VirtualBox (Converter em Deb)
wget -qO- https://www.virtualbox.org/download/oracle_vbox_2016.asc | apt-key add -
#echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian `lsb_release -s -c` contrib" > /etc/apt/sources.list.d/oracle-virtualbox.list
echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian cosmic contrib" > /etc/apt/sources.list.d/oracle-virtualbox.list
# Skype (Converter em Deb)
wget -qO- https://repo.skype.com/data/SKYPE-GPG-KEY | apt-key add -
echo 'deb https://repo.skype.com/deb stable main' > /etc/apt/sources.list.d/skype-stable.list
# Spotify (Converter em Deb)
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo 'deb http://repository.spotify.com stable non-free' > /etc/apt/sources.list.d/spotify.list
# FreeOffice (Converter em Deb)
wget -qO- https://shop.softmaker.com/repo/linux-repo-public.key | apt-key add -
echo 'deb https://shop.softmaker.com/repo/apt wheezy non-free' > /etc/apt/sources.list.d/softmaker-freeoffice.list
# Etcher (Converter em Deb)
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
echo 'deb https://deb.etcher.io stable etcher' > /etc/apt/sources.list.d/etcher.list
# Code (Converter em Deb)
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/;rm microsoft.gpg
echo 'deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main' > /etc/apt/sources.list.d/vscode.list
# Chrome (Converter em Deb)
wget -qO- https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google-chrome.list
# Vivald (Converter em Deb)
wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | apt-key add -
echo 'deb http://repo.vivaldi.com/stable/deb/ stable main' > /etc/apt/sources.list.d/vivaldi.list
# Opera (Converter em Deb)
wget -qO- https://deb.opera.com/archive.key | apt-key add -
echo 'deb https://deb.opera.com/opera-stable/ stable non-free' > /etc/apt/sources.list.d/opera.list
# Brave (Converter em Deb)
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key add -
echo 'deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ bionic main' > /etc/apt/sources.list.d/brave-browser-release-`lsb_release -sc`.list
# Compiz Reloaded (Converter em Deb)
wget -qO- http://download.opensuse.org/repositories/home:/stevenpusser:/compiz-reloaded-rebuilds/Debian_Testing/Release.key | apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser:/compiz-reloaded-rebuilds/xUbuntu_17.10/ /' > /etc/apt/sources.list.d/compiz-reloaded.list
echo '
Package: emerald
Pin: origin download.opensuse.org
Pin-Priority: 600

Package: fusion-icon
Pin: origin download.opensuse.org
Pin-Priority: 600' > /etc/apt/preferences.d/compiz-reloaded-pin-600
# Sublime Text (Converter em Deb)
wget -qO- https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo 'deb https://download.sublimetext.com/ apt/stable/' > /etc/apt/sources.list.d/sublime-text.list
# TimeShift (Converter em Deb)
add-apt-repository -y ppa:teejee2008/ppa
# NVIDIA (Converter em Deb)
add-apt-repository -y ppa:graphics-drivers/ppa
# Liquorix (Converter em Deb)
add-apt-repository -y ppa:damentz/liquorix
# Materia (Converter em Deb)
add-apt-repository -y -n ppa:dyatlov-igor/materia-theme
sudo sed -i 's/disco/cosmic/g' /etc/apt/sources.list.d/*materia*;sudo apt update
# Y PPA Manager (Converter em Deb)
add-apt-repository -y ppa:webupd8team/y-ppa-manager
# Papirus (Dev) (Converter em Deb)
add-apt-repository -y -n ppa:papirus/papirus-dev
add-apt-repository -y -n ppa:papirus/papirus
sudo sed -i 's/disco/cosmic/g' /etc/apt/sources.list.d/*papirus*;sudo apt update
# Hardcode-Tray (Converter em Deb)
add-apt-repository -y -n ppa:andreas-angerer89/sni-qt-patched
sudo sed -i 's/disco/cosmic/g' /etc/apt/sources.list.d/*sni-qt*;sudo apt update
# Android Studio (Converter em Deb)
apt-add-repository -y ppa:maarten-fonville/android-studio
# Remoção de pacotes desnecessários
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
 yelp*
# Instalação do repositório e das customizações do RaDiX
apt install -y browser-selector compiz-reloaded materia-gtk-theme rauldipeas-repo y-ppa-manager
apt install -y --no-install-recommends ubuntu-software
# Remoção de pacotes desnecessários
apt autoremove --purge -y build-essential fonts-lato meterbridge ruby-dev yelp* libyelp* xfdashboard-plugins
dpkg -l | grep -E linux-image-.*-generic | cut -d ' ' -f3 | grep -v `dpkg -l | grep -E linux-image-.*-generic | cut -d ' ' -f3 | tail -1` | grep -v `uname -r` | xargs apt autoremove --purge -y
## App Grid
#sed -i 's/Exec=\/usr\/share\/appgrid\/appgrid.py %u/Exec=sh -c "env GTK_THEME=Arc \/usr\/share\/appgrid\/appgrid.py %u"/g' /usr/share/applications/appgrid.desktop
# LightDM
echo '[SeatDefaults]
autologin-user=radix
user-session=xfce
greeter-session=lightdm-webkit-greeter' > /etc/lightdm/lightdm.conf
# Natural Scrolling (Converter em Deb)
echo '#!/bin/bash
synclient VertScrollDelta=-58
synclient HorizScrollDelta=-58' > /usr/local/bin/naturalscrolling
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
Icon=mouse' > /etc/xdg/autostart/NaturalScrolling.desktop
# Gestos do touchpad (Converter em Deb)
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
./libinput-gestures-setup install;cd ..
rm -rf libinput-gestures*
cp -v /usr/share/applications/libinput-gestures.desktop /etc/xdg/autostart/
echo '
OnlyShowIn=XFCE;' >> /etc/xdg/autostart/libinput-gestures.desktop
echo '
gesture swipe left 3 xdotool key alt+Left
gesture swipe right 3 xdotool key alt+Right
gesture swipe up 4 xfdashboard -t' >> /etc/libinput-gestures.conf
git clone https://gitlab.com/cunidev/gestures
cd gestures; python3 setup.py install;cd ..;rm -rf gestures*
sed -i 's/Icon=org.cunidev.gestures/Icon=libinput-gestures/g' /usr/share/applications/org.cunidev.gestures.desktop
sed -i 's/Name=Gestures/Name=Gestures\nName[pt_BR]=Gestos/g' /usr/share/applications/org.cunidev.gestures.desktop
echo 'StartupWMClass=Gestures' >> /usr/share/applications/org.cunidev.gestures.desktop
# Tecla Super para abrir o Whisker (Converter em Deb)
echo '[Desktop Entry]
Exec=xcape -e "Super_L=Control_L|Escape"
Name=Xcape
Type=Application
OnlyShowIn=XFCE;' > /etc/xdg/autostart/xcape.desktop
# Bash-It/Undistract-Me (Converter em Deb)
echo "[Desktop Entry]
Type=Application
Name=Bash It
Exec=bash /opt/radix-desktop/bash_it.sh
Icon=xterm
StartupNotify=true" > /etc/xdg/autostart/bash_it.desktop
echo "#!/bin/bash
bash ~/.bash_it/install.sh --silent
sed -i 's/bobby/powerline/g' ~/.bashrc
echo '
# Undistract-Me
. /usr/share/undistract-me/long-running.bash
notify_when_long_running_commands_finish_install' >> ~/.bashrc
mkdir ~/.config/autostart
echo 'Hidden=true' > ~/.config/autostart/bash_it.desktop" > /opt/radix-desktop/bash_it.sh
sed -i 's/took/levou/g' /usr/share/undistract-me/long-running.bash
sed -i 's/dialog-information/xterm/g' /usr/share/undistract-me/long-running.bash
sed -i 's/Long\ command\ completed/Comando\ concluído\!/g' /usr/share/undistract-me/long-running.bash