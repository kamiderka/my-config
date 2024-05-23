{pkgs, ...}: {
  nixpkgs.config = {
    programs.npm.npmrc = ''
      prefix = ''${HOME}/.npm-global
    '';
  };

  home.packages = with pkgs; [

    #-- javascript/typescript --#
    nodePackages.nodejs
    nodePackages.typescript
    nodePackages.typescript-language-server
    # HTML/CSS/JSON/ESLint language servers extracted from vscode
    nodePackages.vscode-langservers-extracted
    nodePackages."@tailwindcss/language-server"
    emmet-ls

  ];
}