set nocompatible              " be iMproved, required
"filetype on                  " required // I Change off to on .................
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
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'
" 我的color_sample_pack and randomColorPicker   
" 配色包 
"Plugin 'color_sample_pack'
"Plugin 'mimicpak.vim'
" 随机选择颜色插件
"Plugin 'randomColorPicker'
"---------------------------------------------------------
"Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'szw/vim-tags'
"Bundle 'taglist.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'    
"Bundle 'davidhalter/jedi-vim'
Bundle 'Shougo/neocomplete.vim'
Bundle 'scrooloose/syntastic'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'sunuslee/vim-plugin-random-colorscheme-picker'
Bundle 'majutsushi/tagbar'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'terryma/vim-expand-region'
"Bundle 'Raimondi/delimitMate'
Bundle 'easymotion/vim-easymotion'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'tpope/vim-surround'
Bundle 'haya14busa/incsearch.vim'
Bundle 'justinmk/vim-sneak'
Bundle 'vim-gitgutter'
Bundle 'godlygeek/tabular'
"Bundle 'tacahiroy/ctrlp-funky'
Bundle 'Shougo/unite.vim'
"Bundle 'vim-ctrlspace/vim-ctrlspace'
"Bundle 'powerline/powerline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'vim-airline/vim-airline'
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
"let Tlist_Auto_Open=1				"自动打开？
"let Tlist_Use_Left_Windo =1        		"在左侧窗口中显示taglist窗口
"autocmd VimEnter * Tlist           " 自动开启 Tlist


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
"let g:UltiSnipsSnippetDirectories=['UltiSnips']    "  configuration dir





"-----------------Neocomplete Configuration--------------------------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


" my Neocomplete Configuration
let g:neocomplcache_enable_quick_match = 1 
"inoremap <expr><space>  pumvisible() ? neocomplcache#close_popup() . "\<SPACE>" : "\<SPACE>"







"--------------Nerdcommenter Configuration ---------
let g:NERDSpaceDelims=1







"-------------Supertab Configuration----------------
let g:SuperTabContextDefaultCompletionType = "<c-n>"







"--------------------------------Syntastic Configuration------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0






"--------------------------Tagbar Configuration-------------
nmap <F8> :TagbarToggle<CR>
autocmd VimEnter * Tagbar





"--------------------------CtrlP Configuration--------------
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux







"-------------------------rainbow-parenthese----------
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces





"------------expand-region ---------------
vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)
" Extend the global default (NOTE: Remove comments in dictionary before sourcing)
call expand_region#custom_text_objects({
      \ "\/\\n\\n\<CR>": 1, 
      \ 'a]' :1, 
      \ 'ab' :1, 
      \ 'aB' :1, 
      \ 'ii' :0, 
      \ 'ai' :0, 
      \ })







"----------------Easymotion Configuration-------
let g:EasyMotion_smartcase = 1
map <Leader> <Plug>(easymotion-prefix)

"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)

" example of the offcial-------------------
" <Leader>f{char} to move to {char}
"map  <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader><leader>w <Plug>(easymotion-bd-w)
nmap <Leader><leader>w <Plug>(easymotion-overwin-w)

" ----Integration with incsearch
" You can use other keymappings like <C-l> instead of <CR> if you want to
" use these mappings as default search and somtimes want to move cursor with
" EasyMotion.
" function! s:incsearch_config(...) abort
  " return incsearch#util#deepextend(deepcopy({
  " \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  " \   'keymap': {
  " \     "\<CR>": '<Over>(easymotion)'
  " \   },
  " \   'is_expr': 0
  " \ }), get(a:, 1, {}))
" endfunction
" noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
" noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
" noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))





"-----------Incsearch Configuration----------------------------
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)





"----------------Sneak Configuration-------------------
let g:sneak#streak = 1






"-----------------Ctrlp-funky Configuration-----
nnoremap <Leader>Fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>FU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1

let g:ctrlp_extensions = ['funky']





"------------------aireline Configuration---------
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'








"-----------------------------General Configuration 1-------------------------------------------------------------------
" my config
set nu
colorscheme molokai
let g:molokai_original = 0
"colorscheme solarized
"
"
"

"------------------------------General Configuration2---------------------------------------------------------------------------------------
" Another Configuration
"
" 定义快捷键的前缀，即<Leader>
let mapleader="\<Space>"
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

" auto save
let autosave=5
" 设置快捷切换normal模式
imap jj <Esc>
nmap ;; <Esc>
vmap ;; <Esc>

set scrolloff=3
" 光标移动到buffer的顶部和底部时保持3行距离

set cmdheight=2

set linespace=2

set guifont=Menlo:h12
