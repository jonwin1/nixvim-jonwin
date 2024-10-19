{
  config.opts = {
    number = true;
    relativenumber = true;

    hlsearch = false;
    incsearch = true;
    inccommand = "split";
    termguicolors = true;

    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;
    expandtab = true;
    autoindent = true;

    wrap = true;
    linebreak = true;
    colorcolumn = "80";
    signcolumn = "yes";
    cursorline = true;
    scrolloff = 10;
    sidescrolloff = 10;

    ignorecase = true;
    smartcase = true;
    smartindent = true;
    breakindent = true;

    mouse = "";
    clipboard = "unnamedplus";

    swapfile = false;
    backup = false;
    #undodir = os.getenv("HOME") .. "/.vim/undodir";
    undofile = true;

    updatetime = 50;
    timeoutlen = 300;
  };
  config.extraConfigLua = ''
    vim.opt.formatoptions:remove "o"

    vim.cmd([[autocmd FileType tex set textwidth=80]])

    vim.api.nvim_create_autocmd('TextYankPost', {
      desc = 'Highlight when yanking (copying) text',
      group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
      callback = function()
        vim.highlight.on_yank()
      end,
    })
  '';
}
