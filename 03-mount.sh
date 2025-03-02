echo "##########
#Personal#
##########

# Games
UUID=8eb66bd5-f34b-46b2-9091-871c4cd86bc6 /mnt/SSD4TB ext4	defaults	0 0

# Timeshift
UUID=87d9bdc0-a7e0-4333-bc28-545ff5c94e0c /mnt/timeshift ext4 defaults 0 0

# Files
//192.168.2.53/software /mnt/software cifs uid=1000,gid=1000,credentials=/home/purabytes/.smbcreds 0 0
//192.168.2.53/archive /mnt/archive cifs uid=1000,gid=1000,,credentials=/home/purabytes/.smbcreds 0 0
#//192.168.2.53/archivebackup /mnt/archivebackup cifs uid=1000,gid=1000,credentials=/home/purabytes/.smbcreds 0 0
//192.168.2.53/backup /mnt/backup cifs uid=1000,gid=1000,credentials=/home/purabytes/.smbcreds 0 0

# Downloads
//192.168.2.71/torrent /mnt/torrent cifs uid=1000,gid=1000,credentials=/home/purabytes/.smbdlcreds 0 0
//192.168.2.71/music /mnt/music cifs uid=1000,gid=1000,credentials=/home/purabytes/.smbdlcreds 0 0" | sudo tee -a /etc/fstab

sudo systemctl daemon-reload
sudo mount -a
