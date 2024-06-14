{inputs, username, host, ...}: {
  imports =
       [(import ./catppuccin.nix)]                # Automatic Catppuccin theming
    ++ [(import ./audacious/audacious.nix)]       # music player
    ++ [(import ./btop.nix)]                      # resouces monitor 
    ++ [(import ./cava.nix)]                      # audio visualizer
    ++ [(import ./matrix.nix)]                    # matrix clients
    ++ [(import ./browsers.nix)]                  # Browsers
    ++ [(import ./git.nix)]                       # version control
    ++ [(import ./gtk.nix)]                       # gtk theme
    ++ [(import ./hyprland)]                      # window manager
    ++ [(import ./kitty.nix)]                     # terminal
    ++ [(import ./mako.nix)]                      # notification deamon
    ++ [(import ./nvim.nix)]                      # neovim editor
    ++ [(import ./mpv.nix)]
    ++ [(import ./packages.nix)]                  # other packages
    ++ [(import ./starship.nix)]                  # shell prompt
    ++ [(import ./waybar)]                        # status bar
    ++ [(import ./wofi.nix)]                      # launcher
    ++ [(import ./fish.nix)];                      # shell
}
