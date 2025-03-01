# make sure user folders are created
sudo pacman -S xdg-user-dirs
xdg-user-dirs-update

# install reflector, for faster mirror speeds.
sudo pacman -S reflector

echo "-n 20
--protocol https
--sort rate
--country NL
--latest 150
--save /etc/pacman.d/mirrorlist" > sudo /etc/xdg/reflector/reflector.conf

sudo systemctl enable reflector.service
sudo systemctl start reflector.service

# Install yay-bin
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si && cd .. && sudo rm -r yay-bin

# Install fonts
sudo pacman -S --needed $(pacman -Ssq noto-fonts)

sudo pacman -S --needed $(pacman -Ssq nerd-fonts)

sudo pacman -S --needed noto-fonts-cjk noto-fonts-emoji ttf-dejavu ttf-fira-code ttf-font-awesome otf-font-awesome  ttf-inconsolata ttf-linux-libertine ttf-ubuntu-font-family ttf-fira-code ttf-inconsolata ttf-liberation ttf-linux-libertine ttf-ubuntu-font-family ttf-opensans ttf-freefont ttf-droid terminus-font ttf-roboto ttf-roboto-mono

yay -S ttf-icomoon-feather ttf-material-design-iconic-font ttf-material-design-icons-extended ttf-ms-fonts ttf-font-awesome-5 otf-font-awesome-5

fc-cache -vf

# Install Firewall
sudo pacman -S --needed ufw && sudo systemctl enable ufw.service && sudo systemctl start ufw.service && sudo ufw enable

# Install Software
sudo pacman -S --needed git curl grep wget nano neovim bat which btop xdg-desktop-portal xdg-desktop-portal-kde cifs-utils findutils jq man tldr mesa openbsd-netcat zip unzip gzip ark unrar p7zip bzip2 psensor sed android-tools android-udev ntfs-3g sshfs binutils kitty imlib2 xdg-utils zimg tumbler inetutils pacman-contrib hunspell-en_us hunspell-nl bluez bluez-utils bluez-tools bluez-hid2hci duf dust dog lsd bridge-utils cmake cpio edk2-shell fastfetch gdb nmap sassc seatd exiv2 dbus fuse2 lshw inxi acpi vulkan-tools smartmontools mesa-utils lvm2 hddtemp micro pipewire lib32-pipewire pipewire-jack lib32-pipewire-jack pipewire-audio pipewire-alsa pipewire-pulse wireplumber qjackctl alsa-utils zsh zsh-autosuggestions zsh-completions zsh-history-substring-search zsh-syntax-highlighting bash-completion transmission-remote-gtk signal-desktop mpv vlc bitwarden steam scrcpy filezilla zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps monero-gui handbrake krita dolphin dolphin-plugins kmail merkuro discord solaar kolourpaint lutris mangohud okular inkscape rsync rclone openvpn wireguard-tools yubikey-manager yubikey-personalization-gui obs-studio wine wine-mono wine-gecko winetricks zenity giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader plasma-disks plasma-nm plasma-pa plasma-firewall plasma-systemmonitor kde-gtk-config kdepim-addons sddm sddm-kcm kalarm kcalc kdeconnect okular ark ffmpegthumbs fwupd kde-cli-tools kdegraphics-thumbnailers kdenetwork-filesharing kimageformats kinfocenter kio-admin kio-extras kio-fuse libappindicator-gtk3 libreoffice-fresh blender partitionmanager reflector timeshift viewnior xorg vdpauinfo nvidia-dkms nvidia-utils nvidia-settings lib32-nvidia-utils nvidia-libgl lib32-nvidia-libgl vulkan-icd-loader lib32-vulkan-icd-loader libvdpau mesa vdpauinfo libglvnd libva libva-utils lib32-mesa lib32-libvdpau lib32-libva-vdpau-driver lib32-libglvnd lib32-libva wine giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader cuda

# Install yay Software
yay -S anytype-bin minecraft-launcher ani-cli manga-cli-git feishin-bin bibata-cursor-theme thorium-browser-bin spotify floorp-bin discord-ptbc proton-mail-bin rustdesk-bin slack-desktop timeshift-systemd-timer ventoy-bin woeusb-ng

yay -S parsec-bin

sudo systemctl enable sddm
sudo systemctl daemon-reload
sudo systemctl enable timeshift-systemd-timer
