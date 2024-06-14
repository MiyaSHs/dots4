{ pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = [
    pkgs.nerdfonts
    pkgs.twemoji-color-font
    pkgs.noto-fonts-emoji
    pkgs.font-awesome
  ];

  home.pointerCursor = {
    name = "catppuccin-sky-cursor";
    package = pkgs.catppuccin-cursors.mochaSky;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };

  gtk = {
    enable = true;
    iconTheme.name = "Papirus-Dark";
    catppuccin = {
      enable = true;
      icon.enable = true; 
    };
    font = {
      name = "CaskaydiaCove Nerd Font";
      size = 11;
    };
  };

  qt = {
    enable = true;
    style = {
      name = "kvantum";
    };
  };
}
