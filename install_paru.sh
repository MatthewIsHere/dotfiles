#!/bin/sh

pacman -Q | grep paru > /dev/null
if [ $? -eq 0 ]; then
    echo Found Paru. No need to build.
    exit 0
fi

PWD="$(pwd)"
BUILDDIR="$(mktemp -d)"
PKG=paru

mkdir -p "$BUILDDIR"
cd "$BUILDDIR" || exit 1

curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/${PKG}.tar.gz
tar xvf ${PKG}.tar.gz

cd "$BUILDDIR/$PKG" || exit 1
makepkg --syncdeps --install --noconfirm

cd "$PWD" || exit 1
rm -rf "$BUILDDIR"
