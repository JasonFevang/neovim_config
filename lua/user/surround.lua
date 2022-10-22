-- Surround selections, stylishly
-- This file doesn't actually do anything really, but configurations
-- would go here

local status_ok, surround = pcall(require, "nvim-surround")
if not status_ok then
  return
end

surround.setup({
    delimiters = {
        pairs = {
            ["*"] = {'*', '*'}
        }
    },
})

