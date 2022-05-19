" Native vim stuff
set number
set encoding=UTF-8

autocmd Filetype tex setl updatetime=1

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

" https://github.com/airblade/vim-gitgutter#getting-started
set updatetime=100

" Number of colors allowed
set t_Co=256

" Not sure what this is
set cursorline

" Allow true colors. Colors are limited without this.
 if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
 endif

" No text wrapping
set nowrap

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plug 'preservim/nerdtree' |
	\ Plug 'Xuyuanp/nerdtree-git-plugin' |
	\ Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-gitgutter'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

Plug 'mhinz/vim-grepper'

Plug 'dense-analysis/ale'

" Theme
Plug 'rakr/vim-one'

" Status bar
Plug 'vim-airline/vim-airline'

call plug#end()

" Global variables
" vim-latex-live-preview
let g:livepreview_previewer = 'okular'

" gitgutter colors
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

" native highlight colors
set hlsearch
hi Search ctermbg=LightGray
hi Search ctermfg=Black

colorscheme one
set background=dark " for the dark version
" set background=light " for the light version
let g:airline_theme='one'

