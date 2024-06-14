{ config, pkgs, ... }:
{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "awoeeq";
  home.homeDirectory = "/home/awoeeq";
  
  # Catppuccin
  catppuccin = {
    enable = true;
    accent = "sky";
    flavor = "mocha";
  };

  # Hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.variables = ["--all"];
  };

  #qt = {
  #  enable = true;
  #  style = {
  #    name = "kvantum";
  #  };
  #};
  
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    plugins = [
    ];
  };

  programs.starship = {
    enable = true;
  };

  programs.fish = {
    enable = true;
  };

  programs.kitty = {
    enable = true;
  };

  programs.btop = {
    enable = true;
  };
  
  programs.cava = {
    enable = true;
  };

  programs.mpv = {
    enable = true;
  };

  programs.git = {
    enable = true;
  };

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home.packages = with pkgs; [
    librewolf
    brave
    xorg.xeyes
    ipfetch
    piper
    protonup-qt
    nheko
    cinny-desktop
    element-desktop
    obs-studio
    miru
    ryujinx
    lutris
    kate
    signal-desktop
    unzip
    unrar
    xivlauncher
    blender
    krita
    gimp
    vesktop
    qbittorrent
    wine
    appimage-run
    adwsteamgtk
    youtube-music
    fastfetch
    easyeffects
    qpwgraph
    vulkan-tools
    nerdfonts
    kdePackages.qtstyleplugin-kvantum
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/awoeeq/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
