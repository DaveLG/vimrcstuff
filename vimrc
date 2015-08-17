set nocompatible
filetype plugin on
set number
set ruler
"autocmd vimenter * NERDTree

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

" Set encoding
set encoding=utf-8

"vimwiki stuff
    let wiki_1 = {}
    "let wiki_1.path = '~/Dropbox/vimwiki/'
    let wiki_1.html_template = '~/public_html/template.tpl'
    let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
    let wiki_2 = {}
   " let wiki_2.path = '~/Dropbox/2wiki/'
    let wiki_2.index = 'Books'
    let wiki_3 = {}
    "let wiki_3.path = '~/Dropbox/3wiki/'
    let wiki_2.index = 'AA6RE'
    let g:vimwiki_list = [wiki_1, wiki_2, wiki_3]

" Whitespace stuff
set wrap
set linebreak
set nolist 
set textwidth=0
set wrapmargin=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set textwidth=79


" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2
" Default color scheme
color desert


" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" Show (partial) command in the status line
set showcmd

" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)


map <F9> :set makeprg="/usr/bin/javac" %<CR>:make<CR>
map <F10> :!echo %\|awk -F. '{print $1}'\|xargs java<CR>

" Remap to quickly edit .vimrc file:
nnoremap <Leader>v :e /Users/david/.vimrc <CR>


