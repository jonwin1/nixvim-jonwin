{
    plugins.undotree = {
        enable = true;
        settings = {
            autoOpenDiff = true;
            focusOnToggle = true;
        };
    };
    keymaps = [
        {
            mode = "n";
            key = "<leader>u";
            action = "<cmd>UndotreeToggle<CR>";
            options.desc = "UndotreeToggle";
        }
    ];
}
