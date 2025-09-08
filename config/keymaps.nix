{ lib, ... }:
{
  keymaps = [
    {
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
      mode = "n";
      options.desc = "Clear highlights on search";
    }
    # Diagnostic keymaps
    {
      key = "<leader>e";
      action = lib.nixvim.mkRaw "vim.diagnostic.open_float";
      mode = "n";
      options.desc = "Show diagnostic [E]rror messages";
    }
    {
      key = "<leader>q";
      action = {
        __raw = ''vim.diagnostic.setloclist'';
      };
      mode = "n";
      options.desc = "Open diagnostic [Q]uickfix list";
    }
    {
      key = "gK";
      action = {
        __raw = ''
          function()
            local new_config = not vim.diagnostic.config().virtual_lines
            vim.diagnostic.config { virtual_lines = new_config }
          end
        '';
      };
      mode = "n";
      options.desc = "Toggle diagnostic virtual_lines";
    }
    # Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
    # for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
    # is not what someone will guess without a bit more experience.
    #
    # NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
    # or just use <C-\><C-n> to exit terminal mode
    {
      key = "<Esc><Esc>";
      action = "<C-\\><C-n>";
      mode = "t";
      options.desc = "Exit terminal mode";
    }
  ];
}
