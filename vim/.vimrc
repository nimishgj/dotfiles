" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'MattesGroeger/vim-bookmarks'

call plug#end()

" Basic settings (optional but useful)
set number              " Show line numbers
set relativenumber      " Relative line numbers
set hidden              " Allow switching buffers without saving
set ignorecase          " Case-insensitive search
set smartcase           " ... unless uppercase used
set clipboard=unnamedplus

" fzf.vim mappings
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>r :Rg<CR>

" vim-bookmarks mappings
nmap mm <Plug>BookmarkToggle
nmap mi <Plug>BookmarkShowAll
nmap mn <Plug>BookmarkNext
nmap mp <Plug>BookmarkPrev

" Optional: Load bookmarks automatically when opening files
let g:bookmark_auto_save = 1
let g:bookmark_auto_close = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_manage_per_buffer = 1
