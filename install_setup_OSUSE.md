### cosmic de :

==== '''Installation Instructions''' ====

Tumbleweed:

 zypper addrepo --refresh https://download.opensuse.org/repositories/X11:COSMIC:Next/openSUSE_Factory/X11:COSMIC:Next.repo
 zypper refresh

If you wish to install a full cosmic desktop:

 zypper install patterns-cosmic-cosmic

For minimal setup (Firefox & minimal cosmic desktop components):

 zypper install patterns-cosmic-basic

### removing junk that comes with kde plasma install : 
sudo zypper rm \
    libreoffice* \
    kontact* \
    kmail* \
    akregator* \
    korganizer* \
    kaddressbook* \
    dragonplayer* \
    elisa* \
    kmahjongg* \
    kmines* \
    kpat*

zypper se -i | grep -Ei 'kde|plasma'

### installing minimal kde :
sudo zypper install plasma6-desktop
sudo zypper install \
    plasma6-workspace \
    plasma6-session \
    dolphin \
    konsole \
    systemsettings6

### login manager : 
rpm -q sddm
sudo zypper install sddm
sudo systemctl enable sddm

### hyprland :

sudo zypper install -y hyprland hyprpaper hyprlock hypridle kitty waybar rofi-wayland dunst wl-clipboard grim slurp brightnessctl playerctl pavucontrol network-manager-applet polkit-kde-agent qt5-wayland qt6-wayland cliphist mako swaync xdg-desktop-portal-hyprland nwg-look hyprcursor

### universal packages :
sudo zypper install -y falkon telegram-desktop discord mpv vlc ffmpeg zathura calibre blender kdeconnect-kde bleachbit flatpak neovim vim ptyxis fish starship git lazygit cmake rsync zellij fd yazi aria2 curl wget zoxide ripgrep fzf bat eza fastfetch htop btop npm24 yarn nodejs python3

