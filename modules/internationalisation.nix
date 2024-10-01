{ pkgs, ... }:

{
  # Select internationalisation properties.
  services.xserver = {
    xkb.layout = "pl";
    xkb.options = "grp:alt_shift_toggle";
  };
  
  i18n.supportedLocales = [
    "en_US.UTF-8/UTF-8"
    "pl_PL.UTF-8/UTF-8"
  ];
  
  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pl_PL.UTF-8";
    LC_IDENTIFICATION = "pl_PL.UTF-8";
    LC_MEASUREMENT = "pl_PL.UTF-8";
    LC_MONETARY = "pl_PL.UTF-8";
    LC_NAME = "pl_PL.UTF-8";
    LC_NUMERIC = "pl_PL.UTF-8";
    LC_PAPER = "pl_PL.UTF-8";
    LC_TELEPHONE = "pl_PL.UTF-8";
    LC_TIME = "pl_PL.UTF-8";
  };

  environment.systemPackages = with pkgs; [
    nuspell
    hyphen
    hunspell
    hunspellDicts.en_US
    hunspellDicts.pl_PL
  ];
}
