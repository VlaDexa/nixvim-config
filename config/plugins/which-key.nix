{ lib, ... }:
{
  plugins.which-key = {
    enable = true;
    settings = {
      delay = 0;
      spec = [
        {
          __unkeyed = "<leader>c";
          group = "[C]ode";
          mode = [
            "n"
            "x"
          ];
        }
        {
          __unkeyed = "<leader>ct";
          group = "[T]ests";
        }
        {
          __unkeyed = "<leader>d";
          group = "[D]ocument";
        }
        {
          __unkeyed = "<leader>r";
          group = "[R]ename";
        }
        {
          __unkeyed = "<leader>s";
          group = "[S]earch";
        }
        {
          __unkeyed = "<leader>w";
          group = "[W]orkspace";
        }
        {
          __unkeyed = "<leader>t";
          group = "[T]oggle";
        }
        {
          __unkeyed = "<leader>h";
          group = "Git [H]unk";
          mode = [
            "n"
            "v"
          ];
        }
      ];
    };
  };

  keymaps = [
    {
      key = "<leader>?";
      action = lib.nixvim.mkRaw "function () require('which-key').show { global = false } end";
      options.desc = "Buffer Local Keymaps (which-key)";
    }
  ];
}
