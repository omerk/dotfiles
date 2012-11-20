syntax on
set number
set tabstop=3
"set autoindent
"set smartindent
set hidden
filetype plugin indent on

" colour scheme
set t_Co=256
colorscheme jellybeans

" tab completion
set wildmode=longest,list,full
set wildmenu
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

" pathogen
call pathogen#infect()
call pathogen#helptags()

" bufferlist.vim
map <silent> ` :call BufferList()<CR>
let g:BufferListWidth = 25
let g:BufferListMaxWidth = 40
hi BufferSelected term=reverse ctermfg=white ctermbg=blue cterm=bold

" taglist.vim
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F2> :TlistToggle<CR><C-W>w
map <F3> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

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

" paste mode
nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F4>
set showmode

" shortcuts for tabs
nmap <C-J> :tabnew<CR>
nmap <C-K> :tabprev<CR>
nmap <C-L> :tabnext<CR>

