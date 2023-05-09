" Native vim stuff
set number
set encoding=UTF-8

filetype plugin indent on
set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces

set updatetime=100 " https://github.com/airblade/vim-gitgutter#getting-started
autocmd Filetype tex setl updatetime=1

set t_Co=256 " Number of colors allowed

set cursorline " Highlights the cursor line

if exists('+termguicolors')
    " Allow true colors. Colors are limited without this.
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

set nowrap " No text wrapping

set hlsearch " Native highlight colors
hi Search ctermbg=LightGray
hi Search ctermfg=Black

" Plugins
call plug#begin('~/.vim/plugged')

"" Developing
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-gitgutter'
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

Plug 'dense-analysis/ale'

Plug 'ycm-core/YouCompleteMe'

Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'
let g:ack_autoclose = 1
nnoremap <silent> <C-f> :Ack!<space>
nnoremap <silent> <C-p> :AckFile!<space>

""" Language Specifics

"""" LaTeX
Plug 'lervag/vimtex'

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
let g:livepreview_previewer = 'okular'

"""" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

""" Theme
Plug 'rakr/vim-one'
set background=dark " for the dark version
" set background=light " for the light version
let g:airline_theme='one'

call plug#end()

colorscheme one " Needs to be set after call plug#end()

