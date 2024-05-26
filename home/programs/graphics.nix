{
  lib, 
  pkgs,
  ...
}: {

  home.packages = with pkgs; [
    
    # Screenshoting tools
    flameshot 
    
    # 2D drawing tools
    drawio 
    
  ];
}

