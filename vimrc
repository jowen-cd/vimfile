call pathogen#infect()

"高亮
syntax on
"搜索高亮
set hlsearch 

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

colorscheme ron


"NERDTree
map <F7> :NERDTreeToggle <CR>

"BufExplorer
map <C-b> :BufExplorer <CR>

"Funzzyfind
"map <C-f> :FufFile <CR>
map <C-f> :FuzzyFinderTextMate <CR>

set wrap "设置自动折行
"set nowrap "设置不自动折行
