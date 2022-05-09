call plug#begin()
Plug 'neoclide/coc.nvim', {'branch':'release'}
"Plug 'glepnir/dashboard-nvim'
"Nerd Tree config
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-visual-selection'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'terryma/vim-multiple-cursors'
Plug 'ggandor/lightspeed.nvim'
Plug 'lalitmee/cobalt2.nvim'
Plug 'karb94/neoscroll.nvim'

" Themes
Plug 'lalitmee/cobalt2.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'dylanaraps/wal.vim'
Plug 'sainnhe/sonokai'
Plug 'Rigellute/shades-of-purple.vim'
call plug#end()

set autochdir
set mouse=a
set number
set relativenumber
lua require('neoscroll').setup()

" Setting theme
autocmd vimenter * ++nested colorscheme onedark

let g:neovide_transparency=0.9
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1

let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"
let g:deoplete#enable_at_startup = 1
let g:neomake_python_enabled_markers = ['pylint']

" Terminal exit mapping
tnoremap <Esc> <C-\><C-n><cr>

inoremap <C-e> <C-o>A

" telescope.nvim shortcuts
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Custom mapping
nnoremap <C-S-v> "+p
nnoremap <leader>, <cmd>e ~/.config/nvim/init.vim<cr>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
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