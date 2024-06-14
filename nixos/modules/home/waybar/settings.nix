{ ... }:
{
  programs.waybar.settings.mainBar = {
    position= "bottom";
    layer= "top";
    height= 5;
    margin-top= 0;
    margin-bottom= 5;
    margin-left= 0;
    margin-right= 0;
    modules-left= [
        "hyprland/workspaces"
    ];
    modules-center= [
        "clock"
    ];
    modules-right= [
        "tray" 
        "cpu"
        "memory"
        "disk"
        "pulseaudio" 
        "network"
    ];
    clock= {
        calendar = {
          format = { today = "<span color='#b4befe'><b><u>{}</u></b></span>"; };
        };
        format = "{:%H:%M}";
        tooltip= "true";
        tooltip-format= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt= "{:%d/%m}";
    };
    "hyprland/workspaces" = {
        format = "{name}";
        on-click= "activate";
        format-icons= {
            urgent= "";
            default = "";
        };
	sort-by-number = "true";
    };
    memory= {
        format= "  {percentage}%";
	inverval= 2;
    };
    cpu= {
        format= "  {usage}%";
        format-alt= "  {avg_frequency} GHz";
        interval= 2;
    };
    disk = {
        # path = "/";
        format = "󰋊  {percentage_used}%";
	tooltip-format = "{used} / {total}";
        interval= 60;
    };
    network = {
        format-wifi = "  {signalStrength}%";
        format-ethernet = "󰀂  {bandwidthTotalBytes}";
        tooltip-format = "Connected to {essid} {ifname} via {gwaddr}";
        format-linked = "{ifname} (No IP)";
        format-disconnected = "󰖪 ";
	inverval= 2;
    };
    tray= {
        #icon-size= 20;
        spacing= 8;
    };
    pulseaudio= {
        format= "{icon} {volume}%";
        format-icons= {
            default= [" "];
        };
        scroll-step= 5;
        on-click= "pavucontrol";
    };
  };
}
