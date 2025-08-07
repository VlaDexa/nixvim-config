{
  imports = [ ./statusline.nix ];

  plugins = {
    mini-align.enable = true;
    mini-surround.enable = true;
    mini-ai = {
      enable = true;
      settings.n_lines = 500;
    };
  };
}
