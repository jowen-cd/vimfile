"call pathogen#infect()
execute pathogen#infect()


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
autocmd FileType go setlocal foldmethod=syntax
autocmd FileType api setlocal et sta sw=2 sts=2
"let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
let g:go_fold_enable = ['import', 'varconst', 'package_comment']
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

"行号
set number

"set showmode

set encoding=utf-8
set fileencoding=utf-8
set tenc=utf-8

colorscheme molokai

"if has('termguicolors')
"    set termguicolors
"endif
"
"" The configuration options should be placed before `colorscheme sonokai`.
"let g:sonokai_style = 'andromeda'
"let g:sonokai_better_performance = 1
"colorscheme sonokai



"NERDTree
map <F7> :NERDTreeToggle <CR>

"Tagbar
nmap <F8> :TagbarToggle<CR>

"Explore
map <F2> :Explore <CR>

"BufExplorer
map <C-b> :BufExplorer <CR>

"Funzzyfind
"map <C-f> :FufFile <CR>
"map <C-f> :FuzzyFinderTextMate <CR>

"被F7代替
"map <leader>n :NERDTreeToggle <CR>

set wrap "设置自动折行
"set nowrap "设置不自动折行

set nobackup
"set backup  "may generate backup file like *.swp or *~ 
"set noswapfile

set fileencodings=utf-8,gb2312,latin-1


set mouse=a "鼠标可点击

"
set backspace=indent,eol,start



"auto source vimrc after edit
autocmd bufwritepost .vimrc source ~/.vimrc

"auto source local vim.custom
if filereadable(".vim.custom")
	so .vim.custom
endif

"hi Pmenu guibg=red  "for gvim
"hi Pmenu ctermbg=red  " for vim

"CtrlP
"set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:12,results:12'


"handlebar
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars


"tab
:set expandtab
:set tabstop=4


"find in file
map <F4> :execute " grep -srnw --binary-files=without-match --exclude-dir=.git . -e " . expand("<cword>") . " " <bar> cwindow<CR>

"learn more
""vim common
"vim fold

""TODO plugin
"snipmate
"ctrlp
"
"
call plug#begin()
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'fatih/molokai'


" colorscheme
Plug 'sainnhe/sonokai'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'




call plug#end()

" 画图
"

" golang dlv
autocmd FileType go nnoremap <F9> :DlvToggleBreakpoint <CR>
" go to definition and With ctrl-o to back 
"autocmd FileType go nnoremap <C-J> :GoDef <CR>
"autocmd FileType go nnoremap <C-K> :GoDefType <CR>
"autocmd FileType go nnoremap <C-L> :GoDefStack <CR>
"autocmd FileType go nnoremap <C-F> :GoReferrers <CR>
"autocmd FileType go nnoremap <C-I> :GoImplements <CR>
autocmd FileType go nnoremap gi :GoImplements <CR>
""autocmd FileType go nnoremap gd :GoDef <CR>
autocmd FileType go nnoremap gds :GoDefStack <CR>
autocmd FileType go nnoremap gdt :GoDefType <CR>
autocmd FileType go nnoremap gr :GoReferrers <CR>
autocmd FileType go nnoremap gc :GoCallers <CR>

set shell=sh
