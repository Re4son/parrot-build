#!/bin/sh
vmdebootstrap \
    --arch armhf \
    --distribution stretch \
    --mirror http://[::1]:3142/archive.raspbian.org/raspbian \
    --image `date +raspbian-%Y%m%d.img` \
    --size 7400M \
    --bootsize 64M \
    --boottype vfat \
    --root-password toor \
    --enable-dhcp \
    --verbose \
    --no-kernel \
    --no-extlinux \
    --hostname parrot-iot \
    --foreign /usr/bin/qemu-arm-static \
    --debootstrapopts="variant=minbase keyring=`pwd`/raspbian.org.gpg" \
    --customize `pwd`/install.sh
