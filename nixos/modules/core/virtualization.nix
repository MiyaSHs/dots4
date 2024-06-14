{ config, pkgs, username, ... }:
{
  # Add user to libvirtd group
  users.users.${username}.extraGroups = [ "libvirtd" "kvm" "adbusers" ];

  # Install necessary packages
  environment.systemPackages = with pkgs; [
  ];
  
  # ADB
  programs.adb.enable = true;
}
