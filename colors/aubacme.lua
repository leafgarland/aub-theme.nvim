vim.cmd[[ packadd aub-theme-nvim ]]

package.loaded["aub-theme-nvim.main"]=nil
local aub = require'aub-theme-nvim.main'

local colors
if vim.o.background == "dark" then
  colors = aub.stddark()
  termcolors = colors
  aub.theme(colors)
else
  colors = aub.acmelight()
  termcolors = aub.stdlight()
  aub.acmetheme(colors)
end

aub.termcolors(termcolors)
