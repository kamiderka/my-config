{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neofetch
    onefetch
    ipfetch
    cpufetch
    ramfetch
    starfetch
    octofetch
    htop
    bottom
    btop
    zfxtop
    kmon

    vulkan-tools
    clinfo
    # vdpauinfo
    # libva-utils
    nvtop
    wlr-randr
    gpu-viewer
    dig
    speedtest-rs
  ];
}
