(module aub-theme-nvim.main
  {require {hsl external.hsluv
            color aub-theme-nvim.color}})


(defn hl [name val]
  (vim.api.nvim_set_hl 0 name val))


(defn theme [{: paper
              : text
              : mix0
              : mix1
              : mix2
              : mix3
              : red
              : green
              : orange
              : yellow
              : blue
              : purple
              : cyan
              : red_fg
              : green_fg
              : orange_fg
              : blue_fg
              : purple_fg
              : cyan_fg
              : accent
              : accent2
              : ui
              : ui_fg
              : accent_mix
              : red_mix
              : green_mix}]
  (hl :Normal {:fg text :bg paper})
  (hl :Comment {:fg accent2 :nocombine false})
  (hl :ColorColumn {:bg mix3})
  (hl :Conceal {})
  (hl :Cursor {})
  (hl :lCursor {})
  (hl :CursorIM {})
  (hl :CursorColumn {})
  (hl :CursorLine {:bg (color.mix mix3 paper 0.6)})
  (hl :Directory { :fg accent :bold true})
  (hl :DiffAdd {:bg (color.mix green paper 0.5)})
  (hl :DiffChange {})
  (hl :DiffDelete {:bg (color.mix red paper 0.5)})
  (hl :DiffText {:bg (color.mix blue paper 0.4)})
  ; (hl :DiffText {:fg paper :bg accent})
  (hl :TermCursor {:reverse true}) 
  (hl :TermCursorNC {}) 
  (hl :ErrorMsg {:fg red_fg}) 
  (hl :WinSeparator {:fg ui}) 
  (hl :Folded {:bg mix3}) 
  (hl :FoldColumn {:link :Folded}) 
  (hl :SignColumn {}) 
  (hl :IncSearch {:fg "white" :bg accent :bold true}) 
  (hl :CurSearch {:fg paper :bg accent}) 
  (hl :Substitute {:fg paper :bg text}) 
  (hl :LineNr {:fg mix1}) 
  (hl :CursorLineNr {:bold true :reverse true :fg accent}) 
  (hl :CursorLineSign {:link :CursorLineNr}) 
  (hl :MatchParen {:fg accent :bold true :bg (color.mix accent paper 0.7)}) 
  (hl :MatchParenEnd {:bold true :fg (color.mix accent paper 0.7)}) 
  (hl :ModeMsg {}) 
  (hl :MsgArea {}) 
  (hl :MsgSeparator {}) 
  (hl :MoreMsg {}) 
  (hl :NonText {:fg mix2}) 
  (hl :Normal {:fg text :bg paper}) 
  (hl :NormalFloat {:bg (color.mix paper text 0.05) :fg "none"}) 
  (hl :FloatBorder {:bg (color.mix paper text 0.05) :fg accent2}) 
  (hl :NormalNC {:fg (color.mix text paper 0.10)}) 
  (hl :Pmenu {:bg mix3}) 
  (hl :PmenuSel {:reverse true}) 
  (hl :PmenuSbar {:bg mix2}) 
  (hl :PmenuThumb {}) 
  (hl :Question {}) 
  (hl :QuickFixLine {}) 
  (hl :Search {:fg paper :bg accent_mix}) 
  (hl :SpecialKey {}) 
  (hl :SpellBad {:undercurl true :sp red_fg}) 
  (hl :StatusLine {:fg ui_fg :bg ui}) 
  (hl :StatusLineNC {:fg mix1 :bg ui}) 
  (hl :User1 {:fg accent :bg ui :bold true}) 
  (hl :User2 {:fg accent2 :bg ui :bold true}) 
  (hl :User3 {:fg mix2 :bg ui :bold true}) 
  (hl :User4 {:fg green :bg ui :bold true}) 
  (hl :StatusModeNormal {:fg mix1 :bg ui}) 
  (hl :StatusModeInsert {:fg accent :bg ui}) 
  (hl :StatusModeCommand {:fg red_fg :bg ui}) 
  (hl :StatusModeVisual {:fg green_fg :bg ui}) 
  (hl :StatusModeVisualBlock {:fg green_fg :bg ui}) 
  (hl :StatusModeVisualLine {:fg green_fg :bg ui}) 
  (hl :StatusModeTerminal {:fg accent2 :bg ui}) 
  (hl :StatusLineError {:bg ui :fg red_fg}) 
  (hl :StatusLineWarn {:bg ui :fg orange}) 
  (hl :TabLine {:bg ui :fg ui_fg}) 
  (hl :TabLineFill {:bg ui :fg mix2}) 
  (hl :TabLineSel {:fg paper :bg mix0}) 
  (hl :Title {}) 
  (hl :Visual {:fg paper :bg text}) 
  (hl :VisualNOS {}) 
  (hl :WarningMsg {}) 
  (hl :Whitespace {:link :NonText}) 
  (hl :WildMenu {:fg paper :bg text}) 
  (hl :Constant {}) 
  (hl :String {:fg mix1 :italic true}) 
  (hl :Character {:link :String}) 
  (hl :Identifier {}) 
  (hl :Statement {:bold true}) 
  (hl :PreProc {}) 
  (hl :Type {}) 
  (hl :Special {:bold true}) 
  (hl :Delimiter {:bg "none" :fg mix1}) 
  (hl :Underlined {:underline true}) 
  (hl :Ignore {}) 
  (hl :Error {:bg red}) 
  (hl :Todo {:fg accent :bold true}) 
  (hl :LspReferenceText {:fg accent :bold true :underline true}) 
  (hl :LspReferenceRead {:link :LspReferenceText}) 
  (hl :LspReferenceWrite {:link :LspReferenceText}) 
  (hl :DiagnosticError {:fg red_fg}) 
  (hl :DiagnosticWarn {:fg orange_fg}) 
  (hl :DiagnosticInfo {:fg blue}) 
  (hl :DiagnosticHint {:fg mix1}) 
  (hl :DiagnosticUnnecessary {:fg mix1}) 
  (hl :DiagnosticVirtualTextError {:bg (color.mix paper red_fg 0.30) :fg red_fg}) 
  (hl :DiagnosticVirtualTextWarn {:bg (color.mix paper orange_fg 0.30) :fg orange_fg}) 
  (hl :DiagnosticVirtualTextInfo {:bg (color.mix paper blue 0.30) :fg blue}) 
  (hl :DiagnosticVirtualTextHint {:bg (color.mix paper mix2 0.30) :fg mix2}) 
  (hl :LspCodeLens {:link :DiagnosticVirtualTextHint}) 
  (hl :TSStringEscape {:fg accent2})
  (hl :TSFunction {:bold true}) 
  (hl "@punctuation.special" {:fg yellow :bold true}) 
  (hl "@symbol.clojure" {:bold false}) 
  (hl "@symbol.keyword.clojure" {:bold true}) 
  (hl "@function" {:bold true}) 
  (hl "@function.clojure" {:bold true}) 
  (hl "@symbol" {:bold true}) 
  (hl "@symbol.fennel" {:bold true}) 
  (hl "@function.fennel" {:bold true}) 
  (hl "@variable" {:bold false}) 
  (hl "@variable.bash" {:bold true}) 
  (hl "@field" {:fg accent2 :bold true :nocombine true}) 
  (hl "@field.yaml" {:fg accent2 :bold true :nocombine true}) 
  (hl "@string" {:link :String}) 
  (hl "@string.regex" {:link :String}) 
  (hl "@string.yaml" {:link :Normal}) 
  (hl "@boolean" {:italic true}) 
  (hl "@method.clojure_lsp" {:italic true}) 
  (hl "@definition" {:underline true :bold true})
  (hl "@namespace" {:underline true :bold true :fg accent})
  (hl "@type" {:bold false :nocombine true :italic true})
  (hl "@lsp.type.type" {:link "@type"})
  (hl "@lsp.type.event" {})
  (hl "@event" {:bold false :nocombine true})
  (hl "@text.warning" {:fg orange_fg :bold true})
  (hl "@text.danger" {:fg red :bold true})
  (hl "@text.reference" { :underline true})
  (hl "@number.comment" {:fg blue :bold true})
  (hl "@constant.comment" {:fg purple :bold true})
  (hl :diffAdded {:link :DiffAdd}) 
  (hl :diffRemoved {:link :DiffDelete}) 
  (hl :gitcommitOverflow {:link :ErrorMsg :bold true}) 
  (hl :fugitiveUntrackedSection {:fg mix1}) 
  (hl :fugitiveStagedSection {:bold true}) 
  (hl :fugitiveHeading {:bold true}) 
  (hl :fugitiveStagedHeading {:fg accent2 :bold true}) 
  (hl :fugitiveUntrackedHeading {:bold true}) 
  (hl :fugitiveUnstagedHeading {:bold true}) 
  (hl :fugitiveSymbolicRef {:underline true :bold true}) 
  (hl :fugitiveHash {:bold true}) 
  (hl :fugitiveUnstagedModifier {:bold true}) 
  (hl :fugitiveStagedModifier {:fg accent :bold true}) 
  (hl :GitSignsAdd {:fg green_fg}) 
  (hl :GitSignsDelete {:fg red_fg}) 
  (hl :GitSignsAddLn {:link :DiffAdd}) 
  (hl :GitSignsAddNr {:link :DiffAdd :fg text}) 
  (hl :GitSignsDeleteLn {:link :DiffDelete}) 
  (hl :GitSignsDeleteNr {:bg (color.mix red paper 0.5) :fg text}) 
  (hl :GitSignsChange {:fg accent}) 
  (hl :GitSignsChangeLn {:bg (color.mix accent paper 0.60)}) 
  (hl :GitSignsChangeNr {:bg (color.mix accent paper 0.60) :fg text}) 
  (hl :diffFile {:underline true :bold true})
  (hl :diffNewFile {:bold true :fg green_fg}) 
  (hl :diffOldFile {:bold true}) 
  (hl :diffLine {:bold true}) 
  (hl :diffSubname {:fg accent2}) 
  (hl :TelescopeSelection {:fg ui_fg :bg ui :bold true}) 
  (hl :TelescopeMultiSelection {:bg mix3 :bold true}) 
  (hl "@define" {:underline true :bold true}) 
  (hl "@form.quoted" {:fg mix0}) 
  (hl "@form.unquoted" {:fg :fg :nocombine true}) 
  (hl "@form.meta" {:bg (color.mix accent2 paper 0.80)}) 
  (hl "@punctuation.bracket.clojure" {:fg mix1}) 
  (hl "@punctuation.delimiter.vec" {:fg accent_mix}) 
  (hl "@punctuation.delimiter.map" {:fg red_mix}) 
  (hl "@punctuation.delimiter.set" {:fg green_mix}) 
  (hl "@variable.query" {:fg :fg :italic true}) 
  (hl :markdownCode {:bold true}) 
  (hl :helpHyperTextJump {:underline true}) 
  (hl :helpOption {:underline true}) 
  (hl :VisualMarker {:fg red_fg :reverse true :bold true}) 
  (hl :VisualMarkerLine {:bg (color.mix accent paper 0.80)}) 
  (hl :ngxComment {:link :Comment}) 
  (hl :ngxDirective {:bold true}) 
  (hl :ngxDirectiveImportant {:link :ngxDirective}) 
  (hl :ngxDirectiveBlock {:link :ngxDirective}) 
  (hl :ngxVariable {:fg accent}) 
  (hl :ngxVariableBlock {:link :ngxVariable}) 
  (hl :ngxVariableString {:link :ngxVariable}) 
  (hl :ngxString {:bold true}) 
  (hl :DiffviewFilePanelTitle {:link :Normal}) 
  (hl :DiffviewFilePanelCounter {:link :Normal}) 
  (hl :DiffviewFilePanelFileName {:link :Normal}) 
  (hl :typescriptVariable {:bold true}) 
  (hl :typescriptFuncName {:link :Define}) 
  (hl :typescriptParens {:link :Delimiter}) 
  (hl :typescriptTypeReference {:bold true}) 
  (hl :typescriptPredefinedType {:bold true}) 
  (hl :typescriptTemplateSB {:fg accent2 :bold true}) 
  (hl :typescriptArrayMethod {}) 
  (hl :cPreCondit {:fg mix1}) 
  (hl :cDefine {:fg mix0 :bold true}) 
  (hl :cTypeDef {:italic true}) 
  (hl :cType {:bold true}) 
  (hl :cStructure {:bold true}) 
  (hl :cStorageClass {:bold true}) 
  (hl "@constant.regex" {:fg green_fg}) 
  (hl "@operator.regex" {:fg accent}) 
  (hl "@string.escape.regex" {:fg accent2})
  (hl "@NonText" {:link :NonText}))


(defn gstheme [palette]
  (let [{: paper
         : text
         : mix0
         : mix1
         : mix2
         : mix3
         : red
         : green
         : orange
         : yellow
         : blue
         : purple
         : cyan
         : red_fg
         : green_fg
         : orange_fg
         : blue_fg
         : purple_fg
         : cyan_fg
         : accent
         : accent2
         : ui
         : ui_fg
         : accent_mix
         : red_mix
         : green_mix} palette]
    (theme palette)
    (hl "String" {:fg green})))


(defn termcolors [{: paper
                   : text
                   : mix0
                   : mix1
                   : mix2
                   : mix3
                   : red
                   : green
                   : orange
                   : yellow
                   : blue
                   : purple
                   : cyan
                   : red_fg
                   : green_fg
                   : orange_fg
                   : blue_fg
                   : purple_fg
                   : cyan_fg
                   : accent
                   : accent2
                   : ui
                   : ui_fg
                   : accent_mix
                   : red_mix
                   : green_mix}]
  (set vim.g.terminal_color_0 paper)
  (set vim.g.terminal_color_1 red)
  (set vim.g.terminal_color_2 green)
  (set vim.g.terminal_color_3 yellow)
  (set vim.g.terminal_color_4 blue)
  (set vim.g.terminal_color_5 purple)
  (set vim.g.terminal_color_6 cyan)
  (set vim.g.terminal_color_7 mix2)
  (set vim.g.terminal_color_8 mix1)
  (set vim.g.terminal_color_9 red_fg)
  (set vim.g.terminal_color_10 green_fg)
  (set vim.g.terminal_color_11 orange)
  (set vim.g.terminal_color_12 blue_fg)
  (set vim.g.terminal_color_13 purple_fg)
  (set vim.g.terminal_color_14 cyan_fg)
  (set vim.g.terminal_color_15 text))


(macro color-map []
  `{:paper paper
    :text text
    :mix0 mix0
    :mix1 mix1
    :mix2 mix2
    :mix3 mix3
    :red red
    :green green
    :orange orange
    :yellow yellow
    :blue blue
    :purple purple
    :cyan cyan
    :red_fg red_fg
    :green_fg green_fg
    :orange_fg orange_fg
    :blue_fg blue_fg
    :purple_fg purple_fg
    :cyan_fg cyan_fg
    :accent accent
    :accent2 accent2
    :ui ui
    :ui_fg ui_fg
    :accent_mix accent_mix
    :red_mix red_mix
    :green_mix green_mix}) 


(defn dark []
  (let [fg (fn [c] (color.brighten c 0.3))
        paper (hsl.hsluv_to_hex [280 20 2])
        text "#c5bfaf";(hsl.hsluv_to_hex [50 20 80])
        mix0 (color.mix text paper 0.2)
        mix1 (color.mix text paper 0.3)
        mix2 (color.mix text paper 0.6)
        mix3 (color.mix text paper 0.9)
        red "#732626"
        green "#407326"
        orange "#e68019"
        yellow "#e1b31a"
        blue "#076678"
        purple "#8f3f71"
        cyan "#43808b"
        red_fg (fg red)
        green_fg (fg green)
        orange_fg (fg orange)
        blue_fg (fg blue)
        purple_fg (fg purple)
        cyan_fg (fg cyan)
        accent cyan_fg
        accent2 orange
        ui (color.saturation (color.mix text paper 0.8) 1.5)
        ui_fg (color.mix text paper 0.1)
        accent_mix (color.mix mix1 accent 0.3)
        red_mix (color.mix mix1 red_fg 0.3)
        green_mix (color.mix mix1 green 0.3)]
    (color-map)))


(defn light []
  (let [fg (fn [c] (color.darken c 0.2))
        paper (hsl.hsluv_to_hex [50 10 90])
        text (hsl.hsluv_to_hex [283 22 23])
        mix0 (color.mix text paper 0.1)
        mix1 (color.mix text paper 0.3)
        mix2 (color.mix text paper 0.6)
        mix3 (color.mix text paper 0.9)
        ; accent "#63a0ab"
        red "#e69999"
        green "#95cf7f"
        orange "#f0b375"
        yellow "#ad8200"
        blue "#076678"
        purple "#8f3f71"
        cyan "#43808b"
        red_fg (fg red) ; "#ce4646"
        green_fg (fg green) ; "#8dae7b"
        orange_fg (fg orange) ; "#c08b50"
        blue_fg (fg blue) ; "#045261"
        purple_fg (fg purple) ; "#74325b"
        cyan_fg (fg cyan) ; "#34666f"
        accent cyan 
        accent2 "#d1542e"
        ui text
        ui_fg paper
        accent_mix (color.mix mix1 accent 0.5)
        red_mix (color.mix mix1 red_fg 0.5)
        green_mix (color.mix mix1 green 0.3)]
    (color-map)))


(defn stddark []
  (let [fg (fn [c] c)
        ; paper "#111111"
        paper "#000000"
        text "#e0e0e0"
        mix0 "#b0b0b0"
        mix1 "#898989"
        mix2 "#555555"
        mix3 "#303030"
        red "#e15d67"
        green "#5db129"
        orange "#fc804e"
        yellow "#e1b31a"
        blue "#00a3f2"
        purple "#b46ee0"
        cyan "#21c992"
        red_fg "#d03e3e"
        green_fg "#31861f"
        orange_fg "#d7691d"
        blue_fg "#3173c5"
        purple_fg "#9e57c2"
        cyan_fg "#00998f"
        accent cyan
        accent2 purple
        ui (color.saturation (color.mix text paper 0.8) 1.5)
        ui_fg (color.mix text paper 0.1)
        accent_mix (color.mix mix1 accent 0.3)
        red_mix (color.mix mix1 red 0.5)
        green_mix (color.mix mix1 green 0.3)]
    (color-map)))
  

(defn stdlight []
  (let [fg (fn [c] c)
        paper "#f0f0f0"
        text "#333333"
        mix0 "#555555"
        mix1 "#767676"
        mix2 "#cccccc"
        mix3 "#eeeeee"
        red "#d03e3e"
        green "#31861f"
        orange "#d7691d"
        yellow "#ad8200"
        blue "#3173c5"
        purple "#9e57c2"
        cyan "#00998f"
        red_fg "#e15d67"
        green_fg "#5db129"
        orange_fg "#fc804e"
        blue_fg "#00a3f2"
        purple_fg "#b46ee0"
        cyan_fg "#21c992"
        accent cyan
        accent2 purple
        ui (color.saturation (color.mix text paper 0.8) 1.5)
        ui_fg (color.mix text paper 0.1)
        accent_mix (color.mix mix1 accent 0.3)
        red_mix (color.mix mix1 red 0.5)
        green_mix (color.mix mix1 green 0.3)]
    (color-map)))


(defn acmelight []
  (let [white "#ffffff"
        black "#000000"
        pale_yellow "#ffffea"
        dark_yellow "#eeee9e"
        dark_green "#99994c"
        pale_blue "#eaffff"
        red "#aa0000"
        green "#006600"
        blue "#000099"
        purple "#8888cc"
        cyan "#9eeeee"]
    {:white white
     :black black
     :pale_yellow pale_yellow
     :dark_yellow dark_yellow
     :dark_green dark_green
     :pale_blue pale_blue
     :red red
     :green green
     :blue blue
     :purple purple
     :cyan cyan}))


(defn acmetheme [{: white
                  : black
                  : pale_yellow
                  : dark_yellow
                  : dark_green
                  : pale_blue
                  : red
                  : green
                  : blue
                  : purple
                  : cyan}]
  (hl :Normal {:fg black :bg pale_yellow})
  (hl :Comment {:fg blue})
  (hl :ColorColumn {:bg dark_yellow})
  (hl :Conceal {})
  (hl :Cursor {})
  (hl :lCursor {})
  (hl :CursorIM {})
  (hl :CursorColumn {})
  (hl :CursorLine {:bg (color.mix dark_yellow pale_yellow 0.9)})
  (hl :Directory { :fg purple :bold true})
  (hl :DiffAdd {:bg (color.mix green pale_yellow 0.5)})
  (hl :DiffChange {})
  (hl :DiffDelete {:bg (color.mix red pale_yellow 0.5)})
  (hl :DiffText {:bg (color.mix blue pale_yellow 0.4)})
  (hl :TermCursor {:reverse true}) 
  (hl :TermCursorNC {}) 
  (hl :ErrorMsg {:fg red}) 
  (hl :WinSeparator {:fg black}) 
  (hl :Folded {:bg dark_yellow}) 
  (hl :FoldColumn {:link :Folded}) 
  (hl :SignColumn {}) 
  (hl :IncSearch {:fg white :bg dark_green :bold true}) 
  (hl :CurSearch {:fg black :bg dark_yellow}) 
  (hl :Substitute {:fg white :bg black}) 
  (hl :LineNr {:fg dark_green}) 
  (hl :CursorLineNr {:bold true :bg purple}) 
  (hl :CursorLineSign {:link :CursorLineNr}) 
  (hl :MatchParen {:fg blue :bold true :bg purple}) 
  (hl :ModeMsg {}) 
  (hl :MsgArea {}) 
  (hl :MsgSeparator {}) 
  (hl :MoreMsg {}) 
  (hl :NonText {:fg dark_green}) 
  (hl :NormalFloat {:bg (color.mix pale_yellow black 0.05) :fg "none"}) 
  (hl :FloatBorder {:bg (color.mix pale_yellow black 0.05) :fg dark_green}) 
  (hl :Pmenu {:bg dark_yellow}) 
  (hl :PmenuSel {:reverse true}) 
  (hl :PmenuSbar {:bg dark_green}) 
  (hl :PmenuThumb {}) 
  (hl :Question {}) 
  (hl :QuickFixLine {}) 
  (hl :Search {:fg black :bg dark_yellow}) 
  (hl :SpecialKey {}) 
  (hl :SpellBad {:undercurl true :sp red}) 
  (hl :StatusLine {:fg black :bg pale_blue}) 
  (hl :StatusLineNC {:fg dark_green :bg pale_blue}) 
  (hl :User1 {:fg blue :bg pale_blue :bold true}) 
  (hl :User2 {:fg red :bg pale_blue :bold true}) 
  (hl :User3 {:fg purple :bg pale_blue :bold true}) 
  (hl :User4 {:fg green :bg pale_blue :bold true}) 
  (hl :StatusModeNormal {:fg black :bg pale_blue}) 
  (hl :StatusModeInsert {:fg green :bg pale_blue}) 
  (hl :StatusModeCommand {:fg red :bg pale_blue}) 
  (hl :StatusModeVisual {:fg blue :bg pale_blue}) 
  (hl :StatusModeVisualBlock {:fg blue :bg pale_blue}) 
  (hl :StatusModeVisualLine {:fg blue :bg pale_blue}) 
  (hl :StatusModeTerminal {:fg purple :bg ui}) 
  (hl :StatusLineError {:bg pale_blue :fg red}) 
  (hl :StatusLineWarn {:bg pale_blue :fg dark_green}) 
  (hl :TabLine {:bg pale_blue :fg black}) 
  (hl :TabLineFill {:bg pale_blue :fg black}) 
  (hl :TabLineSel {:fg black :bg cyan}) 
  (hl :Title {}) 
  (hl :Visual {:fg pale_yellow :bg black}) 
  (hl :VisualNOS {}) 
  (hl :WarningMsg {}) 
  (hl :Whitespace {:link :NonText})) 
  ; (hl :WildMenu {:fg paper :bg text}) 
  ; (hl :Constant {}) 
  ; (hl :String {:fg mix1 :italic true}) 
  ; (hl :Character {:link :String}) 
  ; (hl :Identifier {}) 
  ; (hl :Statement {:bold true}) 
  ; (hl :PreProc {}) 
  ; (hl :Type {}) 
  ; (hl :Special {:bold true}) 
  ; (hl :Delimiter {:bg "none" :fg mix1}) 
  ; (hl :Underlined {:underline true}) 
  ; (hl :Ignore {}) 
  ; (hl :Error {:bg red}) 
  ; (hl :Todo {:fg accent :bold true}) 
  ; (hl :LspReferenceText {:fg accent :bold true :underline true}) 
  ; (hl :LspReferenceRead {:link :LspReferenceText}) 
  ; (hl :LspReferenceWrite {:link :LspReferenceText}) 
  ; (hl :DiagnosticError {:fg red_fg}) 
  ; (hl :DiagnosticWarn {:fg orange_fg}) 
  ; (hl :DiagnosticInfo {:fg blue}) 
  ; (hl :DiagnosticHint {:fg mix1}) 
  ; (hl :DiagnosticUnnecessary {:fg mix1}) 
  ; (hl :DiagnosticVirtualTextError {:bg (color.mix paper red_fg 0.30) :fg red_fg}) 
  ; (hl :DiagnosticVirtualTextWarn {:bg (color.mix paper orange_fg 0.30) :fg orange_fg}) 
  ; (hl :DiagnosticVirtualTextInfo {:bg (color.mix paper blue 0.30) :fg blue}) 
  ; (hl :DiagnosticVirtualTextHint {:bg (color.mix paper mix2 0.30) :fg mix2}) 
  ; (hl :LspCodeLens {:link :DiagnosticVirtualTextHint}) 
  ; (hl :TSStringEscape {:fg accent2})
  ; (hl :TSFunction {:bold true}) 
  ; (hl "@punctuation.special" {:fg yellow :bold true}) 
  ; (hl "@symbol.clojure" {:bold false}) 
  ; (hl "@symbol.keyword.clojure" {:bold true}) 
  ; (hl "@function" {:bold true}) 
  ; (hl "@function.clojure" {:bold true}) 
  ; (hl "@symbol" {:bold true}) 
  ; (hl "@symbol.fennel" {:bold true}) 
  ; (hl "@function.fennel" {:bold true}) 
  ; (hl "@variable" {:bold false}) 
  ; (hl "@variable.bash" {:bold true}) 
  ; (hl "@field" {:fg accent2 :bold true :nocombine true}) 
  ; (hl "@field.yaml" {:fg accent2 :bold true :nocombine true}) 
  ; (hl "@string" {:link :String}) 
  ; (hl "@string.regex" {:link :String}) 
  ; (hl "@string.yaml" {:link :Normal}) 
  ; (hl "@boolean" {:italic true}) 
  ; (hl "@method.clojure_lsp" {:italic true}) 
  ; (hl "@definition" {:underline true :bold true})
  ; (hl "@namespace" {:underline true :bold true :fg accent})
  ; (hl "@type" {:bold false :nocombine true :italic true})
  ; (hl "@lsp.type.type" {:link "@type"})
  ; (hl "@lsp.type.event" {})
  ; (hl "@event" {:bold false :nocombine true})
  ; (hl "@text.warning" {:fg orange_fg :bold true})
  ; (hl "@text.danger" {:fg red :bold true})
  ; (hl "@text.reference" { :underline true})
  ; (hl "@number.comment" {:fg blue :bold true})
  ; (hl "@constant.comment" {:fg purple :bold true})
  ; (hl :diffAdded {:link :DiffAdd}) 
  ; (hl :diffRemoved {:link :DiffDelete}) 
  ; (hl :gitcommitOverflow {:link :ErrorMsg :bold true}) 
  ; (hl :fugitiveUntrackedSection {:fg mix1}) 
  ; (hl :fugitiveStagedSection {:bold true}) 
  ; (hl :fugitiveHeading {:bold true}) 
  ; (hl :fugitiveStagedHeading {:fg accent2 :bold true}) 
  ; (hl :fugitiveUntrackedHeading {:bold true}) 
  ; (hl :fugitiveUnstagedHeading {:bold true}) 
  ; (hl :fugitiveSymbolicRef {:underline true :bold true}) 
  ; (hl :fugitiveHash {:bold true}) 
  ; (hl :fugitiveUnstagedModifier {:bold true}) 
  ; (hl :fugitiveStagedModifier {:fg accent :bold true}) 
  ; (hl :GitSignsAdd {:fg green_fg}) 
  ; (hl :GitSignsDelete {:fg red_fg}) 
  ; (hl :GitSignsAddLn {:link :DiffAdd}) 
  ; (hl :GitSignsAddNr {:link :DiffAdd :fg text}) 
  ; (hl :GitSignsDeleteLn {:link :DiffDelete}) 
  ; (hl :GitSignsDeleteNr {:bg (color.mix red paper 0.5) :fg text}) 
  ; (hl :GitSignsChange {:fg accent}) 
  ; (hl :GitSignsChangeLn {:bg (color.mix accent paper 0.60)}) 
  ; (hl :GitSignsChangeNr {:bg (color.mix accent paper 0.60) :fg text}) 
  ; (hl :diffFile {:underline true :bold true})
  ; (hl :diffNewFile {:bold true :fg green_fg}) 
  ; (hl :diffOldFile {:bold true}) 
  ; (hl :diffLine {:bold true}) 
  ; (hl :diffSubname {:fg accent2}) 
  ; (hl :TelescopeSelection {:fg ui_fg :bg ui :bold true}) 
  ; (hl :TelescopeMultiSelection {:bg mix3 :bold true}) 
  ; (hl "@define" {:underline true :bold true}) 
  ; (hl "@form.quoted" {:fg mix0}) 
  ; (hl "@form.unquoted" {:fg :fg :nocombine true}) 
  ; (hl "@form.meta" {:bg (color.mix accent2 paper 0.80)}) 
  ; (hl "@punctuation.bracket.clojure" {:fg mix1}) 
  ; (hl "@punctuation.delimiter.vec" {:fg accent_mix}) 
  ; (hl "@punctuation.delimiter.map" {:fg red_mix}) 
  ; (hl "@punctuation.delimiter.set" {:fg green_mix}) 
  ; (hl "@variable.query" {:fg :fg :italic true}) 
  ; (hl :markdownCode {:bold true}) 
  ; (hl :helpHyperTextJump {:underline true}) 
  ; (hl :helpOption {:underline true}) 
  ; (hl :VisualMarker {:fg red_fg :reverse true :bold true}) 
  ; (hl :VisualMarkerLine {:bg (color.mix accent paper 0.80)}) 
  ; (hl :ngxComment {:link :Comment}) 
  ; (hl :ngxDirective {:bold true}) 
  ; (hl :ngxDirectiveImportant {:link :ngxDirective}) 
  ; (hl :ngxDirectiveBlock {:link :ngxDirective}) 
  ; (hl :ngxVariable {:fg accent}) 
  ; (hl :ngxVariableBlock {:link :ngxVariable}) 
  ; (hl :ngxVariableString {:link :ngxVariable}) 
  ; (hl :ngxString {:bold true}) 
  ; (hl :DiffviewFilePanelTitle {:link :Normal}) 
  ; (hl :DiffviewFilePanelCounter {:link :Normal}) 
  ; (hl :DiffviewFilePanelFileName {:link :Normal}) 
  ; (hl :typescriptVariable {:bold true}) 
  ; (hl :typescriptFuncName {:link :Define}) 
  ; (hl :typescriptParens {:link :Delimiter}) 
  ; (hl :typescriptTypeReference {:bold true}) 
  ; (hl :typescriptPredefinedType {:bold true}) 
  ; (hl :typescriptTemplateSB {:fg accent2 :bold true}) 
  ; (hl :typescriptArrayMethod {}) 
  ; (hl :cPreCondit {:fg mix1}) 
  ; (hl :cDefine {:fg mix0 :bold true}) 
  ; (hl :cTypeDef {:italic true}) 
  ; (hl :cType {:bold true}) 
  ; (hl :cStructure {:bold true}) 
  ; (hl :cStorageClass {:bold true}) 
  ; (hl "@constant.regex" {:fg green_fg}) 
  ; (hl "@operator.regex" {:fg accent}) 
  ; (hl "@string.escape.regex" {:fg accent2})
  ; (hl "@NonText" {:link :NonText}))
