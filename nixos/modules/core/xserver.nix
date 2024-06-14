{ pkgs, ... }: 
{
  services.xserver = {
    enable = true;
    displayManager.startx.enable = true;
    xkb = {
      layout = "us";
      variant = "colemak";
    };
  };
}
