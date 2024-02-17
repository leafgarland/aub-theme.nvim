vim.cmd[[ packadd aub-theme-nvim ]]

package.loaded["aub-theme-nvim.main"]=nil
local aub = require'aub-theme-nvim.main'

local colors
if vim.o.background == "dark" then
  colors = aub.stddark()
  colors.use_italics = false
  aub.theme(colors)
else
  colors = aub.stdlight()
  colors.use_italics = false
  aub.theme(colors)
end

aub.termcolors(colors)
