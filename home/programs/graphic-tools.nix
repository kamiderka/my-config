{
  lib, 
  pkgs,
  ...
}: {

  home.packages = with pkgs; [
    flameshot # Screenshot tool
  ];
}

