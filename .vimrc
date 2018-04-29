let mapleader=";"
filetype on

filetype plugin on

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
"第一快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
"保存并退出
nmap <Leader>wq :wa<CR>:q<CR>
"不做保存退出
nmap <Leader>q :qa!<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'fholgado/minibufexpl.vim'
	Plugin 'Valloric/YouCompleteMe'
	" All of your Plugins must be added before the following line
	call vundle#end()            " required
	filetype plugin indent on    " required
	" To ignore plugin indent changes, instead use:
	"filetype plugin on
	"
	" Brief help
	" :PluginList       - lists configured plugins
	" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
	" :PluginSearch foo - searches for foo; append `!` to refresh local cache
	" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
	"
	" see :h vundle for more details or wiki for FAQ
	" Put your non-Plugin stuff after this line



" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
 nmap <Leader>fl :NERDTreeToggle<CR>
" " 设置NERDTree子窗口宽度
 let NERDTreeWinSize=32
" " 设置NERDTree子窗口位置
 let NERDTreeWinPos="right"
" " 显示隐藏文件
 let NERDTreeShowHidden=1
" " NERDTree 子窗口中不显示冗余帮助信息
 let NERDTreeMinimalUI=1
" " 删除文件时自动删除文件对应 buffer
 let NERDTreeAutoDeleteBuffer=1

" 显示/隐藏 MiniBufExplorer 窗口
"map <Leader>bl :MBEToggle<cr>
" " buffer 切换快捷键
noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l

set nu
syntax on
set tabstop=4
set nocompatible
set encoding=utf-8
set fileencodings=utf-8,chinese
set cindent shiftwidth=4
set backspace=indent,eol,start
autocmd Filetype c set omnifunc=ccomplete#Complete
autocmd Filetype cpp set omnifunc=cppcomplete#Complete
set incsearch
set display=lastline
set ignorecase
set nobackup
set ruler
set showcmd
set smartindent
set hlsearch
set cmdheight=1
set laststatus=2
set shortmess=atI
set formatoptions=tcrqn
set autoindent
