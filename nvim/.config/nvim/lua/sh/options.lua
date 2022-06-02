-- :help options :help vim.opt
local o=vim.opt
o.backup = False				-- Don't create backup file
o.clipboard = "unnamedplus"			-- allow nvim to access system clipboard
o.cmdheight = 2					-- more space in nvim cmd line for displaying messages
o.fileencoding = "utf-8"			-- encoding written to file
o.hlsearch = true				-- higlight all matches
o.incsearch = true				-- while typing, show where the search pattern is
o.mouse = "a"					-- enable mouse support in all NORMAL, VISUAL, INSERT & COMMAND-LINE mode
o.ignorecase = true				-- ignore casee in search pattern
o.smartcase = true				-- override 'ignorecase' if search pattern contains uppercase
o.smartindent = true
o.splitbelow = true				-- force horizontal splits to go below current window
o.splitright = true				-- force vertical sprints to go right current window
o.swapfile = false				-- do not  create swap file
o.timeoutlen = 300				-- 
o.autoindent = true
o.smartindent = true				-- indent after a line ending with { or }
o.backspace = {"indent", "eol", "start"}	-- allow backspacing over autoindent, eol & start of the insert
o.undofile = true				-- enable persistent undo
o.expandtab = true				-- convert tabs to spaces
o.shiftwidth = 4				-- no. of spaces inserted for each indentation
o.tabstop = 4					-- no. of spaces to be inserted for eac tab
o.cursorline = true				-- highlight line where the cursor is 
o.number = true					-- show line numbers
o.numberwidth = 4 				-- width of number column
o.scrolloff = 8
