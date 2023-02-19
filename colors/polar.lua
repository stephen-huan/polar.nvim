vim.o.background = "light"
vim.cmd.highlight("clear")

-- colors

local comment    = "#808080" -- 244
local constant   = "#986801" --  94
local string     = "#2a871f" --  28
local identifier = "#2f6aea" --  27
local statement  = "#a626a4" -- 127
local preproc    = "#ca1243" -- 161
local type       = "#c18401" -- 172
local special    = "#0184bc" --  67
local delimiter  = "#d75f00" -- 166

local fg0        = "#000000" --  16
local bg0        = "#ffffff" -- 231
local bg1        = "#cacbcc" -- 251
local folded     = "#e0e4e4" -- 254
local cursorline = "#f4f4f4" -- 254
local visual     = "#d0d9ea" -- 153
local error      = "#d70000" -- 160

local diffadd    = "#c9f9c9" -- 194
local difftext   = "#f9f9c9" -- 222
local diffdelete = "#f9c9c9" -- 224

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

local function hi(name, val)
    vim.api.nvim_set_hl(0, name, val)
end

-- defaults :help highlight-groups

hi("Normal", { fg = fg0, bg = bg0 })

hi("EndOfBuffer", { fg = bg1 })
hi("Statusline", { fg = fg0, bg = bg1, bold = true })
hi("StatuslineNC", { fg = comment, bg = bg1 })
hi("WinSeparator", { fg = bg1, bg = bg1 })

hi("Pmenu", { bg = bg1 })
hi("PmenuSel", { fg = bg0, bg = preproc })
hi("PmenuSbar", { bg = bg1 })
hi("PmenuThumb", { bg = comment })

hi("TabLine", { fg = comment, bg = bg1 })
hi("TabLineFill", { bg = bg1 })
hi("TabLineSel", { bg = bg0 })

hi("ToolbarLine", { fg = bg0, bg = folded })
hi("ToolbarButton", { bg = bg1, bold = true })

hi("NonText", { fg = bg1 })
hi("SpecialKey", { fg = bg1 })

hi("Folded", { fg = comment, bg = folded })
hi("Visual", { bg = visual })
hi("VisualNOS", { bg = comment })
hi("LineNr", { fg = bg1 })
hi("FoldColumn", { fg = comment })
hi("CursorLine", { bg = cursorline })
hi("CursorColumn", { bg = cursorline })
hi("CursorLineNr", { bg = cursorline })
hi("QuickFixLine", { bg = folded })
hi("SignColumn", {})

hi("Underlined", { fg = identifier, underline = true })

hi("Error", { fg = bg0, bg = error })
hi("ErrorMsg", { fg = bg0, bg = error })
hi("ModeMsg", { fg = fg0, bold = true })
hi("WarningMsg", { fg = preproc, bold = true })
hi("MoreMsg", { fg = string, bold = true })
hi("Question", { fg = string, bold = true })

hi("Todo", { fg = statement })
hi("MatchParen", { fg = bg0, bg = special })
hi("Search", { fg = bg0, bg = preproc })
hi("IncSearch", { fg = bg0, bg = string })
hi("WildMenu", { fg = bg0, bg = preproc })
hi("ColorColumn", { bg = cursorline })
hi("Cursor", { fg = bg0, bg = fg0 })
hi("lCursor", { fg = bg0, bg = constant })

hi("DiffAdd", {  bg = diffadd })
hi("DiffChange", {})
hi("DiffText", {  bg = difftext })
hi("DiffDelete", { fg = diffdelete })

hi("SpellBad", { fg = error, sp = error, underline = true, })
hi("SpellCap", { fg = identifier, sp = identifier, underline = true, })
hi("SpellLocal", { fg = special, sp = special, underline = true, })
hi("SpellRare", { fg = type, sp = type, underline = true, })

-- syntax :help group-name

hi("Identifier", { fg = error })
hi("Function", { fg = identifier })
hi("Statement", { fg = statement })
hi("Label", { fg = statement })
hi("Constant", { fg = string })
hi("String", { fg = string })
hi("Number", { fg = constant })
hi("Boolean", { fg = constant })
hi("PreProc", { fg = preproc })
hi("Special", { fg = special })
hi("Tag", { fg = preproc })
hi("Delimiter", { fg = delimiter })
hi("Type", { fg = type })
hi("StorageClass", { fg = statement })
hi("Directory", { fg = identifier, bold = true })
hi("Comment", { fg = comment, italic = true })
hi("Conceal", { fg = comment })
hi("Ignore", {})

hi("Title", { fg = fg0, bold = true})

-- plugins

hi("qfError", { fg = error })
hi("colortemplateKey", { link = "Statement" })
hi("colortemplateAttr", { link = "String" })
hi("vimNotation", { link = "Type" })
hi("vimFuncSID", { link = "PreProc" })
hi("vimHiTerm", { link = "Identifier" })
hi("helpNotVi", { link = "Comment" })
hi("helpExample", { link = "PreProc" })
hi("gitCommitSummary", { link = "Title" })
hi("cocErrorSign", { link = "Type" })
hi("GitGutterAdd", { link = "String" })
hi("GitGutterChange", { link = "Number" })
hi("GitGutterDelete", { link = "Identifier" })
hi("diffAdded", { link = "String" })
hi("diffRemoved", { fg = error })
hi("asciidoctorOption", { fg = comment })
hi("asciidoctorLiteralBlock", { fg = comment })
hi("asciidoctorIndented", { fg = comment })
hi("SelectDirectoryPrefix", { fg = comment })
-- https://github.com/vim/vim/blob/master/runtime/syntax/python.vim
hi("pythonBuiltin", { link = "Constant" })
-- https://github.com/vim-python/python-syntax/blob/master/syntax/python.vim
hi("pythonBuiltinFunc", { link = "Special" })
-- overwrites pythonInclude because of pyrex.vim
-- https://github.com/lambdalisue/vim-cython-syntax needs pythonInclude so link
hi("pythonInclude", { link = "pythonImport" })
hi("ExtraWhitespace", { link = "Error" })

