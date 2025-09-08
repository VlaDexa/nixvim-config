{
  imports = [
    ./mini
    ./blink-cmp.nix
    ./conform.nix
    ./gitsigns.nix
    ./neo-tree.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
  ];
  plugins = {
    web-devicons.enable = true;
    lazydev.enable = true;
    sleuth.enable = true;
    nvim-autopairs.enable = true;
    todo-comments = {
      enable = true;
      settings.signs = false;
    };
    friendly-snippets.enable = true;
    indent-blankline.enable = true;
    rustaceanvim.enable = true;
    copilot-vim.enable = true;
  };
}
