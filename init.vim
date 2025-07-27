call plug#begin()

" List your plugins here
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp' 
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-vsnip'                             
Plug 'hrsh7th/cmp-path'                              
Plug 'hrsh7th/cmp-buffer'                            
Plug 'hrsh7th/vim-vsnip'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'catppuccin/nvim'

call plug#end()

lua require("init")

set number
NvimTreeOpen
" nnoremap <C-n> :NvimTreeOpen<CR>

colorscheme catppuccin 
botright terminal 
resize 10
