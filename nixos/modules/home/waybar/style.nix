{ ... }:
{
  programs.waybar.style = ''
    
    @define-color accent @sky;

    * {
        border: none;
        border-radius: 0px;
        padding: 0;
        margin: 0;
        min-height: 0px;
        font-family: CaskaydiaCove Nerd Font;
        font-size: 15px;
    }

    window#waybar {
        background: none;
    }
    #workspaces {
        font-size: 18px;
    }
    #workspaces button {
        color: @accent;
        padding-left:  6px;
        padding-right: 6px;
    }
    #workspaces button.urgent {
        color: @red;
    }
    #workspaces button.active {
        color: @lavender;
    }

    #tray, #pulseaudio, #network, #cpu, #memory, #disk, #clock, #battery {
        font-size: 15px;
        color: @accent;
    }

    #cpu {
        padding-left: 15px;
        padding-right: 9px;
        margin-left: 7px;
    }
    #memory {
        padding-left: 9px;
        padding-right: 9px;
    }
    #disk {
        padding-left: 9px;
        padding-right: 15px;
    }

    #tray {
        padding: 0 20px;
        margin-left: 7px;
    }

    #pulseaudio {
        padding-left: 15px;
        padding-right: 9px;
        margin-left: 7px;
    }
    #network {
        padding-left: 9px;
        padding-right: 15px;
    }
    
    #clock {
        padding-left: 9px;
        padding-right: 15px;
    }

  '';
}
