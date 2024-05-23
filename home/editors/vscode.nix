{
  pkgs,
  config,
  ...
}: {

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      yzhang.markdown-all-in-one
      vscode-icons-team.vscode-icons      
      esbenp.prettier-vscode
       
      
      
    ];
  };

}
