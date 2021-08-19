## sudo ./ 13_install_hp_printer.sh
## 2020-09-14-A
# Run as `root`
# Run ONCE afer new linux install.
# Use for both bare-metal linux and VirtualBox virtual machines.
#

# $ apt search "package"
# $ apt-get --yes --no-install-recommends install "package"

##### START: HP Printer
apt-get --yes --no-install-recommends install \
	hplip-gui

echo "HP Printer: Run HPLIP Toolbox to install plug-in."
    hp-setup

##### END: HP Printer

echo "EOF 13_install_hp_printer.sh"
# EOF











