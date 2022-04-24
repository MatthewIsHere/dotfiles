#!/bin/bash
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
