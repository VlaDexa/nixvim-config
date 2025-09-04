{ lib, pkgs, ... }:
{
  globals.disable_autoformat = false;

  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = false;
      formatters_by_ft = {
        nix = [
          (lib.getExe pkgs.nixfmt-rfc-style)
        ];
        typescriptreact = [
          (lib.getExe pkgs.prettierd)
        ];
        typescript = [
          (lib.getExe pkgs.prettierd)
        ];
      };
      format_on_save = lib.nixvim.mkRaw ''
        function(bufnr)
          -- Disable with a global or buffer-local variable
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end
          -- Disable "format_on_save lsp_fallback" for languages that don't
          -- have a well standardized coding style. You can add additional
          -- languages here or re-enable it for the disabled ones.
          local disable_filetypes = { c = true, cpp = true }
          if disable_filetypes[vim.bo[bufnr].filetype] then
            return nil
          else
            return {
              timeout_ms = 500,
              lsp_format = 'fallback',
            }
          end
        end
      '';
    };
  };

  opts.formatexpr = "v:lua.require'conform'.formatexpr()";

  keymaps = [
    {
      key = "<leader>f";
      action = lib.nixvim.mkRaw "function() require('conform').format { async = true, lsp_format = 'fallback' } end";
      options.desc = "[F]ormat buffer";
    }
  ];
}
