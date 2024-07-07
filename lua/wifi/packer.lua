-- Only required if you have packer configured as `opt` vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('mbbill/undotree')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons' -- optional
        }}
        use {
            ("folke/tokyonight.nvim")
        }
        use {
            ("rose-pine/neovim")
        }
        use{("Exafunction/codeium.vim")}
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        }
        use {"akinsho/toggleterm.nvim", tag = '*'}
        use {
            'nvimdev/dashboard-nvim',
            event = 'VimEnter',
            requires = {'nvim-tree/nvim-web-devicons'}
        }
        use 'mfussenegger/nvim-dap'
        use 'mfussenegger/nvim-dap-python'
        use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio", "mfussenegger/nvim-dap-python"} }
        use ({
            "kmontocam/nvim-conda",
            requires = { "nvim-lua/plenary.nvim" },
        })
        use {
            'chipsenkbeil/distant.nvim',
            branch = 'v0.3',
            config = function()
                require('distant'):setup()
            end
        }
        use {
            'VonHeikemen/fine-cmdline.nvim',
            requires = {
                {'MunifTanjim/nui.nvim'}
            }
        }

        use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
    end)
