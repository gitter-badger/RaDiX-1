#!/bin/bash
####################################################################################################################################################################
# Remover pacotes
####################################################################################################################################################################
apt autoremove --purge -y\
 apport*\
 engrampa*\
 evince*\
 firefox*\
 gigolo\
 gnome-accessibility-themes\
 gnome-font-viewer\
 gnome-icon-theme-symbolic\
 gnome-mines\
 gnome-sudoku\
 greybird-gtk-theme\
 gucharmap\
 humanity-icon-theme\
 imagemagick\
 indicator-application\
 indicator-application-gtk2\
 indicator-common\
 indicator-messages\
 language-pack*en*\
 libreoffice*\
 light-locker\
 lightdm-gtk-greeter\
 mate-calc*\
 mousepad\
 numix-gtk-theme\
 onboard*\
 orage\
 parole*\
 pavucontrol\
 pidgin*\
 plymouth-theme-ubuntu*\
 plymouth-theme-xubuntu*\
 ristretto\
 sgt-*\
 simple-scan*\
 thunderbird*\
 transmission*\
 xfburn\
 xfce4-appfinder\
 xfce4-cpugraph-plugin\
 xfce4-dict\
 xfce4-indicator-plugin\
 xfce4-mailwatch-plugin\
 xfce4-notes*\
 xfce4-places-plugin\
 xfce4-pulseaudio-plugin\
 xfce4-quicklauncher-plugin\
 xfce4-screenshooter\
 xfce4-statusnotifier-plugin\
 xfce4-taskmanager\
 xfce4-terminal\
 xfce4-verve-plugin\
 xfce4-weather-plugin\
 xfce4-xkb-plugin\
 xfpanel-switch\
 xfwm4\
 xubuntu-artwork\
 xubuntu-community-wallpapers\
 xubuntu-default-settings\
 xubuntu-docs\
 xubuntu-icon-theme\
 xul-ext*
 yelp*\
 \
 fonts-beng* fonts-deva* fonts-gargi* fonts-gubbi* fonts-gujr* fonts-guru*\
 fonts-horai-umefont* fonts-indic* fonts-kacst* fonts-kalapi*\
 fonts-khmeros-core* fonts-knda* fonts-lao* fonts-lato*\
 fonts-lohit-beng-assamese* fonts-lohit-beng-bengali* fonts-lohit-deva*\
 fonts-lohit-gujr* fonts-lohit-guru* fonts-lohit-knda* fonts-lohit-mlym*\
 fonts-lohit-orya* fonts-lohit-taml* fonts-lohit-taml-classical*\
 fonts-lohit-telu* fonts-mathjax* fonts-mlym* fonts-nakula*\
 fonts-navilu* fonts-noto-cjk* fonts-noto-hinted* fonts-noto-mono*\
 fonts-orya* fonts-sarai* fonts-sil-abyssinica* fonts-sil-padauk* fonts-smc*\
 fonts-smc-anjalioldlipi* fonts-smc-chilanka* fonts-smc-dyuthi*\
 fonts-smc-karumbi* fonts-smc-keraleeyam* fonts-smc-manjari* fonts-smc-meera*\
 fonts-smc-rachana* fonts-smc-raghumalayalamsans* fonts-smc-suruma*\
 fonts-smc-uroob* fonts-symbola* fonts-taml* fonts-telu* fonts-thai-tlwg*\
 fonts-tibetan-machine* fonts-tlwg-garuda* fonts-tlwg-garuda-ttf*\
 fonts-tlwg-kinnari* fonts-tlwg-kinnari-ttf* fonts-tlwg-laksaman*\
 fonts-tlwg-laksaman-ttf* fonts-tlwg-loma* fonts-tlwg-loma-ttf*\
 fonts-tlwg-mono* fonts-tlwg-mono-ttf* fonts-tlwg-norasi*\
 fonts-tlwg-norasi-ttf* fonts-tlwg-purisa* fonts-tlwg-purisa-ttf*\
 fonts-tlwg-sawasdee* fonts-tlwg-sawasdee-ttf* fonts-tlwg-typewriter*\
 fonts-tlwg-typewriter-ttf* fonts-tlwg-typist* fonts-tlwg-typist-ttf*\
 fonts-tlwg-typo* fonts-tlwg-typo-ttf* fonts-tlwg-umpush*\
 fonts-tlwg-umpush-ttf* fonts-tlwg-waree* fonts-tlwg-waree-ttf*\
 fonts-beng-extra* fonts-gujr-extra* fonts-guru-extra* fonts-kacst-one*\
 fonts-lklug-sinhala* fonts-opensymbol* fonts-orya-extra* fonts-pagul*\
 fonts-sahadeva* fonts-samyak-deva* fonts-samyak-gujr* fonts-samyak-mlym*

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
####################################################################################################################################################################
# Atualizar as fontes
####################################################################################################################################################################
apt update

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
####################################################################################################################################################################
# Instalar programas
####################################################################################################################################################################
apt install -y\
 arc-theme\
 blueman\
 breeze-cursor-theme\
 build-essential\
 catfish\
 cheese\
 clementine\
 compiz\
 compiz-plugins\
 dconf-cli\
 diodon\
 galculator\
 gdebi\
 git\
 gnome-disk-utility\
 gnome-software-plugin-flatpak\
 gnome-system-tools\
 gnome-usage\
 gpick\
 gtk3-nocsd\
 gufw\
 hardinfo\
 i3lock-fancy\
 kazam\
 libnss-winbind\
 lightdm\
 linux-signed-lowlatency\
 megatools\
 menulibre\
 mesa-utils\
 metacity\
 mhwaveedit\
 neofetch\
 network-manager-gnome\
 openssh-server\
 papirus-icon-theme\
 p7zip-full\
 p7zip-rar\
 pavucontrol-qt\
 pinta\
 plank\
 plymouth-themes\
 python-compizconfig\
 qasmixer\
 qbittorrent\
 qt4-qtconfig\
 qt5ct\
 qt5-style-plugins\
 rar\
 ruby\
 ruby-colorize\
 ruby-dev\
 rygel-preferences\
 samba\
 shutter\
 smbclient\
 sni-qt\
 synaptic\
 system-config-samba\
 thunar-archive-plugin\
 tilix\
 tmate\
 typecatcher\
 undistract-me\
 unrar\
 update-manager\
 vlc\
 volumeicon-alsa\
 winbind\
 xdg-user-dirs-gtk\
 xfce4-netload-plugin\
 xfce4-notifyd\
 xfce4-power-manager-plugins\
 xfce4-session\
 xfce4-systemload-plugin\
 xfdesktop4\
 xfce4-appmenu-plugin\
 xscreensaver\
 xscreensaver-gl*\
 xubuntu-community-wallpapers-xenial\
 xubuntu-wallpapers\
 zram-config

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
####################################################################################################################################################################
# Instalar o kernel Liquorix e remover o kernel genérico
####################################################################################################################################################################
add-apt-repository -y ppa:damentz/liquorix
apt install -y linux-image-liquorix-amd64 linux-headers-liquorix-amd64
apt autoremove --purge -y linux-*generic*

####################################################################################################################################################################
# Instalar o Nemo com Folder Color. Gloobus Preview e o Dropbox
####################################################################################################################################################################
wget -c https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb -O dropbox.deb
gdebi -n dropbox*;rm -rf dropbox*
add-apt-repository -y ppa:embrosyn/cinnamon
apt install nemo nemo-audio-tab nemo-dropbox nemo-emblens nemo-filename-repairer nemo-image-converter nemo-media-colums nemo share
add-apt-repository -y ppa:costales/folder-color
apt install -y folder-color-nemo
wget -c https://launchpadlibrarian.net/311595267/gloobus-preview_0.4.5-ubuntu11~ppa335-17.04_amd64.deb
gdebi -n gloobus-preview*
rm -rf gloobus-preview*
wget -c https://launchpadlibrarian.net/194156197/nemo-gloobus-sushi_0.1~webupd8+2_all.deb
gdebi -n nemo-gloobus-sushi*
rm -rf nemo-gloobus-sushi*

####################################################################################################################################################################
# Instalar o Stacer
####################################################################################################################################################################
add-apt-repository -y ppa:oguzhaninan/stacer
apt install -y stacer

####################################################################################################################################################################
# Instalar o TimeShift
####################################################################################################################################################################
add-apt-repository -y ppa:teejee2008/ppa
apt install -y timeshift

####################################################################################################################################################################
# Instalar o Y-PPA-Manager
####################################################################################################################################################################
add-apt-repository -y ppa:webupd8team/y-ppa-manager
apt install -y y-ppa-manager

####################################################################################################################################################################
# Instalar o Etcher
####################################################################################################################################################################
echo "deb https://dl.bintray.com/resin-io/debian stable etcher" | tee /etc/apt/sources.list.d/etcher.list
apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 379CE192D401AB61
apt update
apt install -y etcher-electron

####################################################################################################################################################################
# Instalar o Sublime Text
####################################################################################################################################################################
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo 'deb https://download.sublimetext.com/ apt/stable/' | tee /etc/apt/sources.list.d/sublime-text.list
apt update
apt install -y sublime-text

####################################################################################################################################################################
# Instalar o Dukto
####################################################################################################################################################################
wget -c https://download.opensuse.org/repositories/home:/colomboem/xUbuntu_16.04/amd64/dukto_6.0-1_amd64.deb
gdebi -n dukto*
rm -rf dukto*

####################################################################################################################################################################
# Instalar o Flowblade
####################################################################################################################################################################
wget -c https://github.com/jliljebl/flowblade/releases/download/v1.16/flowblade-1.16.0-1_all.deb
gdebi -n flowblade*
rm -rf flowblade*

####################################################################################################################################################################
# Instalar o Google Chrome
####################################################################################################################################################################
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
gdebi -n google-chrome*
rm -rf google-chrome*
#wget -c https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
#gdebi -n chrome-remote-desktop*
#rm -rf chrome-remote-desktop*

####################################################################################################################################################################
# Instalar o PushBullet Desktop
####################################################################################################################################################################
wget -c https://github.com/sidneys/pb-for-desktop/releases/download/v7.0.0/pb-for-desktop-7.0.0-amd64.deb
gdebi -n pb-for-desktop*
rm -rf pb-for-desktop*

####################################################################################################################################################################
# Instalar ColorLS
####################################################################################################################################################################
gem install colorls

####################################################################################################################################################################
# Atualizar o NeoFetch
####################################################################################################################################################################
wget -c https://github.com/dylanaraps/neofetch/releases/download/5.0.0/neofetch
chmod +x neofetch;sudo mkdir -p /usr/local/bin;sudo mv -v neofetch /usr/local/bin/


####################################################################################################################################################################
# Instalar a fonte DroidSans Nerd Fonts para o Bash-It
####################################################################################################################################################################
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/DroidSansMono.zip
mkdir /usr/share/fonts/nerd-fonts
7z x DroidSansMono.zip -o/usr/share/fonts/nerd-fonts/
rm -rf DroidSansMono*

####################################################################################################################################################################
# Instalar o tema Vimix para o GRUB
####################################################################################################################################################################
wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wget-files/grub-themes-vimix.tar.xz
tar -Jxf grub-themes-vimix.tar.xz
mkdir -p /boot/grub/themes
cd grub-themes-vimix
bash Install
cd ..
rm -rf grub-themes-vimix*

####################################################################################################################################################################
# Baixar binários do WINE 3.6
####################################################################################################################################################################
megadl 'https://mega.nz/#!oJRCQTZY!KKmMDtdvbUgk781xAys-I57U4I0_vEgo3UZMdCTL2IU'
7z x PlayOnLinux.7z
mv -v PlayOnLinux /etc/skel/.PlayOnLinux
rm -rf PlayOnLinux.7z

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
####################################################################################################################################################################
# Adicionar suporte à arquitetura i386 para os pacotes do WINE
####################################################################################################################################################################
dpkg --add-architecture i386

####################################################################################################################################################################
# Instalar os repositórios do KXStudio
####################################################################################################################################################################
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_9.5.1~kxstudio3_all.deb
gdebi -n kxstudio-repos*
rm -rf kxstudio-repos*

####################################################################################################################################################################
# Aceitar MSCoreFonts EULA
####################################################################################################################################################################
echo 'ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true' | debconf-set-selections

####################################################################################################################################################################
# Instalar o PlayOnLinux, o WINETricks e os drivers de som do ALSA
####################################################################################################################################################################
apt install -y playonlinux alsa-firmware winetricks

####################################################################################################################################################################
# Instalar o repositório do RaDiX
####################################################################################################################################################################
wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wget-files/bashrun_1.5_amd64.deb
wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wget-files/rauldipeas-repo_1.8_amd64.deb
wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wget-files/gksu_2.0.2-9ubuntu1_amd64.deb
wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wget-files/libgksu2-0_2.0.13_pre1-9ubuntu2_amd64.deb
dpkg -i bashrun* rauldipeas-repo* gksu* libgksu*
apt install -y -f
rm -rf bashrun* rauldipeas-repo* gksu* libgksu*
apt update

####################################################################################################################################################################
# Instalar os programas do repositório do RaDiX e o Cadence
####################################################################################################################################################################
apt install -y\
 cadence\
 com.github.donadigo.eddy\
 compiz-gtk-decorator-theme-selector\
 gnome-web-photo\
 hud-menu\
 ksuperkey\
 libgoo-canvas-perl\
 libinput-gestures\
 lightdm-webkit2-greeter\
 lite-welcome\
 mailspring\
 marwaita-gtk-theme\
 oblogout\
 ocs-url\
 radix-after-install\
 mattermost-desktop\
 translate-highlighted-text\
 viewnior\
 wineasio\
 xfce4-windowck-plugin

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
####################################################################################################################################################################
# Editar lançador do HardInfo
####################################################################################################################################################################
sed -i 's/Icon=\/usr\/share\/hardinfo\/pixmaps\/logo.png/Icon=hardinfo/g' /usr/share/applications/hardinfo.desktop

####################################################################################################################################################################
# Criar arquivo de inicialização do Lite Welcome
####################################################################################################################################################################
mkdir -p /etc/skel/.config/autostart
cp -rv /usr/share/applications/lite_welcome.desktop /etc/skel/.config/autostart/

####################################################################################################################################################################
# Editar lançador do MHWaveEdit
####################################################################################################################################################################
sed -i 's/Icon=mhwaveedit/Icon=kwave/g' /usr/share/applications/mhwaveedit.desktop

####################################################################################################################################################################
# Editar lançador do Nemo
####################################################################################################################################################################
sed -i 's/Icon=folder/Icon=system-file-manager/g' /usr/share/applications/nemo.desktop

####################################################################################################################################################################
# Sobreescrever binário de logout do XFCE
####################################################################################################################################################################
cp -rv /usr/local/bin/xfce4-session-logout /usr/bin/

####################################################################################################################################################################
# Criar configurações do Plank
####################################################################################################################################################################
cp -rv /usr/share/applications/plank.desktop /etc/xdg/autostart/
echo '[Desktop Entry]
Name=Plank Preferences
Name[pt_BR]=Configurações do Plank
Categories=Settings;
Type=Application
Exec=plank --preferences
Icon=plank
Terminal=false
NoDisplay=false' | tee /usr/share/applications/plank-preferences.desktop

####################################################################################################################################################################
# Editar o lançador do PlayOnLinux
####################################################################################################################################################################
echo 'StartupWMClass=mainwindow.py' | tee -a /usr/share/applications/PlayOnLinux.desktop

####################################################################################################################################################################
# Criar arquivos de inicialização do PulseAudio
####################################################################################################################################################################
cp /etc/xdg/autostart/pulseaudio.desktop /etc/xdg/autostart/pulseaudio-fix.desktop
sed -i 's/start-pulseaudio-x11/pulseaudio/g' /etc/xdg/autostart/pulseaudio-fix.desktop

####################################################################################################################################################################
# Ocultar lançadores do Thunar e Screesavers
####################################################################################################################################################################
echo '' | tee -a /usr/share/applications/thunar*
echo 'Hidden=true' | tee -a /usr/share/applications/thunar*
echo '' | tee -a /usr/share/applications/Thunar*
echo 'Hidden=true' | tee -a /usr/share/applications/Thunar*
echo '' | tee -a /usr/share/applications/screensavers/*
echo 'Hidden=true' | tee -a /usr/share/applications/screensavers/*

####################################################################################################################################################################
# Criar configurações do VolumeIcon-ALSA
####################################################################################################################################################################
echo '[Desktop Entry]
Type=Application
Name=Volume Icon ALSA
Exec=volumeicon
Icon=qasmixer
StartupNotify=false
Terminal=false
Categories=Audio;
Keywords=ALSA;Audio;Mixer;' | tee /etc/xdg/autostart/volumeicon-alsa.desktop

####################################################################################################################################################################
# Editar configurações do WINE
####################################################################################################################################################################
echo '' | tee -a /usr/share/applications/wine-notepad*
echo 'Hidden=true' | tee -a /usr/share/applications/wine-notepad*
sed -i 's/winemenubuilder.exe -a -r/winemenubuilder.exe -r/g' /usr/share/wine/wine.inf

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
####################################################################################################################################################################
# Editar configurações da criação de usuários
####################################################################################################################################################################
sed -i 's/#EXTRA_GROUPS/EXTRA_GROUPS/g' /etc/adduser.conf
sed -i 's/plugdev users/plugdev users input/g' /etc/adduser.conf
sed -i 's/#ADD_EXTRA_GROUPS/ADD_EXTRA_GROUPS/g' /etc/adduser.conf
#sed -i 's/SKEL_IGNORE_REGEX/#SKEL_IGNORE_REGEX/g' /etc/adduser.conf

####################################################################################################################################################################
# Editar arquivos de configuração do Branding
####################################################################################################################################################################
sed -i 's/Ubuntu\ 18.04\ LTS/RaDiX\ \-\ Workstation/g' /etc/lsb-release
sed -i 's/GRUB_DISTRIBUTOR=`lsb_release\ -i\ -s\ 2>\ \/dev\/null\ ||\ echo\ Debian`/GRUB_DISTRIBUTOR=\"RaDiX\ \-\ Workstation\"/g' /etc/default/grub
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash loglevel=0 logo.nologo vt.global_cursor_default=0/g' /etc/default/grub
mkdir -p /opt/radix-desktop
cp /etc/lsb-release /opt/radix-desktop/
cp /etc/default/grub /opt/radix-desktop/
echo '#!/bin/sh -e
cp /opt/radix-desktop/grub /etc/default/grub
cp /opt/radix-desktop/lsb-release /etc/lsb-release
update-grub
exit 0' | tee /etc/rc.local
chmod +x /etc/rc.local
echo "RESUME=none" | tee /etc/initramfs-tools/conf.d/resume
echo "FRAMEBUFFER=y" | tee /etc/initramfs-tools/conf.d/splash

####################################################################################################################################################################
# Corrigir arquivo faltante no tema Breeze de cursor
####################################################################################################################################################################
cp /usr/share/icons/Breeze_Snow/cursors/left_ptr /usr/share/icons/Breeze_Snow/cursors/arrow

####################################################################################################################################################################
# Setar o tema do mouse
####################################################################################################################################################################
update-alternatives --set x-cursor-theme /etc/X11/cursors/Breeze_Snow.theme

####################################################################################################################################################################
# Editar configurações do LightDM
####################################################################################################################################################################
#sed -i 's/#theme-name=/theme-name=Arc/g' /etc/lightdm/lightdm-gtk-greeter.conf
#sed -i 's/#icon-theme-name=/icon-theme-name=Papirus/g' /etc/lightdm/lightdm-gtk-greeter.conf
#sed -i 's/#font-name=/font-name=Lato\ Regular\ 10/g' /etc/lightdm/lightdm-gtk-greeter.conf
echo "[SeatDefaults]
autologin-user=radix
user-session=xfce
greeter-session=lightdm-webkit2-greeter" | tee /etc/lightdm/lightdm.conf

####################################################################################################################################################################
# Editar configurações do SAMBA
####################################################################################################################################################################
touch /etc/libuser.conf
sed -i 's/\ dns/\ wins\ dns\ mdns4/g' /etc/nsswitch.conf
sed -i 's/\#\ \ \ wins\ support\ \=\ no/\ \ \ wins\ support\ \=\ yes/g' /etc/samba/smb.conf
sed -i 's/workgroup = WORKGROUP/workgroup = WORKGROUP\n   client max protocol = NT1/g' /etc/samba/smb.conf

####################################################################################################################################################################
# Editar configurações de teclado
####################################################################################################################################################################
sed -i 's/us/br/g' /etc/default/keyboard

####################################################################################################################################################################
# Editar arquivos de configuração do Undistract-Me
####################################################################################################################################################################
sed -i 's/took/levou/g' /usr/share/undistract-me/long-running.bash
sed -i 's/dialog-information/xterm/g' /usr/share/undistract-me/long-running.bash
sed -i 's/Long\ command\ completed/Comando\ concluído\!/g' /usr/share/undistract-me/long-running.bash

####################################################################################################################################################################
# Converter os arquivo do tema Arc para o WindowCK
####################################################################################################################################################################
rm -rf /usr/share/themes/Windowck/xfwm4/*.xpm
#cp -v /usr/share/themes/Arc-Darker/xfwm4/close-active.png /usr/share/themes/Windowck/xfwm4/close-active.png
#cp -v /usr/share/themes/Arc-Darker/xfwm4/close-inactive.png /usr/share/themes/Windowck/xfwm4/close-inactive.png
#cp -v /usr/share/themes/Arc-Darker/xfwm4/close-prelight.png /usr/share/themes/Windowck/xfwm4/close-prelight.png
#cp -v /usr/share/themes/Arc-Darker/xfwm4/close-pressed.png /usr/share/themes/Windowck/xfwm4/close-pressed.png
#cp -v /usr/share/themes/Arc-Darker/xfwm4/hide-active.png /usr/share/themes/Windowck/xfwm4/hide-active.png
#cp -v /usr/share/themes/Arc-Darker/xfwm4/hide-inactive.png /usr/share/themes/Windowck/xfwm4/hide-inactive.png
#cp -v /usr/share/themes/Arc-Darker/xfwm4/hide-prelight.png /usr/share/themes/Windowck/xfwm4/hide-prelight.png
#cp -v /usr/share/themes/Arc-Darker/xfwm4/hide-pressed.png /usr/share/themes/Windowck/xfwm4/hide-pressed.png
#cp -v /usr/share/themes/Arc-Darker/xfwm4/maximize-active.png /usr/share/themes/Windowck/xfwm4/maximize-active.png
#cp -v /usr/share/themes/Arc-Darker/xfwm4/maximize-inactive.png /usr/share/themes/Windowck/xfwm4/maximize-inactive.png
#cp -v /usr/share/themes/Arc-Darker/xfwm4/maximize-prelight.png /usr/share/themes/Windowck/xfwm4/maximize-prelight.png
#cp -v /usr/share/themes/Arc-Darker/xfwm4/maximize-pressed.png /usr/share/themes/Windowck/xfwm4/maximize-pressed.png
convert /usr/share/themes/Arc-Darker/xfwm4/close-active.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/close-active.png
convert /usr/share/themes/Arc-Darker/xfwm4/close-inactive.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/close-inactive.png
convert /usr/share/themes/Arc-Darker/xfwm4/close-prelight.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/close-prelight.png
convert /usr/share/themes/Arc-Darker/xfwm4/close-pressed.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/close-pressed.png
convert /usr/share/themes/Arc-Darker/xfwm4/hide-active.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/hide-active.png
convert /usr/share/themes/Arc-Darker/xfwm4/hide-inactive.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/hide-inactive.png
convert /usr/share/themes/Arc-Darker/xfwm4/hide-prelight.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/hide-prelight.png
convert /usr/share/themes/Arc-Darker/xfwm4/hide-pressed.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/hide-pressed.png
convert /usr/share/themes/Arc-Darker/xfwm4/maximize-active.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/maximize-active.png
convert /usr/share/themes/Arc-Darker/xfwm4/maximize-inactive.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/maximize-inactive.png
convert /usr/share/themes/Arc-Darker/xfwm4/maximize-prelight.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/maximize-prelight.png
convert /usr/share/themes/Arc-Darker/xfwm4/maximize-pressed.png -transparent "#2f343f" /usr/share/themes/Windowck/xfwm4/maximize-pressed.png

####################################################################################################################################################################
# Instalar o tema RaDiX para o XFDashboard
####################################################################################################################################################################
#wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wget-files/xfdashboard-radix.7z
#7z x xfdashboard-radix.7z -o/usr/share/themes/
#rm -rf xfdashboard-radix*

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
####################################################################################################################################################################
# Baixar dotfiles e wallpapers
####################################################################################################################################################################
git clone http://gitlab.com/rauldipeas/RaDiX
cp -rv RaDiX/dotfiles/.bash_it /etc/skel/
cp -rv RaDiX/dotfiles/.config /etc/skel/
cp -rv RaDiX/dotfiles/.local /etc/skel/
cp -rv RaDiX/dotfiles/.weatherdesk_walls /etc/skel/
cp -v RaDiX/dotfiles/.profile /etc/skel/
cp -v RaDiX/dotfiles/.xscreensaver /etc/skel/
rm -rf RaDiX
mkdir -p /usr/share/backgrounds/radix
wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wallpapers/full-hd/azul.jpg
wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wallpapers/full-hd/dark.jpg
wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wallpapers/full-hd/laranja.jpg
wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wallpapers/full-hd/roxo.jpg
wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wallpapers/full-hd/verde.jpg
wget -c https://gitlab.com/rauldipeas/RaDiX/raw/master/wallpapers/full-hd/vermelho.jpg
mv -v *.jpg /usr/share/backgrounds/radix/ 

####################################################################################################################################################################
# Ocultar temas de base
####################################################################################################################################################################
sudo chmod 544 /usr/share/themes/Adwaita* /usr/share/themes/Raleigh/ /usr/share/icons/Adwaita/ /usr/share/icons/gnome/

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
####################################################################################################################################################################
# Limpar o sistema
####################################################################################################################################################################
apt autoremove --purge -y gnome-software-plugin-snap gnome-system-monitor meterbridge
deborphan |grep lib|xargs apt autoremove --purge -y
deborphan |grep lib|xargs apt autoremove --purge -y
deborphan |grep lib|xargs apt autoremove --purge -y
deborphan |grep lib|xargs apt autoremove --purge -y
deborphan |grep ure|xargs apt autoremove --purge -y
deborphan |grep lib|xargs apt autoremove --purge -y
deborphan |grep lib|xargs apt autoremove --purge -y
