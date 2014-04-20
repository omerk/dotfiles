set nocompatible
set number
set tabstop=4
"set autoindent
"set smartindent
set hidden
syntax on
filetype off	" turn this off temporarily for Vundle

" colour scheme
set t_Co=256
colorscheme jellybeans

" pathogen
"call pathogen#infect()
"call pathogen#helptags()

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Stuff Vundle manages
Bundle 'gmarik/vundle'
Bundle 'vim-erlang/vim-erlang'
Bundle 'roblillack/vim-bufferlist'
Bundle 'vim-scripts/taglist.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'jeetsukumaran/vim-buffersaurus'

filetype plugin indent on	" Vundle loaded, this can be turned back on

" bufferlist
map <silent> ` :call BufferList()<CR>
let g:BufferListWidth = 25
let g:BufferListMaxWidth = 40
hi BufferSelected term=reverse ctermfg=white ctermbg=blue cterm=bold

" taglist
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F2> :TlistToggle<CR><C-W>w
map <F3> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" tab completion
set wildmode=longest,list,full
set wildmenu
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

" status line  
set laststatus=2                             " always show statusbar  
set statusline=  
set statusline+=%-2.5n\                      " buffer number  
set statusline+=%f\                          " filename   
set statusline+=%h%m%r%w                     " status flags  
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
set statusline+=%=                           " right align remainder  
set statusline+=0x%-8B                       " character value  
set statusline+=%-14(%l,%c%V%)               " line, character  
set statusline+=%<%P                         " file position  

" replace statusline with powerline, if it exists
"set rtp+=/home/omer/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" paste mode
nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F4>
set showmode

" text width stuff
set textwidth=100
if v:version >= 730
  set colorcolumn=100
endif
highlight ColorColumn ctermbg=232
highlight OverLength ctermbg=167 ctermfg=white guibg=#592929
match OverLength /\%101v.\+/

" gui options
if has("gui_running")
  set guioptions=rem

  if has("gui_gtk2")
    set guifont=Inconsolata\ 13
  elseif has("gui_win32")
    set guifont=Consolas:h13:cANSI
    set backspace=indent,eol,start " fix backspace
  endif
endif

" shortcuts for tabs
nmap <C-J> :tabnew<CR>
nmap <C-K> :tabprev<CR>
nmap <C-L> :tabnext<CR>

" misc shortcuts
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command Wq :execute ':W' | :q
command Q :execute ':q!'
