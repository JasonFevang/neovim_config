-- When starting neovim, this script gets excecuted to load all the plugins
-- and apply all options. Use `g-d` to go to the definition for each of these
-- to jump to the files

require "user.impatient"
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.autocommands"
require "user.colorscheme"
require "user.cmp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.illuminate"
require "user.indentline"
require "user.alpha"
require "user.surround"
require "user.lsp"
require "user.dap"

-- Try to source a file called .nvimlocal.lua
-- I will put project specific vim options here.
-- Example: Use tabs for this project, etc
vim.cmd("silent! source .nvimlocal.lua")
