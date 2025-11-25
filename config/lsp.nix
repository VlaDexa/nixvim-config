{ lib, config, ... }:
{
  plugins.lspconfig.enable = true;

  lsp = {
    inlayHints.enable = true;
    servers = {
      clangd.enable = true;
      nixd.enable = true;
      ts_ls.enable = true;
      lua_ls = {
        enable = true;
        config.Lua.completion.callSnippet = "Replace";
      };
      eslint.enable = true;
      csharp_ls.enable = true;
    };
    keymaps = [
      {
        key = "<leader>rn";
        lspBufAction = "rename";
      }
      {
        key = "<leader>ca";
        lspBufAction = "code_action";
      }
      {
        key = "grD";
        lspBufAction = "declaration";
      }
    ]
    ++ lib.optionals config.plugins.telescope.enable [
      {
        key = "gr";
        action = lib.nixvim.mkRaw "require('telescope.builtin').lsp_references";
      }
      {
        key = "gri";
        action = lib.nixvim.mkRaw "require('telescope.builtin').lsp_implementations";
      }
      {
        key = "gd";
        action = lib.nixvim.mkRaw "require('telescope.builtin').lsp_definitions";
      }
      {
        key = "gO";
        action = lib.nixvim.mkRaw "require('telescope.builtin').lsp_document_symbols";
      }
      {
        key = "gW";
        action = lib.nixvim.mkRaw "require('telescope.builtin').lsp_dynamic_workspace_symbols";
      }
      {
        key = "grt";
        action = lib.nixvim.mkRaw "require('telescope.builtin').lsp_type_definitions";
      }
    ];
  };
}
