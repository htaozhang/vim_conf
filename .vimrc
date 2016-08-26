set encoding=utf-8

set tags=tags;
set autochdir

" 语法高亮
if has("syntax")
    set syntax=on
endif

" 显示行号
set number

" 启用鼠标
if has("mouse")
    set mouse=a
endif

" tab
set tabstop=4
set expandtab
set shiftwidth=4
set bs=2

" indent
set smartindent
set autoindent
set cinoptions=g0

" cursor line
set cursorline
set hls

" 补全
set completeopt=preview,menu
inoremap ( ()<ESC>i
inoremap { {}<ESC>i
inoremap [ []<ESC>i
set showmatch

" 文件类型检测
filetype plugin indent on
set completeopt=longest,menu

" powerline
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set laststatus=2
"set t_Co=256
"let g:Powerline_symbols='fancy'
"

let Tlist_Show_one_file=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExpMapWindowNavArrows=1
let g:winManagerWidth = 20

" NERDTree
" map <F3> :NERDTreeMirror<CR>
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"set list listchars=tab:→\ ,trail:·
