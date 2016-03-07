set nocompatible              " be iMproved, required
filetype on                  " required // I Change off to on .................
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin' ------------------------ Deleted
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'} ------------------------ Deleted
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"----------------------------------
"Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'szw/vim-tags'
Bundle 'taglist.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'    
Bundle 'davidhalter/jedi-vim'
"Bundle 'SirVer/ultisnips'
"Bundle 'honza/vim-snippets'
"-----------------------------------

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
"
"
"
"
"---------------------------NERDTree Configuation-----------------------------------------
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
autocmd VimEnter * NERDTree




"-------------------------------  Taglist config -----------
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1           	"不同时显示多个文件的tag，只显示当前文件的
let Tlist_WinWidt =28					"设置taglist的宽度
let Tlist_Exit_OnlyWindow=1         	"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1			"在右侧窗口中显示taglist窗口
let Tlist_Auto_Update=1 			"maybe是自动更新tags
let Tlist_Auto_Open=1				"自动打开？
"let Tlist_Use_Left_Windo =1        		"在左侧窗口中显示taglist窗口
autocmd VimEnter * Tlist


"YouCompleteMe Config
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/myConfig_ycm_extra_config/.ycm_extra_conf.py' 



"-------------------------------- vim-indent-guides ------------------
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle


"-----------------ultisnips Configuration---------------------------
" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=['UltiSnips']    "  configuration dir





"-----------------------------General Configuration 1-------------------------------------------------------------------
" my config
set nu
colorscheme molokai
let g:molokai_original = 1
"colorscheme solarized
"
"
"

"------------------------------General Configuation 2---------------------------------------------------------------------------------------
" Another Configuration
"
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
"set cursorcolumn                " 不高亮显示列比较好:P
" 高亮显示搜索结果
set hlsearch


" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4


"Fast reloading of the .vimrc  <leader>ss   source 一次.vimrc
nmap <silent> <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrca    <leader>ee 编辑.vimrc
nmap <silent> <leader>ee :e ~/.vimrc<cr>


"-------------------------------Third Configuration-------------
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键关闭所有分割窗口
nmap <leader>Q :qa<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>q! :qa!<CR>

" 设置快捷键遍历子窗口
" 依次遍历
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

" vim 自身命令行模式智能补全
set wildmenu

