-- Speed up startup time for nvim
-- This should be loaded first in the script, so I'm going to move it to the start in init.lua
-- It actually does make a difference, wow

local status_ok, impatient = pcall(require, "impatient")
if not status_ok then
  return
end

impatient.enable_profile()
