#!/bin/bash

set -ouex pipefail

# Remove supergfxctl-gex as it is useless on Desktop
dnf remove gnome-shell-extension-supergfxctl-gex -y

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# dnf5 -y config-manager addrepo --from-repofile=https://negativo17.org/repos/fedora-steam.repo

dnf copr enable lizardbyte/stable -y
dnf install Sunshine -y
