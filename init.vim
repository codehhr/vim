"
"  __  ____   __  _   ___     _____ __  __ ____   ____
" |  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
" | |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
" |_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|
"
"====================================================================
"============================ vim-plug ==============================
"====================================================================
"
call plug#begin('~/.config/nvim/plugged')

" startify
Plug 'mhinz/vim-startify'

"css/less/sass/html color preview for vim
Plug 'gorodinskiy/vim-coloresque'

"Syntax Highlighting for Stylus
Plug 'wavded/vim-stylus'

"Vastly improved Javascript indentation and syntax support in Vim.
Plug 'pangloss/vim-javascript'

"coc.vim 补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"注释工具
Plug 'scrooloose/nerdcommenter'

"提供嵌套括号高亮
Plug 'luochen1990/rainbow'

"展示当前文件的函数
Plug 'majutsushi/tagbar'

"indentLine
Plug 'Yggdroot/indentLine'

" voldikss/vim-translator
Plug 'voldikss/vim-translator'

"实时通过浏览器预览 markdown 文件
Plug 'iamcco/markdown-preview.vim'

"预览数学公式
Plug 'iamcco/mathjax-support-for-mkdp'

"vue 语法高亮
Plug 'posva/vim-vue'

" html补全
Plug 'mattn/emmet-vim'

" vim 多光标
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" 主题颜色
Plug 'connorholyday/vim-snazzy'

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" icon
Plug 'ryanoasis/vim-devicons'

" building CMake projects inside of Vim/Neovim
" Plug 'cdelledonne/vim-cmake'

" vim-surround
Plug 'tpope/vim-surround'

" 括号自动补全
Plug 'Raimondi/delimitMate'

" snippets
Plug 'honza/vim-snippets'

call plug#end()

"==================================================================== 
"========================= 键位 ===================================== 
"==================================================================== 
"
" let mapleader = \ ( leader 默认就是 \ )
map s <nop>
map S :w<CR>
map Q :q!<CR>
map R :source $MYVIMRC<CR>

" jj for ESC
imap jj <ESC>

" fzf
map <space>f :FZF<CR>

"go to #define
map <F12> [<c-i>

map J 5j
map K 5k
map H 5h
map L 5l

"向右分屏,光标在右
map sd :set splitright<CR>:vsplit<CR>

"向左分屏,光标在左
map sa :set nosplitright<CR>:vsplit<CR>

"向上分屏,光标在上
map sw :set nosplitbelow<CR>:split<CR>

"向下分屏,光标在下
map sx :set splitbelow<CR>:split<CR>

"调整分屏大小
map <C-k> :res +5<CR>
map <C-j> :res -5<CR>
map <C-h> :vertical resize -5<CR>
map <C-l> :vertical resize +5<CR>

"光标在分屏之间移动
"    su
"  sh  sk
"    sj

"up
map sk <C-w>k 
"dowm
map sj <C-w>j
"let
map sh <C-w>h
"right
map sl <C-w>l

"标签
"新建标签
map <C-t> :tabnew<space>
"tabnext ( Tab )
nmap <TAB> :tabn<CR>
"tabprevious ( shift + Tab )
nmap <S-TAB> :tabp<CR>

"打开文件
map e :edit<space>

"exec node
map <C-c> :! node %<CR>

"==================================================================== 
"============================ vim-startify ==========================
"==================================================================== 
"
let g:startify_padding_left = 20

"==================================================================== 
"======================== vim 配色 ================================== 
"==================================================================== 
"
"语法高亮
syntax enable  
syntax on

"主题颜色设定
let g:SnazzyTransparent = 1			" snazzy transparent"
colorscheme snazzy

"==================================================================== 
"====================== 一般设置 ====================================
"==================================================================== 
"
set nocompatible					"去除VIM一致性，必须
filetype on
filetype plugin indent on
set nofoldenable					"启动 vim 时关闭折叠代码"
set diffopt+=vertical				" 垂直窗口 git diff"
" 打开 vim 时自动打开 NERDTree
" autocmd vimenter * NERDTree | wincmd p
set scrolloff=8						"垂直滚动光标留出空余
set sidescrolloff=20				" 水平滚动光标留出空余
map re :set relativenumber!<CR>
set nocompatible					"vim比vi支持更多的功能，如showcmd，避免冲突和副作用，最好关闭兼容 
set encoding=utf-8					"使用utf-8编码, Set internal encoding of vim, not needed on neovim, since coc.nvim using some
set fileencoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformat=unix
set fileformats=unix,dos,mac
set number							"显示行号 
set showcmd							"显示输入命令 
set nolist							"不显示隐藏字符
set listchars=tab:--,trail:♫
"切换显示隐藏字符 (tab & trail characters)
noremap zh :set list!<CR>
set clipboard+=unnamed,unnamedplus	"可以从vim复制到剪贴版中 
set mouse=a							"可以在buffer的任何地方使用鼠标 
set cursorline						"高亮当前行 
" 切换显示高亮列
noremap lc :set cursorcolumn!<CR>
set hlsearch						"显示高亮搜索 
set incsearch						"增量高亮搜索"
set smartcase						"智能大小写"
map <ESC> :nohlsearch<CR>
set history=100						"默认指令记录是20 
set ruler							"显示行号和列号（默认打开) 
set pastetoggle=<F3>				"F3快捷键于paste模式与否之间转化，防止自动缩进 
" set helplang=cn					"设置为中文帮助文档,需下载并配置之后才生效
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif  "打开上次编辑位置"
set tabstop=4						"设置tab长度为4 
set softtabstop=4
set shiftwidth=4					"设置自动对齐的缩进级别 
set cindent							"自动缩进,以c语言风格，例如从if进入下一行，会自动缩进shiftwidth大小 
set smartindent						"改进版的cindent,自动识别以#开头的注释，不进行换行 
set autoindent						"autoindent配合下面一条命令根据不同语言类型进行不同的缩进操作，更加智能 
set nowrap							"不换行"
set noerrorbells					"no bell on error"
set wildmenu

"==================================================================== 
"=========================== coc 代码补全 ===========================
"==================================================================== 
"
" coc extensions
let g:coc_global_extensions = [
	\ 'coc-json',
	\ 'coc-vimlsp', 
	\ 'coc-prettier', 
	\ 'coc-prisma', 
	\ 'coc-python',
	\ 'coc-syntax', 
	\ 'coc-diagnostic', 
	\ 'coc-import-cost', 
	\ 'coc-snippets', 
	\ 'coc-neosnippet', 
	\ 'coc-yaml', 
	\ 'coc-yank', 
	\ 'coc-jest', 
	\ 'coc-explorer', 
	\ 'coc-flutter', 
	\ 'coc-flutter-tools', 
	\ 'coc-tslint', 
	\ 'coc-eslint', 
	\ 'coc-actions', 
	\ 'coc-vetur']

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
set cmdheight=1						" 底部 cmd height

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

set signcolumn=yes					"状态和行号共用"
set shortmess+=c					" Don't pass messages to |ins-completion-menu|.

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"
" TAB for next; S-TAB for prev
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <C-TAB> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <C-TAB> coc#refresh()
else
  inoremap <silent><expr> <C-@> coc#refresh()
endif


" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `--` and `==` to navigate diagnostics
nmap <silent> -- <Plug>(coc-diagnostic-prev)
nmap <silent> == <Plug>(coc-diagnostic-next)

" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap [p :CocDiagnostics<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <C-a> to show documentation in preview window.
nnoremap <silent> <C-a> :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming.
nmap <F2> <Plug>(coc-rename)
nmap <space>n <Plug>(coc-rename)

" Formatting selected code.
function! s:cocActionOpenFromSelectd(type) abort
	execute 'CocCommand actions.open ' . a:type
endfunction
xmap <space>s <Plug>(coc-format-selected)
nmap <space>s <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"CocList
noremap <space>l :CocList<CR>
"open coc marketplace (打开取决于网速)
noremap <space>m :CocList marketplace<CR>
"open CocConfig.json
noremap <space>c :tabnew<CR>:CocConfig<CR>
" list CocCommand
noremap <space>d :CocCommand<CR>
" open explorer ( like NerdTree )
noremap ss :CocCommand explorer<CR>

"==================================================================== 
"===================== nerdcommenter 注释工具 =======================
"==================================================================== 
"
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" python 自动的会多加一个空格
au FileType python let g:NERDSpaceDelims = 0

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"==================================================================== 
"=================== tagbar 展示当前文件的一些函数 ==================
"==================================================================== 
"
let g:tagbar_width=30
" 将tagbar的开关按键设置为 <F11> / space *2
nnoremap <silent> <F11> :TagbarToggle<CR> 
nnoremap <silent> sf :TagbarToggle<CR> 
" nnoremap <space><space> :TagbarToggle<CR>

"====================================================================
"=========================== indentLine =============================
"====================================================================
"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
let g:indent_guides_start_level = 2  " 从第二层开始可视化显示缩进

"====================================================================
"======================== markdown-preview ==========================
"====================================================================
"
"默认配置
let g:mkdp_path_to_chrome = "google-chrome-stable"
" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）
" 如果设置了该参数, g:mkdp_browserfunc 将被忽略
let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
" vim 回调函数, 参数为要打开的 url

let g:mkdp_auto_start = 0
" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开
" markdown 文件的时候打开一次

let g:mkdp_auto_open = 0
" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预
" 览窗口

let g:mkdp_auto_close = 1
" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不
" 自动关闭预览窗口

let g:mkdp_refresh_slow = 0
" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时
" 更新预览

let g:mkdp_command_for_global = 0
" 设置为 1 则所有文件都可以使用 MarkdownPreview 进行预览，默认只有 markdown
" 文件可以使用改命令

let g:mkdp_open_to_the_world = 0
" 设置为 1, 在使用的网络中的其他计算机也能访问预览页面
" 默认只监听本地（127.0.0.1），其他计算机不能访问

" 键位绑定:

" 普通模式
nmap <silent> <F8> <Plug>MarkdownPreview   

" 插入模式
imap <silent> <F8> <Plug>MarkdownPreview    

"普通模式
nmap <silent> <F9> <Plug>StopMarkdownPreview   

"插入模式
imap <silent> <F9> <Plug>StopMarkdownPreview 

"====================================================================
"===========================vim-vue==================================
"====================================================================
"
au BufNewFile,BufRead *.html,*.js,*.vue set tabstop=2

au BufNewFile,BufRead *.html,*.js,*.vue set softtabstop=2

au BufNewFile,BufRead *.html,*.js,*.vue set shiftwidth=2

au BufNewFile,BufRead *.html,*.js,*.vue set expandtab

au BufNewFile,BufRead *.html,*.js,*.vue set autoindent

au BufNewFile,BufRead *.html,*.js,*.vue set fileformat=unix

"====================================================================
"========================== vim-emmet ===============================
"====================================================================
"
let g:user_emmet_expandabbr_key = '<C-e>'

"====================================================================
"======================== vim-airline ===============================
"====================================================================
"
set laststatus=2										" 是否显示状态栏,0 表示不显示，1 表示只在多窗口时显示，2 表示显示
" let g:airline_theme="peaksea"							" airline_theme
let g:airline_theme="deus"
" let g:airline_theme="bubblegum"
let g:airline_powerline_fonts = 1						"支持 powerline 字体,1表示支持
let g:powerline_pycmd="py3"
let g:airline#extensions#virtualenv#enabled = 1			" virtual env
let g:airline#extensions#whitespace#enabled = 0			" 空白符号计数"
let g:airline#extensions#whitespace#symbol = '[]'
let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#keymap#enabled = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#tabline#buffer_idx_format = {
"             \ '0': '[0]',
"             \ '1': '[1]',
"             \ '2': '[2]',
"             \ '3': '[3]',
"             \ '4': '[4]',
"             \ '5': '[5]',
"             \ '6': '[6]',
"             \ '7': '[7]',
"             \ '8': '[8]',
"             \ '9': '[9]',
"             \}
"             " \ '0': '⑩ ',
"             " \ '1': '① ',
"             " \ '2': '② ',
"             " \ '3': '③ ',
"             " \ '4': '④ ',
"             " \ '5': '⑤ ',
"             " \ '6': '⑥ ',
"             " \ '7': '⑦ ',
"             " \ '8': '⑧ ',
"             " \ '9': '⑨ '
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = " [" " current line
let g:airline_symbols.maxlinenr = '] ' "maxline
let g:airline_symbols.readonly = "[readonly]"
let g:airline_symbols.dirty = "⚡"
let g:airline_symbols.crypt = "crypt"
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled=1
set t_Co=256				"在windows中用xshell连接打开vim可以显示色彩
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


"====================================================================
"============================= vim-rainbow =========================
"====================================================================
"
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}


"====================================================================
"============================ 括号自动补全 ==========================
"====================================================================
"
au FileType python let b:delimitMate_nesting_quotes = ['"']

"====================================================================
"=================== voldikss/vim-translator ========================
"====================================================================
"
let g:translator_target_lang = 'zh'
let g:translator_source_lang = 'auto'
" default: If g:translator_target_lang is 'zh', this will be ['bing', 'google', 'haici', 'youdao'], otherwise ['google']
" available: 'bing', 'google', 'haici', 'iciba'(expired), 'sdcv', 'trans', 'youdao'
let g:translator_default_engines = ['bing', 'youdao']
" let g:translator_proxy_url = 'socks5://127.0.0.1:4781'
let g:translator_history_enable = v:true
" available: 'popup'(use floatwin in nvim or popup in vim), 'preview'
"
" default: use <C-w>p to jump into popup window and to jump back
map <C-p> <C-w>p
let g:translator_window_type = 'popup'
" number of columns or Float (between 0 and 1), default 0.6, If Float, the width is relative to &columns.
let g:translator_window_max_width = 100
" number of columns or Float (between 0 and 1), default 0.6, If Float, the width is relative to &columns.
let g:translator_window_max_height = 100
" default: ['─', '│', '─', '│', '┌', '┐', '┘', '└']
let g:translator_window_borderchars = ['─', '│', '─', '│', '┌', '┐', '┘', '└']

""" Configuration example
" Echo translation in the cmdline
nmap <silent> te <Plug>Translate
vmap <silent> te <Plug>TranslateV
"
" Display translation in a window
nmap <silent> tr <Plug>TranslateW
vmap <silent> tr <Plug>TranslateWV
"
" Replace the text with translation
" nmap <silent> TR <Plug>TranslateR
" vmap <silent> TR <Plug>TranslateRV
"
" Translate the text in clipboard
" nmap <silent> tx <Plug>TranslateX
"
" there is a function which can be used to scroll window, only works in neovim.
nnoremap <silent><expr> <M-f> translator#window#float#has_scroll() ?
                            \ translator#window#float#scroll(1) : "\<M-f>"
nnoremap <silent><expr> <M-b> translator#window#float#has_scroll() ?
                            \ translator#window#float#scroll(0) : "\<M-f>"

"====================================================================
"============================ vim-surround ==============================
"====================================================================
"
" like [Hello] world!
nmap <space>] :normal ysiw]<CR>
" like [ Hello ] world!
nmap <space>[ :normal ysiw[<CR>
" like {hello} world!
nmap <space>} :normal ysiw}<CR>
" like { hello } world!
nmap <space>{ :normal ysiw{<CR>
" like (hello world!)
nmap <space>) :normal yss)<CR>
" like ( hello world! )
nmap <space>( :normal yss(<CR>
" 
" Replacing cs with S in visual mode
