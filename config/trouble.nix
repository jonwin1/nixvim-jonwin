{
    plugins.trouble = {
        enable = true;
        settings = {
            auto_close = true;
        };
    };
    keymaps = [
        {
            mode = "n";
            key = "<leader>x";
            action = "+diagnostics/quickfix";
        }
        {
            mode = "n";
            key = "<leader>xx";
            action = "<cmd>TroubleToggle<cr>";
            options.desc = "TroubleToggle";
        }
        {
            mode = "n";
            key = "<leader>xw";
            action = "<cmd>TroubleToggle workspace_diagnostics<cr>";
            options.desc = "Workspace Diagnostics (Trouble)";
        }
        {
            mode = "n";
            key = "<leader>xd";
            action = "<cmd>TroubleToggle document_diagnostics<cr>";
            options.desc = "Document Diagnostics (Trouble)";
        }
        {
            mode = "n";
            key = "<leader>xt";
            action = "<cmd>TroubleToggle todo<cr>";
            options.desc = "Todo (Trouble)";
        }
        {
            mode = "n";
            key = "<leader>xr";
            action = "<cmd>TroubleToggle lsp_references<cr>";
            options.desc = "Lsp References (Trouble)";
        }
    ];
}
