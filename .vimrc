" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'vuciv/golf'
Plug 'preservim/nerdtree'
call plug#end()

" Basic settings (optional but useful)
set number              " Show line numbers
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


" Keymaps
inorema jj <Esc>

inorema <leader>w :NERDTreeToggle<CR>
