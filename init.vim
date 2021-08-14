"Some help-
"To disable the plugin use -> set runtimepath -= 'Path of Plugin'
"More will be updated

"Specifing the direcotry for plugins installation. -> ~/.config/nvim/plugged
call plug#begin('~/.config/nvim/plugged')
"***************************************************************************
"Plugins List START
Plug 'preservim/nerdtree'           "File/Folder browser
Plug 'frazrepo/vim-rainbow'         "Color the nested brackets
Plug 'jiangmiao/auto-pairs'         "Auto-pair the brackets
Plug 'itchyny/lightline.vim'        "Colored line[Insert, Normal, etc]
Plug 'vim-scripts/taglist.vim'      "Display Taglist :TlistOpen
Plug 'preservim/nerdcommenter'      "Better commenter
Plug 'Shougo/neobundle.vim'         "Plugin manager
Plug 'vim-scripts/valgrind.vim'     "Display file data[size, memeory, etc]
"Plug 'ycm-core/YouCompleteMe'       "Auto-complete
Plug 'cormacrelf/vim-colors-github'
Plug('morhetz/gruvbox')
"Plugin list END
call plug#end()
"***************************************************************************



"Extra settings
"***************************************************************************
set number                          "Set numbers in left side
set mouse=a                         "Use of mouse = true
"Tab length set ot 4(Default)
set tabstop=4 shiftwidth=4 expandtab
"Tab lenght set to 2(Only for c++ file)
autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
"set colorcolumn=80                  "Set column length(Red Line) to 80
filetype on                         "Display the file type
"***************************************************************************



"COLORSCHEME
"***************************************************************************
if has('termguicolors')             "Check if the terminal has TGC
	set termguicolors               "If yes, then use them
endif
syntax enable
let g:github_colors_soft = 1
let g:github_colors_block_diffmarks = 0
set background=dark                 "Default background color = Dark
colorscheme github
let g:airline_theme = "github"
let g:lightline = { 'colorscheme': 'github' }
let g:rainbow_active = 1            "Color brackets
"***************************************************************************



"NERDTree
"***************************************************************************
"Start NerdTree. and if file is specified, then move the cursor to window.
autocmd StdinReadPre * let s:std_in=1
let g:NERDTreeWinPos = "right"

autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"Close NERDTee if only NERDTee window is left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"Quit the NERDTree when file is opened
let NERDTreeQuitOnOpen = 1
"***************************************************************************



"YouCompleteMe
"***************************************************************************
"Change the color of suggested keywords bar. Black and White.
"highlight Pmenu ctermfg=15 ctermbg=0 guifg=#000000 guibg=#ffffff
"set completeopt-=preview            "Remove the preview windows created by YCM

"set runtimepath-=~/.config/nvim/plugged/YouCompleteMe
"***************************************************************************
