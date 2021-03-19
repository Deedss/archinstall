# Installing Arch
- timedatectl set-ntp true
- cfdisk /dev/sdX
- gpt on UEFI
- mkfs.fat -F32 /dev/sda1
- mkswap /dev/sda2
- swapon /dev/sda2
- mkfs.ext4/btrfs /dev/sda3
- mount /dev/sda3 /mnt
- mkdir /mnt/boot
- #mkdir /mnt/boot/efi 
- mount /dev/sda1 /mnt/boot
- pacstrap /mnt base base-devel linux linux-firmware nano
- genfstab -U /mnt >> /mnt/etc/fstab
- arch-chroot /mnt
- ln -sf /usr/share/zoneinfo/RegionCity /etc/localtime
- hwclock --systohc
- nano /etc/locale.gen
- locale-gen
- echo LANG=en_US.UTF-8 > /etc/locale.conf
- echo "PCNAME" > /etc/hostname
- nano /etc/hosts
- 127.0.0.1	localhost<br/>
    ::1	        localhost<br/>
    127.0.0.1	PCNAME.localdomain	PCNAME
- pacman -S networkmanager
- systemctl enable NetworkManager
- passwd
- useradd --create-home "name"
- passwd "name"
- usermod -aG wheel "name"
- visudo -> uncomment %wheel
- #pacman -S grub efibootmgr
- #grub-install --target=x86_64-efi --efi-directory=/boot/efi
- #grub-mkconfig -o /boot/grub/grub.cfg
- bootctl --path=/boot install
- /boot/loader/loader.conf
##############

default arch
timeout 1
editor 0

- /boot/loader/entries/arch.conf
##################
blkid -s PARTUUID -o value /dev/sda2
title   Arch Linux
linux   /vmlinuz-linux
initrd  /initramfs-linux.img
options root=PARTUUID=66e3f67d-f59a-4086-acdd-a6e248a3ee80 rw

- exit
- umount -R /mnt
- reboot
