vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- tokyonight theme
    use 'folke/tokyonight.nvim'
    -- lsp
    use {'neovim/nvim-lspconfig'}
    --mason
    use { "williamboman/mason.nvim"}
    use {"williamboman/mason-lspconfig.nvim"}
    -- lspsaga
    use{"glepnir/lspsaga.nvim"}
    -- cmp,luasnip补全
    use { 'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/cmp-buffer',
          'hrsh7th/cmp-path',
          'hrsh7th/cmp-cmdline',
          'hrsh7th/nvim-cmp',
          'L3MON4D3/LuaSnip',
          'onsails/lspkind-nvim',
          'saadparwaiz1/cmp_luasnip'}

    -- treesitter高亮
    use 'nvim-treesitter/nvim-treesitter'
    use 'p00f/nvim-ts-rainbow'

    -- telescope查找
    use {
          'nvim-telescope/telescope.nvim',
          'nvim-lua/plenary.nvim',
          'nvim-telescope/telescope-file-browser.nvim',
          'kyazdani42/nvim-web-devicons',
    }

    -- dashboard
    use {'glepnir/dashboard-nvim'}

    -- filetype
    use("nathom/filetype.nvim")

    --impatient
    use 'lewis6991/impatient.nvim'
    use {
        'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional, for file icons
            },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

    -- bufferline
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    --indent_blankline
    use {"lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup { filetype_exclude = { "dashboard" }}
          end
        }
    --DAP调试
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    -- Chinese
    use 'yianwillis/vimcdoc'
    --Love
    use 'https://github.com/davisdude/vim-love-docs/tree/build'

    use "tpope/vim-repeat"
    use "ggandor/leap.nvim"
end)
