call plug#begin()
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'dag/vim-fish'

" Neotree Setup
Plug 'MunifTanjim/nui.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-neo-tree/neo-tree.nvim'

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'p00f/nvim-ts-rainbow'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'zane-/cder.nvim'

Plug 'neovim/nvim-lspconfig'

" Lualine
Plug 'nvim-lualine/lualine.nvim'

" Themes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'navarasu/onedark.nvim'
Plug 'phanviet/vim-monokai-pro'
Plug 'sainnhe/sonokai'
Plug 'Rigellute/shades-of-purple.vim'
call plug#end()

"set autochdir
set mouse=a
set number
set relativenumber
set shell=/usr/bin/fish

" Lualine Setup
lua require('lualine').setup()
lua require('treesitter')

" Setting theme
let g:tokyonight_style="night"
autocmd vimenter * ++nested colorscheme tokyonight

"let g:neovide_transparency=0.9
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"
let g:deoplete#enable_at_startup = 1
let g:neomake_python_enabled_markers = ['pylint']

" Terminal exit mapping
tnoremap <Esc> <C-\><C-n><cr>

" Aliases
abbrev pa pass

" Cder.nvim
lua require('telescope').load_extension('cder')
nnoremap <silent>cd <cmd>Telescope cder<cr>

" telescope.nvim shortcuts
nnoremap <silent>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <silent>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <silent>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Custom mapping
nnoremap <C-S-v> "+p
nnoremap <silent>, <cmd>e ~/.config/nvim/init.vim<cr>
nnoremap <silent>n <cmd>NeoTreeShowToggle<cr>
nnoremap <silent>b <cmd>Neotree<cr>

" Remap for rename current word
nmap <silent> rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
