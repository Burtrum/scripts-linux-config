## 33_vm_config_virtualbox.md
## 2018-11-25-B
# Run as `root`
# Run ONCE afer new linux install.
# ONLY VirtualBox virtual machines.
#

### Install Guest-Additions on Virtual Machine

#0. mount guest additions
#	<Devices> -> <Insert Guest Additions>

## Ignore errors, probably already mounted?

USER=robertbc

#1. Run guest additions CD image
## cd /media/$USER/VBox_GAs_5.2.11/
cd /media/$USER/VBox*/
./VBoxLinuxAdditions.run

#2. Join Virtualbox group on this Virtual Machine
usermod -a -G vboxsf $USER

#3. confirm $USER in 'vboxsf' group
groups

# reboot

