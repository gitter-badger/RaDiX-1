# Preparação de arquivos e pastas

mkdir -pv livecdtmp
wget -c https://unit193.net/xubuntu/core/xubuntu-18.10-core-amd64.iso
cp -v xubuntu*.iso livecdtmp
cd livecdtmp
mkdir -pv mnt
sudo mount -o loop xubuntu*.iso mnt
mkdir -pv extract-cd
sudo rsync --exclude=/casper/filesystem.squashfs -a mnt/ extract-cd
sudo unsquashfs mnt/casper/filesystem.squashfs
sudo mv squashfs-root edit

# Montagem do ambiente chroot

sudo mount -o bind /run/ edit/run
sudo mount --bind /dev/ edit/dev
sudo chroot edit mount -t proc none /proc
sudo chroot edit mount -t sysfs none /sys
sudo chroot edit mount -t devpts none /dev/pts
sudo chroot edit sh -c "export HOME=/root"
sudo chroot edit sh -c "export LC_ALL=C"
sudo chroot edit sh -c "dbus-uuidgen > /var/lib/dbus/machine-id"
sudo chroot edit dpkg-divert --local --rename --add /sbin/initctl
sudo chroot edit ln -s /bin/true /sbin/initctl

# Instalação de repositórios e ferramentas

sudo chroot edit sh -c "echo deb https://radix.ws/core-repo cosmic main > /etc/apt/sources.list.d/rauldipeas.list"
sudo chroot edit sh -c "echo deb http://storage.radix.ws/large-repo cosmic main >> /etc/apt/sources.list.d/rauldipeas.list"
sudo chroot edit sh -c "wget https://radix.ws/core-repo/rauldipeas.key;apt-key add rauldipeas.key"
sudo chroot edit apt update
sudo chroot edit apt install -y build-essential curl git ruby-dev

# Execução do script de criação do sistema

sudo chroot edit git clone https://bitbucket.org/rauldipeas/radix
sudo chroot edit find ../core-repo -type f -exec dpkg -i {} \;
sudo chroot edit apt install -f -y
sudo chroot edit cp -rfv ../skel /etc
sudo chroot edit sh -c "cp -v ../images/wallpapers/*.jpg /usr/share/backgrounds/"
sudo chroot edit cp -v ../images/logos/grub.png /boot/grub/themes/Vimix/icons/radix.png
sudo chroot edit bash ../build/build-radix-core.sh
sudo chroot edit chsh -s /usr/bin/fish root
sudo chroot edit wget -O oh-my-fish.sh https://get.oh-my.fish
sudo chroot edit su -c "fish oh-my-fish.sh --noninteractive"
sudo chroot edit su -c "fish -c 'omf install bobthefish'"
sudo chroot edit apt install --reinstall linux-image-4.18.0-10-generic
sudo chroot edit update-initramfs -u -k all
sudo chroot edit sed -i -e 's@user-uid [0-9]*@user-uid 990@' /usr/share/initramfs-tools/scripts/casper-bottom/25adduser

# Desmontagem do ambiente chroot

sudo chroot edit rm -rf radix rauldipeas.key
sudo chroot edit apt clean
sudo chroot edit rm -rf /tmp/* .bash_history
sudo chroot edit rm /var/lib/dbus/machine-id
sudo chroot edit rm /sbin/initctl
sudo chroot edit dpkg-divert --rename --remove /sbin/initctl
sudo chroot edit umount /proc || umount -lf /proc
sudo chroot edit umount /sys
sudo chroot edit umount /dev/pts
sudo umount edit/dev
sudo umount edit/run

# Geração do arquivo de manifesto

sudo chmod +w extract-cd/casper/filesystem.manifest
sudo sh -c "chroot edit dpkg-query -W --showformat='${Package} ${Version}\n' > extract-cd/casper/filesystem.manifest"
sudo cp extract-cd/casper/filesystem.manifest extract-cd/casper/filesystem.manifest-desktop
sudo sed -i '/ubiquity/d' extract-cd/casper/filesystem.manifest-desktop
sudo sed -i '/casper/d' extract-cd/casper/filesystem.manifest-desktop

# Compactação do sistema de arquivos da imagem de instalação

sudo rm -rf extract-cd/casper/filesystem.squashfs
sudo mksquashfs edit extract-cd/casper/filesystem.squashfs
sudo sh -c 'printf $(du -sx --block-size=1 edit | cut -f1) > extract-cd/casper/filesystem.size'

# Informações da imagem de instalação (carece de correções)

sudo touch extract-cd/ubuntu
sudo mkdir -pv extract-cd/.disk
cd extract-cd/.disk
sudo touch base_installable
echo "full_cd/single" | sudo tee cd_type
echo "RaDiX - Core - 27.01.2019" | sudo tee info
echo "RaDiX - Core" | sudo tee release_notes_url
cd ../..

# Geração do arquivo md5sum

cd extract-cd
sudo rm md5sum.txt
sudo find -type f -print0 | sudo xargs -0 md5sum | grep -v isolinux/boot.cat | sudo tee md5sum.txt

# Geração da imagem de instalação

sudo cp -v ../../../boot-files/*.cfg boot/grub
sudo rm -rfv isolinux
sudo cp -rfv ../../../boot-files/isolinux .
sudo cp ../edit/boot/initrd.img-*-generic casper/initrd
sudo cp ../edit/boot/vmlinuz-*-generic casper/vmlinuz
sudo apt install -y isolinux xorriso
sudo mkdir -p ../iso
sudo xorriso \
-as mkisofs -r -V "$IMAGE_NAME" -cache-inodes -J -l \
-b isolinux/isolinux.bin \
-c isolinux/boot.cat \
-no-emul-boot \
-boot-load-size 4 \
-boot-info-table \
-isohybrid-mbr /usr/lib/ISOLINUX/isohdpfx.bin \
-eltorito-alt-boot \
-e boot/grub/efi.img \
-no-emul-boot \
-isohybrid-gpt-basdat \
-o "../iso/radix-core-amd64.iso" .
md5sum ../iso/radix-core-amd64.iso | sudo tee ../iso/radix-core-amd64.md5
sudo apt autoremove --purge -y isolinux syslinux-common libburn4 libisoburn1 libisofs6 libjte1 xorriso