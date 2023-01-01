vim.cmd[[ packadd aub-theme-nvim ]]

package.loaded["aub-theme-nvim.main"]=nil
local aub = require'aub-theme-nvim.main'

local colors
if vim.o.background == "dark" then
  colors = aub.dark()
  aub.theme(colors)
else
  colors = aub.light()
  aub.theme(colors)
end

aub.termcolors(colors)
