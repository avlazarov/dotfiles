" Switch on syntax highlighting
syntax on

" Indent
filetype indent on

" Colors
colors wombat

" Remove blinking cursor
set gcr=n:blinkon0

" Don't show the current command in the lower right corner
set showcmd

" Remove menu bar
set guioptions-=m

" Remove toolbar
set guioptions-=T

" A sexier scrolling
set scrolloff=8

" Tell vim to always put a status line in, even if there is only one window
set laststatus=2

" Show the current mode
set showmode

" Keep some stuff in the history
set history=100

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Automatically read a file that has changed on disk
set autoread

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" Show line numbers
set number

" Show line and column number
set ruler

" Set default encoding to UTF-8
set encoding=utf-8

" Don't wrap lines
set nowrap

" A tab is two spaces
set tabstop=2

" An autoindent (with <<) is two spaces
set shiftwidth=2

" Use spaces, not tabs
set expandtab

" Show invisible characters
set list

" Reset the listchars
set listchars=""

" A tab should display as "  ", trailing whitespace as "."
set listchars=tab:\ \

" Show trailing spaces as dots
set listchars+=trail:.

" The character to show in the last column when wrap is
" off and the line continues beyond the right of the screen
set listchars+=extends:>

" The character to show in the last column when wrap is
" off and the line continues beyond the right of the screen
set listchars+=precedes:<

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Set ignorecase in searches
set ignorecase

" Disable swap files
set nobackup nowritebackup noswapfile

" Use backspace to for deleting chars in insert mode
set backspace=2

let g:go_def_mapping_enabled=0

" Turn off beep sounds
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" Make , the leader key
let mapleader = ","

" Remove s and Q
nnoremap s <Nop>
nnoremap Q <Nop>

" Faster save
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Visual mode, marking a single line
nnoremap vv _vg_

" Toggle case
nnoremap <C-u> mzg~iw`z

" Split screens
nnoremap <C-n> <C-W>n
nnoremap gh <C-W>n<C-w>H
nnoremap gj <C-W>n<C-w>J
nnoremap gk <C-W>n<C-w>K
nnoremap gl <C-W>n<C-w>L

" Move around screens
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Resize screens
nnoremap <silent> <C-Right> :vertical resize +10<CR>
nnoremap <silent> <C-Left>  :vertical resize -10<CR>
nnoremap <silent> <C-Up>    :resize +10<CR>
nnoremap <silent> <C-Down>  :resize -10<CR>

" Faster switch to normal mode
imap jk <esc>

" Tabs
map <silent> <C-t> :tabe<CR>
map <silent> <F1> :tabnext 1<CR>
map <silent> <F2> :tabnext 2<CR>
map <silent> <F3> :tabnext 3<CR>
map <silent> <F4> :tabnext 4<CR>
map <silent> <F5> :tabnext 5<CR>
map <silent> <F6> :tabnext 6<CR>
map <silent> <F7> :tabnext 7<CR>
map <silent> <F8> :tabnext 8<CR>

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Format the entire file
nmap <leader>fef ggVG=

" Toggle NERDTree
nnoremap <Leader>t :NERDTreeToggle<CR>

" Toggle ZoomWin
nnoremap <Leader>z :ZoomWin<CR>

" Toggle NERDCommenter
map <D-/> <plug>NERDCommenterToggle<CR>

" Tabularize =
nmap <Leader>ae :Tabularize /=<CR>
vmap <Leader>ae :Tabularize /=<CR>

" Tabularize =>
nmap <Leader>ar :Tabularize /=><CR>
vmap <Leader>ar :Tabularize /=><CR>

" Tabularize :
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" Tabularize |
nmap <Leader>at :Tabularize /\|<CR>
vmap <Leader>at :Tabularize /\|<CR>

" Copy and Paste
nmap <C-c> "+y
vmap <C-c> "+y
nmap <C-q> "+gp
vmap <C-q> "+gp

" CtrlP clear cache
nnoremap <D-5> :CtrlPClearCache<CR>

" Remap command key
nnoremap ; :

" SplitJoin
nnoremap <Leader>ss :SplitjoinSplit<cr>
nnoremap <Leader>sj :SplitjoinJoin<cr>

" Better NERDTree
let NERDTreeMinimalUI = 1

" Rails specific
nnoremap <Leader>rvv :RVview<CR>
nnoremap <Leader>rvc :RVcontroller<CR>

" http://jeetworks.org/node/89
function! s:MoveLineUp()
  call <SID>MoveLineOrVisualUp(".", "")
endfunction

function! s:MoveLineDown()
  call <SID>MoveLineOrVisualDown(".", "")
endfunction

function! s:MoveVisualUp()
  call <SID>MoveLineOrVisualUp("'<", "'<,'>")
  normal gv
endfunction

function! s:MoveVisualDown()
  call <SID>MoveLineOrVisualDown("'>", "'<,'>")
  normal gv
endfunction

function! s:MoveLineOrVisualUp(line_getter, range)
  let l_num = line(a:line_getter)
  if l_num - v:count1 - 1 < 0
    let move_arg = "0"
  else
    let move_arg = a:line_getter." -".(v:count1 + 1)
  endif
  call <SID>MoveLineOrVisualUpOrDown(a:range."move ".move_arg)
endfunction

function! s:MoveLineOrVisualDown(line_getter, range)
  let l_num = line(a:line_getter)
  if l_num + v:count1 > line("$")
    let move_arg = "$"
  else
    let move_arg = a:line_getter." +".v:count1
  endif
  call <SID>MoveLineOrVisualUpOrDown(a:range."move ".move_arg)
endfunction

function! s:MoveLineOrVisualUpOrDown(move_arg)
  let col_num = virtcol(".")
  execute "silent! ".a:move_arg
  execute "normal! ".col_num."|"
endfunction

" Arrow key remapping:
" Up/Dn = move line up/dn
" Left/Right = indent/unindent
function! SetArrowKeysAsTextShifters()
  " Normal mode
  nnoremap <silent> <Left>   <<
  nnoremap <silent> <Right>  >>
  nnoremap <silent> <Up>     <Esc>:call <SID>MoveLineUp()<CR>
  nnoremap <silent> <Down>   <Esc>:call <SID>MoveLineDown()<CR>

  " Visual mode
  vnoremap <silent> <Left>   <gv
  vnoremap <silent> <Right>  >gv
  vnoremap <silent> <Up>     <Esc>:call <SID>MoveVisualUp()<CR>
  vnoremap <silent> <Down>   <Esc>:call <SID>MoveVisualDown()<CR>

endfunction

call SetArrowKeysAsTextShifters()
