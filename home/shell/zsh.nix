{
  pkgs, 
  config,
  ... 
} : {

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;

    shellAliases = {
      ll = "ls -l";
      rebuild = "sudo nixos-rebuild switch";
    };

    histSize = 10000;
    histFile = "${config.xdg.dataHome}/zsh/history";
  };

}
