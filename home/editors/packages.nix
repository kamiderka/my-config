{pkgs, ...}: {
  nixpkgs.config = {
    programs.npm.npmrc = ''
      prefix = ''${HOME}/.npm-global
    '';
  };

  home.packages = with pkgs; [

    #-- c/c++
    cmake
    cmake-language-server
    gnumake
    checkmake
    # c/c++ compiler, required by nvim-treesitter!
    gcc
    # c/c++ tools with clang-tools, the unwrapped version won't
    # add alias like `cc` and `c++`, so that it won't conflict with gcc
    llvmPackages.clang-unwrapped
    lldb


    #-- python --#
    nodePackages.pyright # python language server
    (python311.withPackages (
      ps:
        with ps; [
          ruff-lsp
          black # python formatter
          debugpy

          # my commonly used python packages
          jupyter
          ipython
          pandas
          scikit-learn
          
          
          requests
          pyquery
          pyyaml
          boto3

        ]
    ))




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
