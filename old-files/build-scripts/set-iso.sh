#!/bin/bash
sudo cp -rv ~/SparkleShare/RaDiX/boot-files/grub.cfg ~/Público/radix/custom-live-iso/boot/grub/grub.cfg
sudo cp -rv ~/SparkleShare/RaDiX/boot-files/loopback.cfg ~/Público/radix/custom-live-iso/boot/grub/loopback.cfg
sudo rm -rf ~/Público/radix/custom-live-iso/isolinux/*
sudo cp -rv ~/SparkleShare/RaDiX/boot-files/isolinux/* ~/Público/radix/custom-live-iso/isolinux/
sudo cp -rv ~/SparkleShare/RaDiX/custom-live-iso/casper/* ~/Público/radix/custom-live-iso/casper/
sudo cp -rv ~/SparkleShare/RaDiX/slideshow/ubiquity-slideshow-xubuntu_138_all/usr/share/ubiquity-slideshow/slides/* ~/Público/radix/squashfs-root/usr/share/ubiquity-slideshow/slides/