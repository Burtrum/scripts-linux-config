## 90_config_disk_backup.sh
## 2018-11-25-A
# Mount a disk partion in '/' for snapshots

### Step 1: On boot disk, /dev/sda Create a new partition with gparted -> /dev/sda?
# Label:  DISK_BACKUP				[name by convention do not change]
# mount as: /disk_snapshot in fstab [name by convention do not change]

### Step 2: Find new partition or disk UUID:
# $ blkid | grep DISK_BACKUP
# EX: /dev/sda3: LABEL="DISK_BACKUP" UUID="a858ced3-ac7f-4bca-9239-8a7967daa163" TYPE="ext4" PARTLABEL="Disk backup partion" PARTUUID="eca89f68-2096-4acf-b45b-a767e7586bfd"
# or use $ lsblk --fs

### Step 3: Extract unique UUID for the disk or partition:
BACKUP_UUID="34fa7253-29ad-49b7-82ea-cb6d00bf79e0"

### Step 4: Create local mount point for backups, access given to all in group 'users'
# maintain chown then chmod order
echo "Create mount point for backups: $BACKUP_FOLDER owned by root:users"
BACKUP_FOLDER=/disk_snapshot
mkdir -p $BACKUP_FOLDER
chown root:users $BACKUP_FOLDER && chmod 775 $BACKUP_FOLDER
ls -ld $BACKUP_FOLDER

# Make mount permanent
echo "Update /etc/fstab mount point for backups: $BACKUP_FOLDER"
echo >> /etc/fstab
echo "# Internal boot disk backup partion mounted during configuration" >> /etc/fstab
echo "UUID=$BACKUP_UUID $BACKUP_FOLDER	ext4    defaults        0       2" >> /etc/fstab

# Test mount
mount -a
lsblk --fs
# $ lsblk --fs
#NAME   FSTYPE LABEL       UUID                                 MOUNTPOINT
#sda
#├─sda1 ext4               8b6e4685-191d-48af-ac38-d7bd2e9535d9 /
#├─sda2 ext4               012b79d8-f4a3-4361-943e-8b2e6c674f94 /home
#└─sda3 ext4   DISK_BACKUP a858ced3-ac7f-4bca-9239-8a7967daa163 /disk_backup

echo "DONE 90_config_disk_backup.sh"
# EOF
