{ inputs, pkgs, ... }:
{
  programs.hyprland = {
    enable = true;
  };
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
    ];
  };
}
