{
    plugins = {
        treesitter = {
            enable = true;
            nixvimInjections = true;
            nixGrammars = true;
            settings = {
                indent.enable = true;
                ignore_install = ["latex"];
            };
        };

        treesitter-context.enable = true;
        rainbow-delimiters.enable = true;
    };
}
