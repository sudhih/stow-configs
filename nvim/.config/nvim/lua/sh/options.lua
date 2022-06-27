-- :help options :help vim.opt
local o=vim.opt

-- about opened files
o.backup = False				-- Don't create backup file
o.swapfile = false				-- do not  create swap file
o.clipboard = "unnamed"		-- allow nvim to access system clipboard
o.fileencoding = "utf-8"		-- encoding written to file
o.undofile = true				-- enable persistent undo

-- about appearance
o.cmdheight = 2					-- more space in nvim cmd line for displaying messages
o.cursorline = true				-- highlight line where the cursor is 
o.number = true					-- show line numbers
o.numberwidth = 4 				-- width of number column

-- mouse support & scroll
o.scrolloff = 8
o.mouse = "a"					-- enable mouse support in all NORMAL, VISUAL, INSERT & COMMAND-LINE mode

-- about search
o.hlsearch = true				-- higlight all matches
o.incsearch = true				-- while typing, show where the search pattern is
o.ignorecase = true				-- ignore casee in search pattern
o.smartcase = true				-- override 'ignorecase' if search pattern contains uppercase

-- about indentation
o.smartindent = true
o.autoindent = true
o.smartindent = true			-- indent after a line ending with { or }
o.backspace = {"indent", "eol", "start"}	-- allow backspacing over autoindent, eol & start of the insert
o.expandtab = true				-- convert tabs to spaces
o.shiftwidth = 4				-- no. of spaces inserted for each indentation
o.tabstop = 4					-- no. of spaces to be inserted for eac tab

-- about splits
o.splitbelow = true				-- force horizontal splits to go below current window
o.splitright = true				-- force vertical sprints to go right current window
o.timeoutlen = 300				-- 
