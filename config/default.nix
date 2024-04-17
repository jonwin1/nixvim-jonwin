{
  # Import all your configuration modules here
  imports = [
    ./cmp.nix
    ./color.nix
    ./fidget.nix
    ./harpoon.nix
    ./lsp.nix
    ./markdown-preview.nix
    ./opts.nix
    ./remap.nix
    ./telescope.nix
    ./todo-comments.nix
    ./treesitter.nix
    ./undotree.nix
    ./vimtex.nix
    ./whichkey.nix
  ];

  viAlias = true;
  vimAlias = true;
}
