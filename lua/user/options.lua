-- Contains all the vim options that get set on startup
vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 0                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
-- Set a shorter timeout length for key codes. Complex keys sent to vim as
-- a sequence of normal keys. If you press F1 and that's actually
-- <esc>0*H, or something weird like that, vim receives them so fast that it's
-- like this has got to be F1, but if it's slow, then it's from a human so the
-- seperate keys are interpretted. Basically ttimeoutlen is the threshold between 
-- fast and slow. Default is 1000s which is hella slow, speed it up here so
-- when I press <esc> it actually escapes right away, not after a second
vim.opt.ttimeoutlen = 20 -- in milliseconds
-- similar to ttimeoutlen but for mappings, not key-codes. Example my custom
-- mapping for Goyo, <C-g><C-g>, conflicts with <C-g> to display current 
-- file name and position. <C-g> will wait for timeoutlen ms for the second <C-g>. 
-- If it doesn't arrive, then it will display the information
vim.opt.timeoutlen = 800                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 4                          -- the number of spaces inserted for each indentation TODO: Look into making this vary depending on file type/project?
vim.opt.tabstop = 4                             -- insert 4 spaces for a tab
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.opt.laststatus = 3
vim.opt.showcmd = false
vim.opt.ruler = false
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
vim.opt.fillchars.eob=" "
vim.opt.shortmess:append "c"
vim.opt.whichwrap:append("<,>,[,]")
-- I don't like this, "-" should separate words
--vim.opt.iskeyword:append("-")

-- Set the shell to use powershell if running on windows
-- see `:help shell-powershell for more info`
if vim.fn.has("win32") == 1 then
    vim.opt.shell = 'powershell'
    vim.opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
    vim.opt.shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait'
    vim.opt.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
    vim.opt.shellquote= ""
    vim.opt.shellxquote= ""
end
