{
  plugins.neo-tree = {
    enable = true;
    settings = {
      close_if_last_window = true;
      filesystem.window.mappings."\\" = "close_window";
    };
  };

  keymaps = [
    {
      key = "\\";
      action = "<CMD>Neotree reveal<CR>";
      options = {
        desc = "NeoTree reveal";
        silent = true;
      };
    }
  ];
}
