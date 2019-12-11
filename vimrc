call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'

call plug#end()

set number

imap jk 
map <C-o> :NERDTreeToggle<CR>
imap <C-n> :tabn
imap <C-p> :tabp


