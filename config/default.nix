{
  # Import all your configuration modules here
  imports = [
    ./opts.nix
    ./remap.nix
  ];

  viAlias = true;
  vimAlias = true;

  colorschemes.gruvbox = {
    enable = true;
    settings = {
      transparent_mode = true;
    };
  };
}
