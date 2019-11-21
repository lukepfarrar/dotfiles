
"
" Copy this file to ~/.vimrc
"

set hidden
set nowrap
set mouse=a
syn on
set bg=dark
filetype plugin indent on
set ignorecase
set smartcase
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
match ErrorMsg '\s\+$'
set autoindent
set copyindent
set number
set showmatch
set smarttab
set hlsearch
set incsearch
set title
set nobackup
set pastetoggle=<F2>
let &colorcolumn="80,".join(range(120,999),",")
if has("autocmd")
		  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"  	  au BufWritePost *.go GoInstall %
endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'Shougo/neocomplete.vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'posva/vim-vue'

Plug 'tpope/vim-fugitive'

" Add plugins to &runtimepath
call plug#end()


:map <F4> :GoMetaLinter<CR>
:map <F5> :GoInstall<CR> 
":GoMetaLinter<CR>
:map <F6> :GoTest<CR>
:map <F3> :GoDef<CR>
:map <F7> :GoDecls<CR>
:map <F8> :GoImplements<CR>
:map <F9> :GoInfo<CR>
:map <F10> :GoAlternate<CR>


let g:go_def_mode='gopls'
