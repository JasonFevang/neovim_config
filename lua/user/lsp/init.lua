-- Language server protocol support for neovim.
-- There is native support for connecting to language servers in neovim.
-- `mason.nvim` is a Neovim plugin that allow you to easily manage external
-- editor tooling such as LSP servers, DAP servers, linters, and formatters
-- through a single interface.

-- The list of supported commands and their keybindings are in `./handlers.lua`
-- for example, <g-d> is go to definition

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
