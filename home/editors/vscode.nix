{
  pkgs,
  config,
  ...
}: {

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      yzhang.markdown-all-in-one
      dsznajder.es7-react-js-snippets
      
    ];
  };

}
