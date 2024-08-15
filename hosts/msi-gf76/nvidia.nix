{ config, lib, pkgs, ... }:
{

  hardware = {
    
    # Enable OpenGL
    opengl.enable = true;
    
    # Most wayland compositors need this
    nvidia.modesetting.enable = true;

  };



}
