{ lib, ... }:
{
  diagnostic.settings = {
    severity_sort = true;
    float = {
      border = "rounded";
      source = "if_many";
    };
    underline.severity = lib.nixvim.mkRaw "vim.diagnostic.severity.ERROR";
    virtual_text = {
      source = "if_many";
      spacing = 2;
      format = lib.nixvim.mkRaw ''
        function(diagnostic)
          local diagnostic_message = {
            [vim.diagnostic.severity.ERROR] = diagnostic.message,
            [vim.diagnostic.severity.WARN] = diagnostic.message,
            [vim.diagnostic.severity.INFO] = diagnostic.message,
            [vim.diagnostic.severity.HINT] = diagnostic.message,
          }
          return diagnostic_message[diagnostic.severity]
        end
      '';
    };
  };
}
