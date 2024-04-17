# NixVim-Jonwin

My neovim config for NixOS.

## Testing on nix system
To test the configuration on an system with nix run the following command

```
nix run github:jonwin1/nixvim-jonwin
```
or from a cloned directory with:
```
nix run .
```

## Installing into NixOS configuration

Add the configuration as an input

```
inputs.nixvim.url = "github:jonwin1/nixvim-jonwin";
```

Then add this to your configuration.nix

```
environment = {
  systemPackages = with pkgs; [
    inputs.nixvim.packages.${system}.default
  ];
};
```

## Current plugins

- **[cmp](config/cmp.nix):** Completions
- **[colorscheme](config/color.nix):** gruvbox
- **[fidget](config/fidget.nix):** LSP progress notifications
- **[harpoon](config/harpoon.nix):** Quickly switch between buffers
- **[lsp](config/lsp.nix):** LSP config
- **[telescope](config/telescope.nix):** Fuzzy finder
- **[vimtex](config/vimtex.nix):** A filetype plugin for LaTeX files.
- **[whichkey](config/whichkey.nix):** Keybindings popup
