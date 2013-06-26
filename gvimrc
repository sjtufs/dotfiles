set gfn=YaHei\ Consolas\ Hybrid\ 10
"set gfn=Source\ Code\ Pro\ 9
colo codeschool
syntax enable

if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:vimrc_iswindows=1
else
    let g:vimrc_iswindows=0
endif
autocmd BufEnter * lcd %:p:h

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 快捷键  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
:map <F9> :!g++ -ggdb3 % -o %<<CR>
:map <F11> :!pdflatex %<.tex<CR>
:map <F10> :! ./%<<CR>
:map <F1> :w<CR>
:map <F2> :w<CR>
:map <C-c> :!clear<CR>
:map <F6> :tabprevious<CR>
:map <F7> :tabnew<CR>
:map <F8> :tabnext<CR>
"复制粘贴控制 
vmap <C-c> "+y 
vmap <C-x> "+c 
vmap <C-d> c<ESC>"+p 
imap <C-d> <ESC>"+pa 

 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 文件设置  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 不要备份文件（根据自己需要取舍） 
set nobackup 
" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
setlocal noswapfile 
"set bufhidden=hide 
 " history文件中需要记录的行数 
set history=100 
" 在处理未保存或只读文件的时候，弹出确认 
set confirm 
" 侦测文件类型 
filetype on 
" 载入文件类型插件 
filetype plugin on 
" 为特定文件类型载入相关缩进文件 
filetype indent on 
" 自动设置目录为正在编辑的文件所在的目录 
set autochdir 
set ffs=unix,dos,mac " favor unix ff, which behaves good under bot Winz & Linux  
set clipboard=unnamed,autoselect,exclude:cons\|linux "set clipboard 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
"显示设置  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 带有如下符号的单词不要被换行分割 
set iskeyword+=_,$,@,%,#,- 
" 语法高亮 
syntax on 
" 高亮字符，让其不受100列限制 
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
:match OverLength '\%101v.*' 
" 状态行颜色 
highlight StatusLine guifg=SlateBlue guibg=Gray 
highlight StatusLineNC guifg=Gray guibg=White 
" 字符间插入的像素行数目  
set linespace=0  
" 显示行号  
set nu  
" 增强模式中的命令行自动完成操作  
set wildmenu  
" 我的状态行显示的内容（包括文件类型和解码）  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l/%L,%v][%p%%]\ %{strftime(\"%y.%m.%d\ -\ %H:%M\")}  
" 总是显示状态行  
set laststatus=2  
" 在编辑过程中，在右下角显示光标位置的状态行  
set ruler  
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)  
"显示命令  
set showcmd  
" 命令行（在状态行下）的高度，默认为1，这里是2  
set cmdheight=1  
" 允许backspace和光标键跨越行边界  
set whichwrap+=<,>,h,l  
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）  
set mouse=a  
set selection=exclusive  
set selectmode=mouse,key  
" 启动的时候不显示那个援助索马里儿童的提示  
set shortmess=atI  
" 通过使用: commands命令，告诉我们文件的哪一行被改变过  
set report=0  
" 不让vim发出讨厌的滴滴声  
set noerrorbells  
" 在被分割的窗口间显示空白，便于阅读  
set fillchars=vert:\ ,stl:\ ,stlnc:\  
  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 高亮显示匹配的括号  
set showmatch  
" 匹配括号高亮的时间（单位是十分之一秒）  
set matchtime=5  
" 在搜索的时候忽略大小写  
set ignorecase  
" 不要高亮被搜索的句子（phrases）  
set nohlsearch  
" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）  
set incsearch  
" 输入:set list命令是应该显示些啥？  
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$  
" 光标移动到buffer的顶部和底部时保持3行距离  
set scrolloff=3  
" 不要闪烁  
set novisualbell  
  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 自动格式化  
set formatoptions=tcrqn  
" 继承前一行的缩进方式，特别适用于多行注释  
set autoindent  
" 为C程序提供自动缩进  
set smartindent  
" 使用C样式的缩进  
set cindent  
" 制表符为4  
set tabstop=4  
" 统一缩进为4  
set softtabstop=4  
set shiftwidth=4  
" 不要用空格代替制表符  
set noexpandtab  
" 不要换行  
set wrap  
" 在行和段开始处使用制表符  
set smarttab  
 
set backspace=indent,eol,start
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 其它设定 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
set foldenable  
set foldmethod=manual  
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  
set guioptions-=T
set guioptions-=m
set guioptions-=r
"不要使用vi的键盘模式，而是vim自己的 
set nocompatible 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"auto template
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:template_load = 1
let g:template_tags_replacing = 1
let g:T_AUTHOR = "fs"
let g:T_AUTHOR_EMAIL = "sjtu_fs@outlook.com"
let g:T_AUTHOR_WEBSITE = "www.github.com/sjtufs"
let g:T_DATE_FORMAT = "%c"
