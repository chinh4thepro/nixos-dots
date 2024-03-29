{config, ...}: {
  imports = [
    ./zshrc.nix
    ./aliases.nix
    ./zprofile.nix
  ];
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    autocd = true;

    initExtraBeforeCompInit = ''
      fpath+=(${config.home.profileDirectory}/share/zsh/site-functions)
    '';

    history = {
      expireDuplicatesFirst = true;
      ignoreDups = true;
      ignoreAllDups = true;
      ignoreSpace = true; # ignore commands starting with a space
      save = 20000;
      size = 20000;
      share = true;
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
      ];
      theme = "gentoo";
    };
  };
}

