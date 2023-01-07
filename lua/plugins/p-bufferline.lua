vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        -- 使用nvim内置lsp
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        --左侧让出nvim-tree
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }},
    }
}
