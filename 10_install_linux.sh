## 10_install_linux.sh
## 2020-09-12-A
# Run as `root`
# Run ONCE afer new linux install.
# Use for both bare-metal linux and VirtualBox virtual machines.
#

# $ apt search "package"
# $ apt-get --yes --no-install-recommends install "package"

##### START: NFS Install
apt-get --yes --no-install-recommends install \
	nfs-common nfs-kernel-server

##### START: Utility
# hashalot for sha512sum
apt-get --yes --no-install-recommends install \
	geany \
	markdown \
	build-essential \
	git \
	hashalot

apt-get --yes --no-install-recommends install \
	dconf-editor \
	gparted

echo "EOF 10_install_linux.sh"
# EOF











