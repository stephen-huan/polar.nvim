vim.o.background = "light"
vim.cmd.highlight "clear"
vim.g.colors_name = "polar"

-- colors

-- stylua: ignore start
local comment     = "#808080" -- 244
local constant    = "#986801" --  94
local string      = "#2a871f" --  28
local identifier  = "#2f6aea" --  27
local statement   = "#a626a4" -- 127
local preproc     = "#ca1243" -- 161
local type        = "#c18401" -- 172
local special     = "#0184bc" --  67
local delimiter   = "#d75f00" -- 166

local fg0         = "#000000" --  16
local bg0         = "#ffffff" -- 231
local bg1         = "#cacbcc" -- 251
local folded      = "#e0e4e4" -- 254
local cursorline  = "#f4f4f4" -- 254
local visual      = "#d0d9ea" -- 153
local error       = "#d70000" -- 160

local diffadd     = "#c9f9c9" -- 194
local difftext    = "#f9f9c9" -- 222
local diffdelete  = "#f9c9c9" -- 224
-- stylua: ignore end

-- terminal colors

-- vim.g.terminal_color_0  = "#4e4e4e"
-- vim.g.terminal_color_1  = "#d68787"
-- vim.g.terminal_color_2  = "#5f865f"
-- vim.g.terminal_color_3  = "#d8af5f"
-- vim.g.terminal_color_4  = "#85add4"
-- vim.g.terminal_color_5  = "#d7afaf"
-- vim.g.terminal_color_6  = "#87afaf"
-- vim.g.terminal_color_7  = "#d0d0d0"
-- vim.g.terminal_color_8  = "#626262"
-- vim.g.terminal_color_9  = "#d75f87"
-- vim.g.terminal_color_10 = "#87af87"
-- vim.g.terminal_color_11 = "#ffd787"
-- vim.g.terminal_color_12 = "#add4fb"
-- vim.g.terminal_color_13 = "#ffafaf"
-- vim.g.terminal_color_14 = "#87d7d7"
-- vim.g.terminal_color_15 = "#e4e4e4"

-- highlights

local function hi(name, val, ns)
    vim.api.nvim_set_hl(ns or 0, name, val)
end

-- defaults :help highlight-groups

hi("ColorColumn", { bg = cursorline })
hi("Conceal", { fg = comment })
-- CurSearch
hi("Cursor", { fg = bg0, bg = fg0 })
hi("lCursor", { fg = bg0, bg = constant })
-- CursorIM
hi("CursorColumn", { bg = cursorline })
hi("CursorLine", { bg = cursorline })
hi("Directory", { fg = identifier, bold = true })
hi("DiffAdd", { bg = diffadd })
hi("DiffChange", {})
hi("DiffDelete", { fg = diffdelete })
hi("DiffText", { bg = difftext })
hi("EndOfBuffer", { fg = bg1 })
-- TermCursor
-- TermCursorNC
hi("ErrorMsg", { fg = bg0, bg = error })
hi("WinSeparator", { fg = fg0 })
hi("Folded", { fg = comment, bg = folded })
hi("FoldColumn", { fg = comment })
hi("SignColumn", {})
hi("IncSearch", { fg = bg0, bg = string })
-- Substitute
hi("LineNr", { fg = bg1 })
-- LineNrAbove
-- LineNrBelow
hi("CursorLineNr", { bg = cursorline })
-- CursorLineFold
-- CursorLineSign
hi("MatchParen", { fg = bg0, bg = special })
hi("ModeMsg", { fg = fg0, bold = true })
-- MsgArea
-- MsgSeparator
hi("MoreMsg", { fg = string, bold = true })
hi("NonText", { fg = bg1 })
hi("Normal", { fg = fg0, bg = bg0 })
-- NormalFloat
-- FloatBorder
-- FloatTitle
-- FloatFooter
-- NormalNC
hi("Pmenu", { bg = folded })
hi("PmenuSel", { fg = bg0, bg = preproc })
-- PmenuKind
-- PmenuKindSel
-- PmenuExtra
-- PmenuExtraSel
hi("PmenuSbar", { bg = bg1 })
hi("PmenuThumb", { bg = comment })
hi("Question", { fg = string, bold = true })
hi("QuickFixLine", { bg = folded })
hi("Search", { fg = bg0, bg = preproc })
-- SnippetTabstop
hi("SpecialKey", { fg = bg1 })
hi("SpellBad", { fg = error, sp = error, underline = true })
hi("SpellCap", { fg = identifier, sp = identifier, underline = true })
hi("SpellLocal", { fg = special, sp = special, underline = true })
hi("SpellRare", { fg = type, sp = type, underline = true })
hi("StatusLine", { fg = fg0, bg = bg1, bold = true })
hi("StatusLineNC", { fg = comment, bg = bg1 })
hi("TabLine", { fg = comment, bg = bg1 })
hi("TabLineFill", { bg = bg1 })
hi("TabLineSel", { bg = bg0 })
hi("Title", { fg = fg0, bold = true })
hi("Visual", { bg = visual })
hi("VisualNOS", { bg = comment })
hi("WarningMsg", { fg = preproc, bold = true })
-- Whitespace
hi("WildMenu", { fg = bg0, bg = preproc })
-- WinBar
-- WinBarNC

-- syntax :help group-name

hi("Comment", { fg = comment, italic = true })

hi("Constant", { fg = string })
hi("String", { fg = string })
hi("Number", { fg = constant })
hi("Boolean", { fg = constant })
-- Float

hi("Identifier", { fg = error })
hi("Function", { fg = identifier })

hi("Statement", { fg = statement })
-- Conditional
-- Repeat
hi("Label", { fg = statement })
hi("Operator", { fg = statement })
-- Keyword
-- Exception

hi("PreProc", { fg = preproc })
-- Include
-- Define
-- Macro
-- PreCondit

hi("Type", { fg = type })
hi("StorageClass", { fg = statement })
-- Structure
-- Typedef

hi("Special", { fg = special })
-- SpecialChar
hi("Tag", { fg = preproc })
hi("Delimiter", { fg = delimiter })
-- SpecialComment
-- Debug

hi("Underlined", { fg = identifier, underline = true })

hi("Ignore", {})

hi("Error", { fg = bg0, bg = error })

hi("Todo", { fg = statement })

hi("Added", { fg = string })
hi("Changed", { fg = constant })
hi("Removed", { fg = error })

-- diagnostics :help diagnostic-highlights

hi("DiagnosticError", { fg = "Red" })
hi("DiagnosticWarn", { fg = "Orange" })
hi("DiagnosticInfo", { fg = "LightBlue" })
hi("DiagnosticHint", { fg = "LightGrey" })
hi("DiagnosticOk", { fg = "LightGreen" })

-- tree-sitter :help treesitter-highlight-groups

hi("@variable", { fg = fg0 })

hi("@constant.builtin", { link = "Constant" })

hi("@variable.bash", { link = "Identifier" })
hi("@variable.fish", { link = "Identifier" })
