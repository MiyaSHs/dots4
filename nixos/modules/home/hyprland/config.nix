{ ... }: 
{
  wayland.windowManager.hyprland = {
    settings = {
      
      # autostart
      exec-once = [
        "waypaper --restore"
        "waybar"
        "wl-paste --type text --watch cliphist store"
	"wl-paste --type image --watch cliphist store"
      ];

      input = {
        kb_layout = "us";
	kb_variant = "colemak";
        numlock_by_default = true;
        follow_mouse = 1;
	accel_profile = "flat";
        sensitivity = -0.97;
      };

      general = {
        layout = "dwindle";
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
        "col.active_border" = "$accent";
        "col.inactive_border" = "$crust";
      };

      dwindle = {
        preserve_split = "yes";
      };

      decoration = {
        rounding = 15;
        # active_opacity = 0.90;
        # inactive_opacity = 0.90;
        # fullscreen_opacity = 1.0;

        blur = {
          enabled = true;
          size = 3;
          passes = 2;
          # size = 4;
          # passes = 2;
          brightness = 1;
          ignore_opacity = true;
          noise = 0;
          new_optimizations = true;
          xray = true;
	  vibrancy = 0.1696;
        };

        drop_shadow = false;
      };

      animations = {
        enabled = true;

        bezier = [
	  "myBezier, 0.05, 0.9, 0.1, 1.05"
        ];

        animation = [
          "windows, 1, 5, myBezier"
	  "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
	  "borderangle, 1, 8, default"
	  "fade, 1, 7, default"
	  "workspaces, 1, 6, default"
        ];
      };

      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "nemo";
      "$menu" = "wofi --show drun";
      "$browser" = "librewolf";

      bind = [
        # keybindings
        "$mainMod, C, exec, $terminal"
        "$mainMod, T, exec, $browser"
        "$mainMod, Q, killactive,"
        "$mainMod, F, fullscreen, "
        "$mainMod, A, togglefloating,"
        "$mainMod, S, exec, $menu"
        "$mainMod, L, exec, swaylock"
        "$mainMod, R, togglesplit,"
        "$mainMod, W, exec, $fileManager"

        # screenshot
        "$mainMod, V, exec, grimblast --notify --cursor --freeze save area ~/Pictures/$(date +'%Y-%m-%d-At-%Ih%Mm%Ss').png"
        "$mainMod SHIFT, V, exec, grimblast --notify --cursor --freeze copy area"

        # switch focus
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # switch workspace
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        # switch current window to workspace
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        # media and volume controls
        ",XF86AudioRaiseVolume,exec, pamixer -i 2"
        ",XF86AudioLowerVolume,exec, pamixer -d 2"
        ",XF86AudioMute,exec, pamixer -t"
        ",XF86AudioPlay,exec, playerctl play-pause"
        ",XF86AudioNext,exec, playerctl next"
        ",XF86AudioPrev,exec, playerctl previous"
        ",XF86AudioStop, exec, playerctl stop"

	# scroll through workspaces
        "$mainMod, mouse_down, workspace, e-1"
        "$mainMod, mouse_up, workspace, e+1"

        # clipboard manager
        "$mainMod, X, exec, cliphist list | wofi --dmenu | cliphist decode | wl-copy"
      ];

      # mouse binding
      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      # windowrule
      windowrule = [
      ];

      # windowrulev2
      windowrulev2 = [
        "suppressevent maximize, class:.*"
        "float, title:^(Picture-in-Picture)$"
        "pin, title:^(Picture-in-Picture)$"
        "float,class:^(pavucontrol)$"
        "float,class:^(file_progress)$"
        "float,class:^(confirm)$"
        "float,class:^(dialog)$"
        "float,class:^(download)$"
        "float,class:^(notification)$"
        "float,class:^(error)$"
        "float,class:^(confirmreset)$"
        "float,title:^(Open File)$"
        "float,title:^(branchdialog)$"
        "float,title:^(Confirm to replace files)$"
        "float,title:^(File Operation Progress)$"
      ];

    };

    extraConfig = "
      monitor=DP-3,1920x1080@240,auto,auto
    ";
  };
}

