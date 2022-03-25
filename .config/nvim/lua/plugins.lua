-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
    }
    
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })

    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
    }
    use {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
    }

    use {
        'vimwiki/vimwiki',
        config = function()
            vim.cmd[[
                if has('mac')
                    let g:vimwiki_list = [{'path': '/Users/simonrodriguez/Library/CloudStorage/OneDrive-Personal/vimwiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
                endif

                if has('linux')
                    let g:vimwiki_list = [{'path': '~/OneDrive/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
                endif
            ]]
        end
    }

    use {
        'voldikss/vim-floaterm',
        config = function()
            vim.cmd[[
                let g:floaterm_title = '$1/$2'
            ]]
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- use 'lukas-reineke/indent-blankline.nvim'

end)

