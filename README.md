# NixVim-Jonwin

My neovim config for NixOS.

## Testing on nix system

```
nix run github:jonwin1/nixvim-jonwin
```
or
```
nix run .
```
from cloned directory.

## Installing on NixOS

Add the configuration as an input

```
inputs.nixvim.url = "github:jonwin1/nixvim-jonwin"
```

Then add this to configuration.nix

```
environment = {
  systemPackages = with pkgs; [
    inputs.nixvim.packages."x86_64-linux".default
  ];
};
```

## Current plugins

- colorscheme:
  - ...
- completion:
- lsp:
