echo "MAKE SURE TO CHANGE THE PASSWORD IN THIS FILE

MAKE SURE TO CHANGE THE PASSWORD IN THIS FILE"

### Some of the config files that I like, and wallpapers etc.
# Wallpapers
cp -r Wallpapers ~/Pictures

# Creating /mnt folders
sudo mkdir -p /mnt/{SSD4TB,timeshift,software,archive,archivebackup,backup,torrent,music}
sudo chown -R purabytes:purabytes /mnt/*

# create smbcreds and smbdlcreds
echo "username=purabytes
password=" > ~/.smbcreds

echo "username=purabytes
password=" > ~/.smbdlcreds

# zsh history
mkdir -p ~/.cache/zsh
touch ~/.cache/zsh/history

