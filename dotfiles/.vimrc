set background=dark
colorscheme gruvbox

filetype indent on " load filetype-specific indent files

syntax enable      " enable syntax processing

set tabstop=4      " number of visual spaces per tab
set softtabstop=4  " number of spaces in tab when editing
set expandtab      " tabs are spaces
set number         " show line numbers
set showcmd        " show command in bottom bar
set cursorline     " highlight current line
set wildmenu       " visual autocomplete for command menu
set lazyredraw     " redraw only when we need to
set showmatch      " highlight matching [{()}]
set incsearch      " search as characters are entered
set hlsearch       " highlight matches

" Install and run vim-plug on first run
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

so ~/.vim/plugins.vim

map <C-t> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

:nnoremap <space> i<space><esc>
:nnoremap <tab> i<tab><esc>
