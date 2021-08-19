## ./31_vm_install_guest_additions.sh
## 2021-07-07-A
# Run as `root`
# Run ONCE afer new linux install.
# ONLY VirtualBox virtual machines.
# not approved

### Install Guest-Additions on Virtual Machine

#0. mount guest additions
#	<Devices> -> <Insert Guest Additions>

## Ignore errors, probably already mounted?

USER=robertbc

#1. Run guest additions CD image
## OLD cd /media/$USER/VBox_GAs_5.2.11/
## 2020-09-12: cd /media/robertbc/VBox_GAs_5.2.34/
## 2021-07-07: cd /media/robertbc/VBOXADDITIONS_5.1.38_122592/
cd /media/$USER/VBOX*/
./VBoxLinuxAdditions.run

#2. Join Virtualbox group on this Virtual Machine
usermod -a -G vboxsf $USER

echo "DONE 31_vm_config_linux.sh"
