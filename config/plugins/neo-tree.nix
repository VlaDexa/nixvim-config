{
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
    filesystem.window.mappings."\\" = "close_window";
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
