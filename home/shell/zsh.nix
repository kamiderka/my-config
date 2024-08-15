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
    enableVteIntegration = true;


    shellAliases = {
      ll = "ls -l";
      rebuild = "sudo nixos-rebuild switch";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
    };

      initExtra = /*zsh*/''
        HISTFILE="$HOME/.zsh_history"
        HISTSIZE="10000"
        SAVEHIST="10000"
        setopt extendedglob hist_ignore_all_dups
        unsetopt autocd nomatch
        bindkey -v
        ZSH_AUTOSUGGEST_STRATEGY=(history completion)
        source ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh
        eval "$(${pkgs.oh-my-posh}/bin/oh-my-posh init zsh --config ${./theme/tonybaloney.omp.json})"
      '';
    };
  }