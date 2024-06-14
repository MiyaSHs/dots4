{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    gimp
    gtrash                            # rm replacement, put deleted files in system trash
    libreoffice
    cinnamon.nemo-with-extensions     # file manager
    cmatrix
    gparted                           # partition manager
    kdePackages.gwenview
    killall
    man-pages		              # extra man pages
    pamixer
    pavucontrol                       # pulseaudio volume controle (GUI)
    playerctl                         # controller for media players
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    cliphist                          # clipboard manager
    qalculate-gtk                     # calculator
    unzip
    unrar
    appimage-run
    xdg-utils
    xorg.xeyes
    protonup-qt
    obs-studio
    miru
    ryujinx
    lutris
    signal-desktop
    xivlauncher
    blender
    krita
    gimp
    qbittorrent
    wine
    adwsteamgtk
    fastfetch
    easyeffects
    qpwgraph
    vulkan-tools
    kdePackages.qtstyleplugin-kvantum
    wget
    selectdefaultapplication
    catppuccinifier-gui
    catppuccinifier-cli
  ]);
}
