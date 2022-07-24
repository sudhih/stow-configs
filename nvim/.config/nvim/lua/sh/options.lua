local options = { 
    -- about opened files
    backup = false,                         -- creates a backup file
    swapfile = false,                       -- don't create swap files
    clipboard = "unnamed",                  -- allow neovim to aceess system clipboard
    conceallevel = 0,                       -- so that `` is visible in markdown files
    fileencoding = "utf-8",                 -- the encoding written to a file
    undofile = true,                        -- enable persistent undo
    writebackup = false,                    -- if a file is being edited by another program (or was written to file while editing with aother program), it is not allowed to be edited

    -- about appearance
    cmdheight = 2,                          -- more space in the neovim cmd line for displaying messages
    showmode = true,                       -- we don't need to see -- INSERT -- anymore
    showtabline = 2,                        -- always show tabs
    cursorline = true,                      -- highlight the current line
    number = true,                          -- show number in each line
    relativenumber = false,                 -- set relative numbered lines
    numberwidth = 4,                        -- set number column width to 4
    signcolumn = "yes",                     -- always show sign column, otherwise it would shift the text weach time
    pumheight = 10,                         -- pop up menu height

    -- about search
    hlsearch = true,                        -- highlight all the matches on previous search pattern
    ignorecase = true,                      -- ignore case in search pattern
    incsearch = true,

    -- about mouse support
    mouse = "a",                            -- allow mouse to be used in neovim
    scrolloff = 5,                          -- 

    -- about typing
    expandtab = true,                       -- convert tabs to spaces
    shiftwidth = 4,                         -- the number of spaces inserted for each indentation
    tabstop = 4,                            -- insert 4 spaces for each tab
    smartcase = true,                       -- smart case
    smartindent = true,                     -- make indenting smarter again
    timeoutlen = 1000,                      -- time to wait for a mapped sequence to complete (in milliseconds)
    updatetime = 300,                       -- faster completion (4000ms default)

    -- about splits
    splitbelow = true,                      -- force all horizontal splits to go below the current window
    splitright = true,                      -- force all vertical splits to go right of the current window

    completeopt = { "menuone", "noselect" },-- mostly just for cmp
    -- termiguicolors = true,                   -- set term gui colors (most terminals support this)
}

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
--vim.cmd [[set formatoptions-=cro]]

vim.opt.shortmess:append "c"
for k, v in pairs(options) do
    vim.opt[k] = v
end

