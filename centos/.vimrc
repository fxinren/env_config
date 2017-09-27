if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
	set fileencodings=ucs-bom,utf-8,latin1
endif

set nocompatible	" Use Vim defaults (much better!)
set bs=indent,eol,start		" allow backspacing over everything in insert mode
"set ai			" always set autoindenting on
"set backup		" keep a backup file
set nobackup	" do not keep a backup file
set viminfo='20,'50	" read/write a .viminfo file, don't store more
					" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" Only do this part when compiled with support for autocommands
if has("autocmd")
	augroup redhat
	autocmd!
	" In text files, always limit the width of text to 78 characters
	autocmd FileType text setlocal textwidth=78
	autocmd BufRead *.txt set tw=78
	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	" Also don't do it when the mark is in the first line, that is the default
	" position when opening a file.
	autocmd BufReadPost *
	  \ if line("'\"") > 1 && line("'\"") <= line("$") |
	  \   exe "normal! g`\"" |
	  \ endif

	" don't write swapfile on most commonly used directories for NFS mounts or USB sticks
	autocmd BufNewFile,BufReadPre /media/*,/run/media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp
	" start with spec file template
	autocmd BufNewFile *.spec 0r /usr/share/vim/vimfiles/template.spec
	augroup END
endif

if exists("tags")
	set tags=./tags
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif

"检测文件类型
filetype on

"针对不同的文件采取不同的缩进方式
filetype indent on
 
"允许插件
filetype plugin on
 
"启动智能补全
filetype plugin indent on

if &term=="xterm"
     set t_Co=8
     set t_Sb=[4%dm
     set t_Sf=[3%dm
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""
" My configuration starts Here
""""""""""""""""""""""""""""""""""""""""""""""""""""
"remove welcome message
set shortmess=atI

" set background=dark " light 
" colorscheme desert
" colorscheme solarized

set autochdir

"set compatible with vi
"set nocompatible

"line number
set number

"设置在编辑过程中右下角显示光标的行列信息
"set ruler

"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
"set history=100

"设置取消备份 禁止临时文件的生成
set nobackup
set noswapfile

"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
"syntax on
syntax enable

"指定配色方案为256色
set t_Co=256

"设置搜索时忽略大小写
"set ignorecase

"do a increasing seach matching
set incsearch

highlight Search cterm=NONE ctermfg=Black ctermbg=Yellow

"配置backspace的工作方式
"allow backspacing over everything in insert mode
"set backspace=indent,eol,start
"set bs=indent,eol,start

"设置 Backspace 和 Delete 的灵活程度，backspace=2 则没有任何限制
"在insert模式下用退格键删除
set bs=2

"状态行颜色 
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

"总是显示状态行
set laststatus=2

"显示文件名: 总行数, 总的字符数
set statusline=[%F]%y%r%m%*%=[%l/%L,%c][%p%%]

"进入插入模式时改变状态栏颜色（仅限于Vim 7）
if version >= 700
	au InsertEnter * hi StatusLine guibg=#818D29 guifg=#FCFCFC gui=none
	au InsertLeave * hi StatusLine guibg=Yellow guifg=SlateBlue gui=none
endif

"文件在Vim之外修改过，自动重新读入
set autoread

" 去掉报警声
set vb t_vb=

"设置在vim中可以使用鼠标: a=all v=visual
"set mouse=a

"设置tab宽度
set tabstop=4

"设置自动对齐空格数
set shiftwidth=4

"设置退格键时可以删除4个空格
set smarttab
set softtabstop=4

"带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"整词换行
set linebreak

"设置行结尾格式
set fileformat=unix

"设置编码方式
set encoding=utf-8
