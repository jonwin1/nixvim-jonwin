{
  plugins = {
    treesitter = {
      enable = true;
      indent = true;
      nixvimInjections = true;
      nixGrammars = true;
      ignoreInstall = ["latex"];
    };

    treesitter-context.enable = true;
  };
}
