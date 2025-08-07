{
  opts = {
    # Make line numbers default
    number = true;
    # Enable mouse mode, can be useful for resizing splits for example!
    mouse = "a";
    # Don't show the mode, since it's already in the status line
    showmode = false;
    # Enable break indent
    breakindent = true;
    # Save undo history
    undofile = true;
    # Case-insensitive searching UNLESS \C or one or more capital letters in the search term
    ignorecase = true;
    smartcase = true;
    # Keep signcolumn on by default
    signcolumn = "yes";
    # Decrease update time
    updatetime = 250;
    # Decrease mapped sequence wait time
    timeoutlen = 300;
    # Configure how new splits should be opened
    splitright = true;
    splitbelow = true;
    # Sets how neovim will display certain whitespace characters in the editor.
    #  See `:help 'list'`
    #  and `:help 'listchars'`
    list = true;
    listchars = {
      tab = "» ";
      trail = "·";
      nbsp = "␣";
    };
    # Preview substitutions live, as you type!
    inccommand = "split";
    # Show which line your cursor is on
    cursorline = true;
    # Minimal number of screen lines to keep above and below the cursor.
    scrolloff = 10;
    # if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
    # instead raise a dialog asking if you wish to save the current file(s)
    # See `:help 'confirm'`
    confirm = true;
    # Set Russian langmap
    langmap = [
      "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ"
      "фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
    ];
    foldlevel = 99;
  };
}
