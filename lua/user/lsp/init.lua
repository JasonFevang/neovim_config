-- Language server protocol support for neovim.
-- There is native support for connecting to language servers in neovim
-- The plugin "williamboman/nvim-lsp-installer" is an installer to allow
-- easily installing LSP servers from a maintained list.
-- This allows for syntax errors on the fly

-- The list of supported commands and their keybindings are in `./handlers.lua`
-- for example, <g-d> is go to definition

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
