{ lib, ... }:
let
  mkFunction = body: lib.nixvim.mkRaw "function() ${body} end";
in
{
  plugins.telescope.enable = true;
  plugins.telescope.extensions.file-browser.enable = true;

  keymaps = [
    {
      key = "<leader><leader>";
      action = mkFunction "require('telescope.builtin').buffers()";
      options.desc = "[ ] Find existing buffers";
    }
    {
      key = "<leader>s.";
      action = mkFunction "require('telescope.builtin').oldfiles()";
      options.desc = "[S]earch Recent Files (\".\" for repeat)";
    }
    {
      key = "<leader>s/";
      action = mkFunction ''require('telescope.builtin').live_grep { grep_open_files = true, prompt_title = 'Live Grep in Open Files', } '';
      options.desc = "[S]earch [/] in Open Files";
    }
    {
      key = "<leader>sd";
      action = mkFunction "require('telescope.builtin').diagnostics()";
      options.desc = "[S]earch [D]iagnostics";
    }
    {
      key = "<leader>sf";
      action = mkFunction "require('telescope').extensions.file_browser.file_browser()";
      options.desc = "[S]earch [F]iles";
    }
    {
      key = "<leader>sg";
      action = mkFunction "require('telescope.builtin').live_grep()";
      options.desc = "[S]earch by [G]rep";
    }
    {
      key = "<leader>sh";
      action = mkFunction "require('telescope.builtin').help_tags()";
      options.desc = "[S]earch [H]elp";
    }
    {
      key = "<leader>sk";
      action = mkFunction "require('telescope.builtin').keymaps()";
      options.desc = "[S]earch [K]eymaps";
    }
    {
      key = "<leader>sr";
      action = mkFunction "require('telescope.builtin').resume()";
      options.desc = "[S]earch [R]esume";
    }
    {
      key = "<leader>ss";
      action = mkFunction "require('telescope.builtin').builtin()";
      options.desc = "[S]earch [S]elect Telescope";
    }
    {
      key = "<leader>sw";
      action = mkFunction "require('telescope.builtin').grep_string()";
      options.desc = "[S]earch current [W]ord";
    }
  ];
}
