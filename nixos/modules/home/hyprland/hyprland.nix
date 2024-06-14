{ inputs, pkgs, ...}: 
{
  home.packages = with pkgs; [
    waypaper
    swww
    inputs.hypr-contrib.packages.${pkgs.system}.grimblast
    hyprpicker
    grim
    slurp
    cliphist
    direnv
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
      # hidpi = true;
    };
    # enableNvidiaPatches = false;
    systemd.enable = true;
    systemd.variables = ["--all"];
  };
}
