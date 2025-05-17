return {
    "xiyaowong/transparent.nvim",
    config = function()
        require("transparent").clear_prefix("NeoTree")
        require("transparent").clear_prefix("BufferLine")
        require("transparent").clear_prefix("lualine")
        require("transparent").setup({
            enable = true,
            extra_groups = {
                -- Bufferline ile ilgili gruplar
                "BufferLineTabClose",
                "BufferLineBufferSelected",
                "BufferLineFill",
                "BufferLineBackground",
                "BufferLineSeparator",
                "BufferLineIndicatorSelected",
                "BufferLineDevIconDefault",
                "BufferLineDevIconSelected",
                "BufferLineModified",
                "BufferLineModifiedSelected",
                "BufferLineModifiedVisible",

                -- TokyoNight teması ile ilgili gruplar
                "Normal",
                "NormalFloat",
                "FloatBorder",
                "SignColumn",
                "LineNr",
                "CursorLineNr",
                "VertSplit",
                "StatusLine",
                "StatusLineNC",
                "TabLine",
                "TabLineFill",
                "TabLineSel",

                -- Diğer pluginlerle ilgili gruplar
                "IndentBlanklineChar",
                "LspFloatWinNormal",
                "TelescopeNormal",
                "TelescopeBorder",
                "TelescopePromptBorder",
                "SagaBorder",
                "SagaNormal",
            },
            exclude = {}, -- Transparan olmasını istemediğiniz gruplar
        })
    end,
}
