-- tonight.nvim: lua colour scheme inspired by tomorrow and spacegray1
local c = require('colours')

-- Useful bit of VimL to be able to retrieve the highlight group from a bit of text.
-- let s = synID(line('.'), col('.'), 1) | echo synIDattr(s, 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name')

local function highlight(group, styles)
    local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
    local fg = styles.fg and 'guifg='.. styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg='.. styles.bg or 'guibg=NONE'

    vim.api.nvim_command('highlight ' .. group .. ' ' .. gui .. ' ' .. ' ' .. fg .. ' ' .. bg)
end

local groups = {
    ColorColumn = { bg = c.gray1 },
    Comment = { fg = c.gray3 },
    Cursor = { bg = c.white },
    CursorLine = { bg = c.highlight },
    CursorLineNr = { bg = c.highlight, fg = c.white },
    EndOfBuffer = { fg = c.gray1 },
    Error = { fg = c.red, gui = "bold" },
    ErrorMsg = { fg = c.red, gui = "bold" },
    FoldColumn = { fg = c.gray1, gui = "bold" },
    Folded = { fg = c.gray1, gui = "bold" },
    LineNr = { fg = c.gray1 },
    Normal = { fg = c.foreground },
    SignColumn = { bg = c.black },
    VertSplit = { fg = c.gray1, bg = c.black },
    Visual = { bg = c.highlight },
    VisualNOS = { bg = c.highlight },
    WarningMsg = { fg = c.red },
    Whitespace = { fg = c.gray1 },
    NormalFloat = { bg = c.black },
    Pmenu = { bg = c.black },
    Identifier = { fg = c.magenta },
    -- Boolean = { fg = c.yellow },
    -- Delimiter = { fg = c.gray1 },
    -- Directory = { fg = c.blue },
    -- IncSearch = { bg = c.yellow, fg = c.black },
    -- Macro = { fg = c.magenta },
    -- MatchParen = { bg = c.black, fg = c.yellow, gui = "underline"},
    -- ModeMsg = { fg = c.foreground, gui = "bold" },
    -- MoreMsg = { fg = c.blue, gui = "bold" },
    -- NormalFloat = { fg = c.foreground },
    -- NonText = { fg = c.foreground, gui = "bold" },
    -- PreProc = { fg = c.blue },
    -- Question = { fg = c.blue },
    -- QuickFixLine = { bg = c.highlight, gui = "bold" },
    -- Repeat = { fg = c.magenta },
    -- Search = { bg = c.yellow, fg = c.black },
    -- Special = { fg = c.red },
    -- SpecialChar = { fg = c.red },
    -- Statement = { fg = c.magenta },
    -- Structure = { fg = c.magenta },
    -- Substitute = { bg = c.red, fg = c.black },
    -- Title = { fg = c.foreground, gui = "bold" },
    -- Todo = { fg = c.black, bg = c.foreground, gui = "bold" },

    -- Treesitter slowly attempting to replace all the things
    TSBuiltin = { fg = c.builtin },
    TSBoolean = { fg = c.red },
    TSCharacter = { fg = c.green },
    TSComment = { fg = c.gray3 },
    TSConstant = { fg = c.red },
    TSConstructor = { fg = c.gray3 },
    TSConditional = { fg = c.magenta },
    TSField = { fg = c.foreground },
    TSFuncBuiltin = { fg = c.gray9, gui = "bold" },
    TSFunction = { fg = c.blue },
    TSInclude = { fg = c.magenta },
    TSKeyword = { fg = c.foreground },
    TSKeywordFunction = { fg = c.gray9, gui = "bold" },
    TSKeywordOperator = { fg = c.foreground },
    TSMethod = { fg = c.blue },
    TSNumber = { fg = c.red },
    TSOperator = { fg = c.foreground },
    TSParameter = { fg = c.blue },
    TSProperty = { fg = c.white },
    TSPunctBracket = { fg = c.white },
    TSPunctDelimiter = { fg = c.red },
    TSPunctSpecial = { fg = c.red },
    TSRepeat = { fg = c.gray9 },
    TSString = { fg = c.white },
    TSStringEscape = { fg = c.red },
    TSType = { fg = c.gray9 },
    TSVariable = { fg = c.gray9 },
    TSVariableBuiltin = { fg = c.white },
    TSNamespace = { fg = c.blue },

    -- LSP
    LspDiagnosticsDefaultWarning = { fg = c.lsp_warn },
    LspDiagnosticsDefaultError = { fg = c.lsp_error },
    LspDiagnosticsDefaultHint = { fg = c.lsp_hint },
    LspDiagnosticsDefaultInformation = { fg = c.lsp_info },
    DiagnosticError = { fg = c.lsp_error },
    DiagnosticHint = { fg = c.lsp_hint },
    DiagnosticInfo = { fg = c.lsp_info },
    DiagnosticWarn = { fg = c.lsp_warn },
    DiagnosticFloatingError = { fg = c.lsp_error },
    DiagnosticFloatingHint = { fg = c.lsp_hint },
    DiagnosticFloatingInfo = { fg = c.lsp_info },
    DiagnosticFloatingWarn = { fg = c.lsp_warn },
    DiagnosticSignError = { fg = c.lsp_error },
    DiagnosticSignHint = { fg = c.lsp_hint },
    DiagnosticSignInfo = { fg = c.lsp_info },
    DiagnosticSignWarn = { fg = c.lsp_warn },
    DiagnosticVirtualTextError = { fg = c.lsp_error, gui = "bold" },
    DiagnosticVirtualTextHint = { fg = c.lsp_hint, gui = "bold" },
    DiagnosticVirtualTextInfo = { fg = c.lsp_info, gui = "bold" },
    DiagnosticVirtualTextWarn = { fg = c.lsp_warn, gui = "bold" },

    --- Plugins:
    IndentBlanklineChar = { fg = c.gray2 },

    -- vim-illuminate
    illuminatedWord = { bg = c.gray6, fg = c.black },

    CmpItemAbbrDeprecated = { fg = c.red },

    CmpItemAbbrMatch = { fg = c.blue },
    CmpItemAbbrMatchFuzzy = { fg = c.blue },

    CmpItemKindVariable = { fg = c.foreground },
    CmpItemKindInterface = { fg = c.magenta },
    CmpItemKindText = { fg = c.foreground },

    CmpItemKindFunction = { fg = c.blue },
    CmpItemKindMethod = { fg = c.blue },

    CmpItemKindKeyword = { fg = c.magenta },
    CmpItemKindProperty = { fg = c.foreground },
    CmpItemKindUnit = { fg = c.foreground },

    CmpItemMenu = { bg = c.black },

    -- TODO: try and get a black highlight for the selectied completion
    -- item because it will just show up as grey

    FidgetTitle = { bg = c.black },
    FidgetTask = { bg = c.black },

    --- Filetypes:
    -- for when you use nvim as your manpager :^)
    manOptionDesc = { fg = c.red },
    manSectionHeading = { fg = c.gray9 },
    manSubheading = { fg = c.gray7 },
    manHeader = { fg = c.white, gui = "bold" },
    manReference = { fg = c.white, gui = "bold" },

    markdownH1Delimiter = { fg = c.indent_line },
    markdownH2Delimiter = { fg = c.indent_line },
    markdownH3Delimiter = { fg = c.indent_line },
    markdownH4Delimiter = { fg = c.indent_line },
    markdownH5Delimiter = { fg = c.indent_line },
    markdownH6Delimiter = { fg = c.indent_line },
    markdownH1 = { gui = "bold" },
    markdownH2 = { gui = "bold" },
    markdownH3 = { gui = "bold" },
    markdownH4 = { gui = "bold" },
    markdownH5 = { gui = "bold" },
    markdownH6 = { gui = "bold" },
    markdownListMarker = { fg = c.magenta },
    markdownUrl = { fg = c.blue },
    markdownCode = { fg = c.white },

    bashTSParameter = { fg = c.foreground },
    bashTSVariable = { fg = c.foreground },
    bashTSConstant = { fg = c.red },
}

for group, styles in pairs(groups) do
    highlight(group, styles)
end
