{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps = [
    {
      mode = ["n" "i"];
      key = "<left>";
      action = "<cmd>echo \"Use h to move!!\"<CR>";
      options.desc = "which_key_ignore";
    }
    {
      mode = ["n" "i"];
      key = "<right>";
      action = "<cmd>echo \"Use l to move!!\"<CR>";
      options.desc = "which_key_ignore";
    }
    {
      mode = ["n" "i"];
      key = "<up>";
      action = "<cmd>echo \"Use k to move!!\"<CR>";
      options.desc = "which_key_ignore";
    }
    {
      mode = ["n" "i"];
      key = "<down>";
      action = "<cmd>echo \"Use j to move!!\"<CR>";
      options.desc = "which_key_ignore";
    }
    {
      mode = "n";
      key = "[d";
      action = "<CMD>lua vim.diagnostic.goto_prev()<CR>";
      options.desc = "Go to previous [d]iagnostic message";
    }
    {
      mode = "n";
      key = "]d";
      action = "<CMD>lua vim.diagnostic.goto_next()<CR>";
      options.desc = "Go to next [d]iagnostic message";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<CMD>lua vim.diagnostic.open_float()<CR>"; 
      options.desc = "Show diagnostic [e]rror messages";
    }
    {
      mode = "n";
      key = "<leader>q";
      action = "<CMD>lua vim.diagnostic.setloclist()<CR>";
      options.desc = "Open diagnostic [q]uickfix list";
    }
    {
      mode = "n";
      key = "<leader>p";
      action = "<CMD>Ex<CR>";
      options.desc = "Netrw Directory Listing";
    }
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options.desc = "Move selection [J]";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
      options.desc = "Move selection [K]";
    }
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options.desc = "which_key_ignore";
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options.desc = "which_key_ignore";
    }
    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options.desc = "which_key_ignore";
    }
    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options.desc = "which_key_ignore";
    }
    {
      mode = "x";
      key = "<leader>p";
      action = "\"_dP";
      options.desc = "[p]aste without copy";
    }
    {
      mode = ["n" "v"];
      key = "<leader>d";
      action = "\"_d";
      options.desc = "[d]elete without copy";
    }
    {
      mode = "n";
      key = "Q";
      action = "<nop>";
      options.desc = "which_key_ignore";
    }
    {
      mode = "n";
      key = "<leader>f"; 
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
      options.desc = "[f]ormat";
    }
    {
      mode = "n";
      key = "<leader>cs";
      action = ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>";
      options.desc = "Substitute word";
    }
    {
      mode = "v";
      key = "<";
      action = "<gv";
      options.desc = "Indent while remaining in visual mode.";
    }
    {
      mode = "v";
      key = ">";
      action = ">gv";
      options.desc = "Indent while remaining in visual mode.";
    }
    {
      mode = "n";
      key = "<leader>ch";
      action = "<CMD>ClangdSwitchSourceHeader<CR>";
      options.desc = "Switch Source/Header (C/C++)";
    }
  ];
}
