packadd! dracula_pro
let g:dracula_colorterm = 0
colorscheme dracula_pro
set clipboard&
set showcmd
set showmatch
set relativenumber
set cursorcolumn
set cursorline
set noswapfile
set expandtab
set ignorecase
set termguicolors
set ttyfast
set noerrorbells visualbell t_vb=
set clipboard^=unnamedplus
set encoding=UTF-8
set nocompatible
call plug#begin('~/.local/share/nvim/plugged')
	Plug 'mhinz/vim-startify'
"	Plug 'ghifarit53/tokyonight-vim'
"	Plug 'tiagovla/tokyodark.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'sheerun/vim-polyglot'
	Plug 'preservim/nerdtree'
	Plug 'jreybert/vimagit'
	Plug 'ryanoasis/vim-devicons'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
  Plug 'ObserverOfTime/coloresque.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'simeji/winresizer'
	Plug 'junegunn/rainbow_parentheses.vim'
"	Plug 'dracula/vim', { 'as': 'dracula' }
	"Plug 'gko/vim-coloresque'
call plug#end()
syntax enable
"let g:dracula_colorterm = 0
"colorscheme dracula

"nerdtree"
nnoremap <C-n> :NERDTreeToggle<CR>
" Start NERDTree when Vim is started without file arguments.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
let g:coloresque_extra_filetypes = ['config']
"let g:airline_theme = 'deus'
"let g:airline_deus_bg = 'dark'
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
"gitgutter
" 記号更新のタイミングを早くする
set updatetime=250
let g:gitgutter_highlight_lines = 1

"let g:airline_theme='gruvbox'                                                                                                             
let g:airline_powerline_fonts = 1                                                                                                         
let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD                                                 
                                                                                                                                          
"TABLINE:                                                                                                                                 
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                                                     
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline
"let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_statusline_ontop=1
let g:ranger_map_keys = 0
map <leader>f :RangerNewTab<CR>
set number
set termguicolors
"let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyodark_transparent_background = 0
let g:tokyodark_enable_italic_comment = 1
let g:tokyodark_enable_italic = 1
let g:tokyodark_color_gamma = "1.0"
" colorscheme tokyodark
" Ctrl+nでファイルツリーを表示/非表示する
"colorscheme tokyonight
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
set nowrap
