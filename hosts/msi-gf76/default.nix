# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ 
      ../../modules/bootloader.nix
      ../../modules/bluetooth.nix
      # ../../modules/disable-nvidia.nix
      ../../modules/environment-variables.nix
      # ../../modules/firewall.nix
      ../../modules/fonts.nix
      ../../modules/gc.nix
      ../../modules/hyprland.nix
      ../../modules/info-fetchers.nix
      ../../modules/internationalisation.nix
      ../../modules/lsp.nix
      # ../../modules/mac-randomize.nix
      ../../modules/networking.nix
      ../../modules/nixpkgs.nix
      ../../modules/nix-settings.nix
      ../../modules/nvidia.nix
      ../../modules/opengl.nix
      ../../modules/open-ssh.nix
      ../../modules/printing.nix
      ../../modules/programming-languages.nix
      ../../modules/screen.nix
      # ../../modules/security-services.nix
      ../../modules/services.nix
      ../../modules/sound.nix
      ../../modules/swap.nix
      ../../modules/system.nix
      ../../modules/terminal-utils.nix
      ../../modules/theme.nix
      ../../modules/time.nix
      # ../../modules/usb.nix
      ../../modules/utils.nix
      ../../modules/virtualisation.nix

      
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./nvidia.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "msi-gf76"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;

  # XDG portal
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];


  # Configure keymap in X11
  services.xserver = {
    layout = "pl";
    xkbVariant = "";
  };

  # Configure console keymap
  console.keyMap = "pl2";

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
