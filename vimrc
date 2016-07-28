call pathogen#infect()


let mapleader=","


"高亮
syntax on
"搜索高亮
set hlsearch 
"取消搜索高亮
map <leader>= :noh<CR>

"动态搜索
"set is  "incsearch
"set nois "noincsearch

filetype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4
set sw=4
set ts=4
autocmd FileType ruby setlocal et sta sw=2 sts=2

"行号
set number

"set showmode

set encoding=utf-8
set fileencoding=utf-8
set tenc=utf-8

colorscheme desert


"NERDTree
map <F7> :NERDTreeToggle <CR>

"Explore
map <F2> :Explore <CR>

"BufExplorer
map <C-b> :BufExplorer <CR>

"Funzzyfind
"map <C-f> :FufFile <CR>
map <C-f> :FuzzyFinderTextMate <CR>

"被F7代替
"map <leader>n :NERDTreeToggle <CR>

set wrap "设置自动折行
"set nowrap "设置不自动折行

set nobackup
"set backup  "may generate backup file like *.swp or *~ 
"set noswapfile

set fileencodings=utf-8,gb2312,latin-1


set mouse=a "鼠标可点击


"auto source vimrc after edit
autocmd bufwritepost .vimrc source ~/.vimrc

"auto source local vim.custom
if filereadable(".vim.custom")
	so .vim.custom
endif

"hi Pmenu guibg=red  "for gvim
"hi Pmenu ctermbg=red  " for vim

"CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:12,results:12'


"handlebar
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars


"tab
:set expandtab
:set tabstop=4



"learn more
""vim common
"vim fold

""TODO plugin
"snipmate
"ctrlp
