set background=dark
colorscheme gruvbox

filetype plugin indent on " load filetype-specific indent files
syntax enable             " enable syntax processing
set tabstop=2             " number of visual spaces per tab
set title                 " Show the filename in the title bar
set softtabstop=2         " number of spaces in tab when editing
set expandtab             " tabs are spaces
set number                " show line numbers
set showcmd               " show command in bottom bar
set cursorline            " highlight current line
set wildmenu              " visual autocomplete for command menu
set lazyredraw            " redraw only when we need to
set showmatch             " highlight matching [{()}]
set incsearch             " search as characters are entered
set hlsearch              " highlight matches
set clipboard=unnamedplus " use system clipboard

autocmd BufNewFile,BufRead *.c,*.h set tabstop=8
autocmd BufNewFile,BufRead *.c,*.h set softtabstop=8
autocmd BufNewFile,BufRead *.c,*.h set shiftwidth=8
autocmd BufNewFile,BufRead *.c,*.h set noexpandtab

" Install and run vim-plug on first run
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

so ~/.vim/plugins.vim

:nnoremap <c-t> :NERDTreeToggle<cr>

let NERDTreeShowHidden=1

:nnoremap <space> i<space><esc>
:nnoremap <tab> ^i<tab><esc>

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['pylint'],
\   'sh': ['shellcheck'],
\}

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-/> :TmuxNavigatePrevious<cr>
