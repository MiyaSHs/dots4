{ pkgs, ... }: 
{
  programs.kitty = {
    enable = true;

    font = {
      name = "CaskaydiaCove Nerd Font";
    };

    settings = {
      confirm_os_window_close = 0;
      background_opacity = "0.80";  
      enable_audio_bell = false;
    };
  };
}
