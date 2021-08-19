## 21_config_virtualbox.sh
## 2018-11-25-A
# Run as `root`
# Run ONCE afer new linux install.
# HOST ONLY for bare-metal linux; the linux that hosts the VirtualBox virtual machines.
#

USER=robertbc

echo "Config Virtualbox on host"

# Add user to 'vboxusers' group. Mostly for vb shared folders? [unused?]
usermod -a -G vboxusers $USER

# Create Virtual Machine folder. Where the VM data files go. NOT the shared folder.
# Must change default name in VirualBox Manager to match.
# Allow 'users' group for sharing.
VMFOLDER=/home/$USER/virtualbox_data
mkdir $VMFOLDER
chown $USER:users $VMFOLDER
ls -ld $VMFOLDER

echo "RUN: virtualbox-guest-additions-iso within virtualbox app???"
echo "DONE 21_config_virtualbox.sh"
# EOF

