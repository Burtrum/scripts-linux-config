## 11_config_linux.sh
## 2020-09-12-A
## 2021-07-08-A Add argumnets
# Run as `root`
# Run ONCE afer new linux install.
# Use for both bare-metal linux and VirtualBox virtual machines.
#

# FYI find all groups defined:
#	$ cut -d: -f1 /etc/group | sort

# In running virual machine, enable second disply.
# <View> <Virtual Screen 2 enable>
# <View> <Virtual Screen 2 choose resolution = 1448x900 dell>
# <View> <Virtual Screen 1 choose resolution = 1600x900 lenovo>

if [ $# -eq 0 ]
  then
    echo " $0 Using default MYUNMAE and USER"
fi

if [ -z $1 ]; then
    MYUNAME="base-1"
else
    MYUNAME="$1"
fi

if [ -z $2 ]; then
    USER=robertbc
else
    USER="$2"
fi

echo "Linux Setup of uname = $MYUNAME; user = $USER"
echo $MYUNAME > /etc/hostname

# Linux Mint will add $HOME/bin to $PATH upon next login.
mkdir /home/$USER/bin
chown $USER:users /home/$USER/bin

# 'dialout' group can access USB serial port adapters ie /dev/ttyUSB0
usermod -aG dialout $USER

# 'users' group can access nfs, backup partitions or drives.
usermod -aG users $USER

##### START: NFS Config
NFS_SERVER=server-1
NFS_FOLDER=share_1
REMOTE_FOLDER=/mnt/public_1/$NFS_FOLDER
LOCAL_FOLDER=/mnt/$NFS_FOLDER

# Create local mount folder, group == users
echo "Create mount point for NFS: $LOCAL_FOLDER accessed by root:users"
mkdir $LOCAL_FOLDER
chown root:users $LOCAL_FOLDER
chmod 775 $LOCAL_FOLDER
ls -ld $LOCAL_FOLDER

# Make remote mount permanent on reboot
echo "Update /etc/fstab mount point for NFS: $NFS_SERVER:$REMOTE_FOLDER $LOCAL_FOLDER"
echo >> /etc/fstab
echo "# Mount NFS Shares" >> /etc/fstab
echo "$NFS_SERVER:$REMOTE_FOLDER $LOCAL_FOLDER  nfs" >> /etc/fstab
# Test mount
mount -a
ls $LOCAL_FOLDER

echo "DONE 11_config_linux.sh"
# EOF











