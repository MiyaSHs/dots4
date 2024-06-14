{ inputs, nixpkgs, self, username, host, ...}:
{
  imports =
       [ (import ./catppuccin.nix) ]
    ++ [ (import ./bootloader.nix) ]
    ++ [ (import ./hardware.nix) ]
    ++ [ (import ./xserver.nix) ]
    ++ [ (import ./network.nix) ]
    ++ [ (import ./pipewire.nix) ]
    ++ [ (import ./program.nix) ]
    ++ [ (import ./security.nix) ]
    ++ [ (import ./services.nix) ]
    ++ [ (import ./system.nix) ]
    ++ [ (import ./user.nix) ]
    ++ [ (import ./wayland.nix) ]
    ++ [ (import ./virtualization.nix) ]
    ++ [ (import ./mouse.nix) ]
    ++ [ (import ./printing.nix) ]
    ++ [ (import ./steam.nix) ];
}
