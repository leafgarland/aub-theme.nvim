local _2afile_2a = "fnl/aub-theme-nvim/main.fnl"
local _2amodule_name_2a = "aub-theme-nvim.main"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local color, hsl = require("aub-theme-nvim.color"), require("external.hsluv")
do end (_2amodule_locals_2a)["color"] = color
_2amodule_locals_2a["hsl"] = hsl
local function hl(name, val)
  return vim.api.nvim_set_hl(0, name, val)
end
_2amodule_2a["hl"] = hl
local function theme(_1_)
  local _arg_2_ = _1_
  local paper = _arg_2_["paper"]
  local text = _arg_2_["text"]
  local mix0 = _arg_2_["mix0"]
  local mix1 = _arg_2_["mix1"]
  local mix2 = _arg_2_["mix2"]
  local mix3 = _arg_2_["mix3"]
  local red = _arg_2_["red"]
  local green = _arg_2_["green"]
  local orange = _arg_2_["orange"]
  local yellow = _arg_2_["yellow"]
  local blue = _arg_2_["blue"]
  local purple = _arg_2_["purple"]
  local cyan = _arg_2_["cyan"]
  local red_fg = _arg_2_["red_fg"]
  local green_fg = _arg_2_["green_fg"]
  local orange_fg = _arg_2_["orange_fg"]
  local blue_fg = _arg_2_["blue_fg"]
  local purple_fg = _arg_2_["purple_fg"]
  local cyan_fg = _arg_2_["cyan_fg"]
  local accent = _arg_2_["accent"]
  local accent2 = _arg_2_["accent2"]
  local ui = _arg_2_["ui"]
  local ui_fg = _arg_2_["ui_fg"]
  local accent_mix = _arg_2_["accent_mix"]
  local red_mix = _arg_2_["red_mix"]
  local green_mix = _arg_2_["green_mix"]
  hl("Normal", {fg = text, bg = paper})
  hl("Comment", {fg = accent2, nocombine = false})
  hl("ColorColumn", {bg = mix3})
  hl("Conceal", {})
  hl("Cursor", {})
  hl("lCursor", {})
  hl("CursorIM", {})
  hl("CursorColumn", {})
  hl("CursorLine", {bg = color.mix(mix3, paper, 0.6)})
  hl("Directory", {fg = accent, bold = true})
  hl("DiffAdd", {bg = color.mix(green, paper, 0.5)})
  hl("DiffChange", {})
  hl("DiffDelete", {bg = color.mix(red, paper, 0.5)})
  hl("DiffText", {bg = color.mix(blue, paper, 0.4)})
  hl("TermCursor", {reverse = true})
  hl("TermCursorNC", {})
  hl("ErrorMsg", {fg = red_fg})
  hl("WinSeparator", {fg = ui})
  hl("Folded", {bg = mix3})
  hl("FoldColumn", {link = "Folded"})
  hl("SignColumn", {})
  hl("IncSearch", {fg = "white", bg = accent, bold = true})
  hl("CurSearch", {fg = paper, bg = accent})
  hl("Substitute", {fg = paper, bg = text})
  hl("LineNr", {fg = mix1})
  hl("CursorLineNr", {bold = true, reverse = true, fg = accent})
  hl("CursorLineSign", {link = "CursorLineNr"})
  hl("MatchParen", {fg = accent, bold = true, bg = color.mix(accent, paper, 0.7)})
  hl("MatchParenEnd", {bold = true, fg = color.mix(accent, paper, 0.7)})
  hl("ModeMsg", {})
  hl("MsgArea", {})
  hl("MsgSeparator", {})
  hl("MoreMsg", {})
  hl("NonText", {fg = mix2})
  hl("Normal", {fg = text, bg = paper})
  hl("NormalFloat", {bg = color.mix(paper, text, 0.05), fg = "none"})
  hl("FloatBorder", {bg = color.mix(paper, text, 0.05), fg = accent2})
  hl("NormalNC", {fg = color.mix(text, paper, 0.1)})
  hl("Pmenu", {bg = mix3})
  hl("PmenuSel", {reverse = true})
  hl("PmenuSbar", {bg = mix2})
  hl("PmenuThumb", {})
  hl("Question", {})
  hl("QuickFixLine", {})
  hl("Search", {fg = paper, bg = accent_mix})
  hl("SpecialKey", {})
  hl("SpellBad", {undercurl = true, sp = red_fg})
  hl("StatusLine", {fg = ui_fg, bg = ui})
  hl("StatusLineNC", {fg = mix1, bg = ui})
  hl("User1", {fg = accent, bg = ui, bold = true})
  hl("User2", {fg = accent2, bg = ui, bold = true})
  hl("User3", {fg = mix2, bg = ui, bold = true})
  hl("User4", {fg = green, bg = ui, bold = true})
  hl("StatusModeNormal", {fg = mix1, bg = ui})
  hl("StatusModeInsert", {fg = accent, bg = ui})
  hl("StatusModeCommand", {fg = red_fg, bg = ui})
  hl("StatusModeVisual", {fg = green_fg, bg = ui})
  hl("StatusModeVisualBlock", {fg = green_fg, bg = ui})
  hl("StatusModeVisualLine", {fg = green_fg, bg = ui})
  hl("StatusModeTerminal", {fg = accent2, bg = ui})
  hl("StatusLineError", {bg = ui, fg = red_fg})
  hl("StatusLineWarn", {bg = ui, fg = orange})
  hl("TabLine", {bg = ui, fg = ui_fg})
  hl("TabLineFill", {bg = ui, fg = mix2})
  hl("TabLineSel", {fg = paper, bg = mix0})
  hl("Title", {})
  hl("Visual", {fg = paper, bg = text})
  hl("VisualNOS", {})
  hl("WarningMsg", {})
  hl("Whitespace", {link = "NonText"})
  hl("WildMenu", {fg = paper, bg = text})
  hl("Constant", {})
  hl("String", {fg = mix1, italic = true})
  hl("Character", {link = "String"})
  hl("Identifier", {})
  hl("Statement", {bold = true})
  hl("PreProc", {})
  hl("Type", {})
  hl("Special", {bold = true})
  hl("Delimiter", {bg = "none", fg = mix1})
  hl("Underlined", {underline = true})
  hl("Ignore", {})
  hl("Error", {bg = red})
  hl("Todo", {fg = accent, bold = true})
  hl("LspReferenceText", {fg = accent, bold = true, underline = true})
  hl("LspReferenceRead", {link = "LspReferenceText"})
  hl("LspReferenceWrite", {link = "LspReferenceText"})
  hl("DiagnosticError", {fg = red_fg})
  hl("DiagnosticWarn", {fg = orange_fg})
  hl("DiagnosticInfo", {fg = blue})
  hl("DiagnosticHint", {fg = mix1})
  hl("DiagnosticUnnecessary", {fg = mix1})
  hl("DiagnosticVirtualTextError", {bg = color.mix(paper, red_fg, 0.3), fg = red_fg})
  hl("DiagnosticVirtualTextWarn", {bg = color.mix(paper, orange_fg, 0.3), fg = orange_fg})
  hl("DiagnosticVirtualTextInfo", {bg = color.mix(paper, blue, 0.3), fg = blue})
  hl("DiagnosticVirtualTextHint", {bg = color.mix(paper, mix2, 0.3), fg = mix2})
  hl("LspCodeLens", {link = "DiagnosticVirtualTextHint"})
  hl("TSStringEscape", {fg = accent2})
  hl("TSFunction", {bold = true})
  hl("@punctuation.special", {fg = yellow, bold = true})
  hl("@symbol.clojure", {bold = false})
  hl("@symbol.keyword.clojure", {bold = true})
  hl("@function", {bold = true})
  hl("@function.clojure", {bold = true})
  hl("@symbol", {bold = true})
  hl("@symbol.fennel", {bold = true})
  hl("@function.fennel", {bold = true})
  hl("@variable", {bold = false})
  hl("@variable.bash", {bold = true})
  hl("@field", {fg = accent2, bold = true, nocombine = true})
  hl("@field.yaml", {fg = accent2, bold = true, nocombine = true})
  hl("@string", {link = "String"})
  hl("@string.regex", {link = "String"})
  hl("@string.yaml", {link = "Normal"})
  hl("@boolean", {italic = true})
  hl("@method.clojure_lsp", {italic = true})
  hl("@definition", {underline = true, bold = true})
  hl("@namespace", {underline = true, bold = true, fg = accent})
  hl("@type", {nocombine = true, italic = true, bold = false})
  hl("@lsp.type.type", {link = "@type"})
  hl("@lsp.type.event", {})
  hl("@event", {nocombine = true, bold = false})
  hl("@text.warning", {fg = orange_fg, bold = true})
  hl("@text.danger", {fg = red, bold = true})
  hl("@text.reference", {underline = true})
  hl("@number.comment", {fg = blue, bold = true})
  hl("@constant.comment", {fg = purple, bold = true})
  hl("diffAdded", {link = "DiffAdd"})
  hl("diffRemoved", {link = "DiffDelete"})
  hl("gitcommitOverflow", {link = "ErrorMsg", bold = true})
  hl("fugitiveUntrackedSection", {fg = mix1})
  hl("fugitiveStagedSection", {bold = true})
  hl("fugitiveHeading", {bold = true})
  hl("fugitiveStagedHeading", {fg = accent2, bold = true})
  hl("fugitiveUntrackedHeading", {bold = true})
  hl("fugitiveUnstagedHeading", {bold = true})
  hl("fugitiveSymbolicRef", {underline = true, bold = true})
  hl("fugitiveHash", {bold = true})
  hl("fugitiveUnstagedModifier", {bold = true})
  hl("fugitiveStagedModifier", {fg = accent, bold = true})
  hl("GitSignsAdd", {fg = green_fg})
  hl("GitSignsDelete", {fg = red_fg})
  hl("GitSignsAddLn", {link = "DiffAdd"})
  hl("GitSignsAddNr", {link = "DiffAdd", fg = text})
  hl("GitSignsDeleteLn", {link = "DiffDelete"})
  hl("GitSignsDeleteNr", {bg = color.mix(red, paper, 0.5), fg = text})
  hl("GitSignsChange", {fg = accent})
  hl("GitSignsChangeLn", {bg = color.mix(accent, paper, 0.6)})
  hl("GitSignsChangeNr", {bg = color.mix(accent, paper, 0.6), fg = text})
  hl("diffFile", {underline = true, bold = true})
  hl("diffNewFile", {bold = true, fg = green_fg})
  hl("diffOldFile", {bold = true})
  hl("diffLine", {bold = true})
  hl("diffSubname", {fg = accent2})
  hl("TelescopeSelection", {fg = ui_fg, bg = ui, bold = true})
  hl("TelescopeMultiSelection", {bg = mix3, bold = true})
  hl("@define", {underline = true, bold = true})
  hl("@form.quoted", {fg = mix0})
  hl("@form.unquoted", {fg = "fg", nocombine = true})
  hl("@form.meta", {bg = color.mix(accent2, paper, 0.8)})
  hl("@punctuation.bracket.clojure", {fg = mix1})
  hl("@punctuation.delimiter.vec", {fg = accent_mix})
  hl("@punctuation.delimiter.map", {fg = red_mix})
  hl("@punctuation.delimiter.set", {fg = green_mix})
  hl("@variable.query", {fg = "fg", italic = true})
  hl("markdownCode", {bold = true})
  hl("helpHyperTextJump", {underline = true})
  hl("helpOption", {underline = true})
  hl("VisualMarker", {fg = red_fg, reverse = true, bold = true})
  hl("VisualMarkerLine", {bg = color.mix(accent, paper, 0.8)})
  hl("ngxComment", {link = "Comment"})
  hl("ngxDirective", {bold = true})
  hl("ngxDirectiveImportant", {link = "ngxDirective"})
  hl("ngxDirectiveBlock", {link = "ngxDirective"})
  hl("ngxVariable", {fg = accent})
  hl("ngxVariableBlock", {link = "ngxVariable"})
  hl("ngxVariableString", {link = "ngxVariable"})
  hl("ngxString", {bold = true})
  hl("DiffviewFilePanelTitle", {link = "Normal"})
  hl("DiffviewFilePanelCounter", {link = "Normal"})
  hl("DiffviewFilePanelFileName", {link = "Normal"})
  hl("typescriptVariable", {bold = true})
  hl("typescriptFuncName", {link = "Define"})
  hl("typescriptParens", {link = "Delimiter"})
  hl("typescriptTypeReference", {bold = true})
  hl("typescriptPredefinedType", {bold = true})
  hl("typescriptTemplateSB", {fg = accent2, bold = true})
  hl("typescriptArrayMethod", {})
  hl("cPreCondit", {fg = mix1})
  hl("cDefine", {fg = mix0, bold = true})
  hl("cTypeDef", {italic = true})
  hl("cType", {bold = true})
  hl("cStructure", {bold = true})
  hl("cStorageClass", {bold = true})
  hl("@constant.regex", {fg = green_fg})
  hl("@operator.regex", {fg = accent})
  hl("@string.escape.regex", {fg = accent2})
  return hl("@NonText", {link = "NonText"})
end
_2amodule_2a["theme"] = theme
local function gstheme(palette)
  local _let_3_ = palette
  local paper = _let_3_["paper"]
  local text = _let_3_["text"]
  local mix0 = _let_3_["mix0"]
  local mix1 = _let_3_["mix1"]
  local mix2 = _let_3_["mix2"]
  local mix3 = _let_3_["mix3"]
  local red = _let_3_["red"]
  local green = _let_3_["green"]
  local orange = _let_3_["orange"]
  local yellow = _let_3_["yellow"]
  local blue = _let_3_["blue"]
  local purple = _let_3_["purple"]
  local cyan = _let_3_["cyan"]
  local red_fg = _let_3_["red_fg"]
  local green_fg = _let_3_["green_fg"]
  local orange_fg = _let_3_["orange_fg"]
  local blue_fg = _let_3_["blue_fg"]
  local purple_fg = _let_3_["purple_fg"]
  local cyan_fg = _let_3_["cyan_fg"]
  local accent = _let_3_["accent"]
  local accent2 = _let_3_["accent2"]
  local ui = _let_3_["ui"]
  local ui_fg = _let_3_["ui_fg"]
  local accent_mix = _let_3_["accent_mix"]
  local red_mix = _let_3_["red_mix"]
  local green_mix = _let_3_["green_mix"]
  theme(palette)
  return hl("String", {fg = green})
end
_2amodule_2a["gstheme"] = gstheme
local function termcolors(_4_)
  local _arg_5_ = _4_
  local paper = _arg_5_["paper"]
  local text = _arg_5_["text"]
  local mix0 = _arg_5_["mix0"]
  local mix1 = _arg_5_["mix1"]
  local mix2 = _arg_5_["mix2"]
  local mix3 = _arg_5_["mix3"]
  local red = _arg_5_["red"]
  local green = _arg_5_["green"]
  local orange = _arg_5_["orange"]
  local yellow = _arg_5_["yellow"]
  local blue = _arg_5_["blue"]
  local purple = _arg_5_["purple"]
  local cyan = _arg_5_["cyan"]
  local red_fg = _arg_5_["red_fg"]
  local green_fg = _arg_5_["green_fg"]
  local orange_fg = _arg_5_["orange_fg"]
  local blue_fg = _arg_5_["blue_fg"]
  local purple_fg = _arg_5_["purple_fg"]
  local cyan_fg = _arg_5_["cyan_fg"]
  local accent = _arg_5_["accent"]
  local accent2 = _arg_5_["accent2"]
  local ui = _arg_5_["ui"]
  local ui_fg = _arg_5_["ui_fg"]
  local accent_mix = _arg_5_["accent_mix"]
  local red_mix = _arg_5_["red_mix"]
  local green_mix = _arg_5_["green_mix"]
  vim.g.terminal_color_0 = paper
  vim.g.terminal_color_1 = red
  vim.g.terminal_color_2 = green
  vim.g.terminal_color_3 = yellow
  vim.g.terminal_color_4 = blue
  vim.g.terminal_color_5 = purple
  vim.g.terminal_color_6 = cyan
  vim.g.terminal_color_7 = mix2
  vim.g.terminal_color_8 = mix1
  vim.g.terminal_color_9 = red_fg
  vim.g.terminal_color_10 = green_fg
  vim.g.terminal_color_11 = orange
  vim.g.terminal_color_12 = blue_fg
  vim.g.terminal_color_13 = purple_fg
  vim.g.terminal_color_14 = cyan_fg
  vim.g.terminal_color_15 = text
  return nil
end
_2amodule_2a["termcolors"] = termcolors
local function dark()
  local fg
  local function _6_(c)
    return color.brighten(c, 0.3)
  end
  fg = _6_
  local paper = hsl.hsluv_to_hex({280, 20, 2})
  local text = "#c5bfaf"
  local mix0 = color.mix(text, paper, 0.2)
  local mix1 = color.mix(text, paper, 0.3)
  local mix2 = color.mix(text, paper, 0.6)
  local mix3 = color.mix(text, paper, 0.9)
  local red = "#732626"
  local green = "#407326"
  local orange = "#e68019"
  local yellow = "#e1b31a"
  local blue = "#076678"
  local purple = "#8f3f71"
  local cyan = "#43808b"
  local red_fg = fg(red)
  local green_fg = fg(green)
  local orange_fg = fg(orange)
  local blue_fg = fg(blue)
  local purple_fg = fg(purple)
  local cyan_fg = fg(cyan)
  local accent = cyan_fg
  local accent2 = orange
  local ui = color.saturation(color.mix(text, paper, 0.8), 1.5)
  local ui_fg = color.mix(text, paper, 0.1)
  local accent_mix = color.mix(mix1, accent, 0.3)
  local red_mix = color.mix(mix1, red_fg, 0.3)
  local green_mix = color.mix(mix1, green, 0.3)
  return {accent = accent, accent2 = accent2, accent_mix = accent_mix, blue = blue, blue_fg = blue_fg, cyan = cyan, cyan_fg = cyan_fg, green = green, green_fg = green_fg, green_mix = green_mix, mix0 = mix0, mix1 = mix1, mix2 = mix2, mix3 = mix3, orange = orange, orange_fg = orange_fg, paper = paper, purple = purple, purple_fg = purple_fg, red = red, red_fg = red_fg, red_mix = red_mix, text = text, ui = ui, ui_fg = ui_fg, yellow = yellow}
end
_2amodule_2a["dark"] = dark
local function light()
  local fg
  local function _7_(c)
    return color.darken(c, 0.2)
  end
  fg = _7_
  local paper = hsl.hsluv_to_hex({50, 10, 90})
  local text = hsl.hsluv_to_hex({283, 22, 23})
  local mix0 = color.mix(text, paper, 0.1)
  local mix1 = color.mix(text, paper, 0.3)
  local mix2 = color.mix(text, paper, 0.6)
  local mix3 = color.mix(text, paper, 0.9)
  local red = "#e69999"
  local green = "#95cf7f"
  local orange = "#f0b375"
  local yellow = "#ad8200"
  local blue = "#076678"
  local purple = "#8f3f71"
  local cyan = "#43808b"
  local red_fg = fg(red)
  local green_fg = fg(green)
  local orange_fg = fg(orange)
  local blue_fg = fg(blue)
  local purple_fg = fg(purple)
  local cyan_fg = fg(cyan)
  local accent = cyan
  local accent2 = "#d1542e"
  local ui = text
  local ui_fg = paper
  local accent_mix = color.mix(mix1, accent, 0.5)
  local red_mix = color.mix(mix1, red_fg, 0.5)
  local green_mix = color.mix(mix1, green, 0.3)
  return {accent = accent, accent2 = accent2, accent_mix = accent_mix, blue = blue, blue_fg = blue_fg, cyan = cyan, cyan_fg = cyan_fg, green = green, green_fg = green_fg, green_mix = green_mix, mix0 = mix0, mix1 = mix1, mix2 = mix2, mix3 = mix3, orange = orange, orange_fg = orange_fg, paper = paper, purple = purple, purple_fg = purple_fg, red = red, red_fg = red_fg, red_mix = red_mix, text = text, ui = ui, ui_fg = ui_fg, yellow = yellow}
end
_2amodule_2a["light"] = light
local function stddark()
  local fg
  local function _8_(c)
    return c
  end
  fg = _8_
  local paper = "#000000"
  local text = "#e0e0e0"
  local mix0 = "#b0b0b0"
  local mix1 = "#898989"
  local mix2 = "#555555"
  local mix3 = "#303030"
  local red = "#e15d67"
  local green = "#5db129"
  local orange = "#fc804e"
  local yellow = "#e1b31a"
  local blue = "#00a3f2"
  local purple = "#b46ee0"
  local cyan = "#21c992"
  local red_fg = "#d03e3e"
  local green_fg = "#31861f"
  local orange_fg = "#d7691d"
  local blue_fg = "#3173c5"
  local purple_fg = "#9e57c2"
  local cyan_fg = "#00998f"
  local accent = cyan
  local accent2 = purple
  local ui = color.saturation(color.mix(text, paper, 0.8), 1.5)
  local ui_fg = color.mix(text, paper, 0.1)
  local accent_mix = color.mix(mix1, accent, 0.3)
  local red_mix = color.mix(mix1, red, 0.5)
  local green_mix = color.mix(mix1, green, 0.3)
  return {accent = accent, accent2 = accent2, accent_mix = accent_mix, blue = blue, blue_fg = blue_fg, cyan = cyan, cyan_fg = cyan_fg, green = green, green_fg = green_fg, green_mix = green_mix, mix0 = mix0, mix1 = mix1, mix2 = mix2, mix3 = mix3, orange = orange, orange_fg = orange_fg, paper = paper, purple = purple, purple_fg = purple_fg, red = red, red_fg = red_fg, red_mix = red_mix, text = text, ui = ui, ui_fg = ui_fg, yellow = yellow}
end
_2amodule_2a["stddark"] = stddark
local function stdlight()
  local fg
  local function _9_(c)
    return c
  end
  fg = _9_
  local paper = "#f0f0f0"
  local text = "#333333"
  local mix0 = "#555555"
  local mix1 = "#767676"
  local mix2 = "#cccccc"
  local mix3 = "#eeeeee"
  local red = "#d03e3e"
  local green = "#31861f"
  local orange = "#d7691d"
  local yellow = "#ad8200"
  local blue = "#3173c5"
  local purple = "#9e57c2"
  local cyan = "#00998f"
  local red_fg = "#e15d67"
  local green_fg = "#5db129"
  local orange_fg = "#fc804e"
  local blue_fg = "#00a3f2"
  local purple_fg = "#b46ee0"
  local cyan_fg = "#21c992"
  local accent = cyan
  local accent2 = purple
  local ui = color.saturation(color.mix(text, paper, 0.8), 1.5)
  local ui_fg = color.mix(text, paper, 0.1)
  local accent_mix = color.mix(mix1, accent, 0.3)
  local red_mix = color.mix(mix1, red, 0.5)
  local green_mix = color.mix(mix1, green, 0.3)
  return {accent = accent, accent2 = accent2, accent_mix = accent_mix, blue = blue, blue_fg = blue_fg, cyan = cyan, cyan_fg = cyan_fg, green = green, green_fg = green_fg, green_mix = green_mix, mix0 = mix0, mix1 = mix1, mix2 = mix2, mix3 = mix3, orange = orange, orange_fg = orange_fg, paper = paper, purple = purple, purple_fg = purple_fg, red = red, red_fg = red_fg, red_mix = red_mix, text = text, ui = ui, ui_fg = ui_fg, yellow = yellow}
end
_2amodule_2a["stdlight"] = stdlight
local function acmelight()
  local white = "#ffffff"
  local black = "#000000"
  local pale_yellow = "#ffffea"
  local dark_yellow = "#eeee9e"
  local dark_green = "#99994c"
  local pale_blue = "#eaffff"
  local red = "#aa0000"
  local green = "#006600"
  local blue = "#000099"
  local purple = "#8888cc"
  local cyan = "#9eeeee"
  return {white = white, black = black, pale_yellow = pale_yellow, dark_yellow = dark_yellow, dark_green = dark_green, pale_blue = pale_blue, red = red, green = green, blue = blue, purple = purple, cyan = cyan}
end
_2amodule_2a["acmelight"] = acmelight
local function acmetheme(_10_)
  local _arg_11_ = _10_
  local white = _arg_11_["white"]
  local black = _arg_11_["black"]
  local pale_yellow = _arg_11_["pale_yellow"]
  local dark_yellow = _arg_11_["dark_yellow"]
  local dark_green = _arg_11_["dark_green"]
  local pale_blue = _arg_11_["pale_blue"]
  local red = _arg_11_["red"]
  local green = _arg_11_["green"]
  local blue = _arg_11_["blue"]
  local purple = _arg_11_["purple"]
  local cyan = _arg_11_["cyan"]
  hl("Normal", {fg = black, bg = pale_yellow})
  hl("Comment", {fg = blue})
  hl("ColorColumn", {bg = dark_yellow})
  hl("Conceal", {})
  hl("Cursor", {})
  hl("lCursor", {})
  hl("CursorIM", {})
  hl("CursorColumn", {})
  hl("CursorLine", {bg = color.mix(dark_yellow, pale_yellow, 0.9)})
  hl("Directory", {fg = purple, bold = true})
  hl("DiffAdd", {bg = color.mix(green, pale_yellow, 0.5)})
  hl("DiffChange", {})
  hl("DiffDelete", {bg = color.mix(red, pale_yellow, 0.5)})
  hl("DiffText", {bg = color.mix(blue, pale_yellow, 0.4)})
  hl("TermCursor", {reverse = true})
  hl("TermCursorNC", {})
  hl("ErrorMsg", {fg = red})
  hl("WinSeparator", {fg = black})
  hl("Folded", {bg = dark_yellow})
  hl("FoldColumn", {link = "Folded"})
  hl("SignColumn", {})
  hl("IncSearch", {fg = white, bg = dark_green, bold = true})
  hl("CurSearch", {fg = black, bg = dark_yellow})
  hl("Substitute", {fg = white, bg = black})
  hl("LineNr", {fg = dark_green})
  hl("CursorLineNr", {bold = true, bg = purple})
  hl("CursorLineSign", {link = "CursorLineNr"})
  hl("MatchParen", {fg = blue, bold = true, bg = purple})
  hl("ModeMsg", {})
  hl("MsgArea", {})
  hl("MsgSeparator", {})
  hl("MoreMsg", {})
  hl("NonText", {fg = dark_green})
  hl("NormalFloat", {bg = color.mix(pale_yellow, black, 0.05), fg = "none"})
  hl("FloatBorder", {bg = color.mix(pale_yellow, black, 0.05), fg = dark_green})
  hl("Pmenu", {bg = dark_yellow})
  hl("PmenuSel", {reverse = true})
  hl("PmenuSbar", {bg = dark_green})
  hl("PmenuThumb", {})
  hl("Question", {})
  hl("QuickFixLine", {})
  hl("Search", {fg = black, bg = dark_yellow})
  hl("SpecialKey", {})
  hl("SpellBad", {undercurl = true, sp = red})
  hl("StatusLine", {fg = black, bg = pale_blue})
  hl("StatusLineNC", {fg = dark_green, bg = pale_blue})
  hl("User1", {fg = blue, bg = pale_blue, bold = true})
  hl("User2", {fg = red, bg = pale_blue, bold = true})
  hl("User3", {fg = purple, bg = pale_blue, bold = true})
  hl("User4", {fg = green, bg = pale_blue, bold = true})
  hl("StatusModeNormal", {fg = black, bg = pale_blue})
  hl("StatusModeInsert", {fg = green, bg = pale_blue})
  hl("StatusModeCommand", {fg = red, bg = pale_blue})
  hl("StatusModeVisual", {fg = blue, bg = pale_blue})
  hl("StatusModeVisualBlock", {fg = blue, bg = pale_blue})
  hl("StatusModeVisualLine", {fg = blue, bg = pale_blue})
  hl("StatusModeTerminal", {fg = purple, bg = ui})
  hl("StatusLineError", {bg = pale_blue, fg = red})
  hl("StatusLineWarn", {bg = pale_blue, fg = dark_green})
  hl("TabLine", {bg = pale_blue, fg = black})
  hl("TabLineFill", {bg = pale_blue, fg = black})
  hl("TabLineSel", {fg = black, bg = cyan})
  hl("Title", {})
  hl("Visual", {fg = pale_yellow, bg = black})
  hl("VisualNOS", {})
  hl("WarningMsg", {})
  return hl("Whitespace", {link = "NonText"})
end
_2amodule_2a["acmetheme"] = acmetheme
return _2amodule_2a