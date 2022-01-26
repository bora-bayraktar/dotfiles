" Basic Configurations
set nocompatible
set background=dark

" Syntax and Indentation Configurations
set number
syntax on
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4

set scrolloff=5 " Show 5 lines above and belowe cursor
set mouse+=a " enable mouse
set clipboard=unnamed " Use system clipboard for copy

" Keybindings
map nn :bn!<cr>
map mm :bp!<cr>
imap <C-k> <right>
imap <C-j> <left>
nmap t 5e

" Syntastic Plugin Configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

" Airline Plugin Configurations
set noshowmode
let g:airline_theme = 'sonokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1

" Completor.vim Plugin Configurations
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" NERDTree Configurations
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
nmap <C-n> :NERDTreeToggle<CR>

" Show branch at the statusline
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

" Set IndentLine
let g:indentLine_char = '┊'

" vim-closetag Configurations
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"

" Polyglot Configurations
let g:polyglot_disabled = ["autoindent"]

" Autocommands
autocmd VimEnter * IndentLinesReset
autocmd InsertEnter,InsertLeave * set cul!
autocmd VimEnter * silent exec "! echo -ne '\e[2 q'"
autocmd FileType make setlocal noexpandtab
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html imap <c-x> <c-x><c-o>
autocmd FileType html imap < <<c-x>
autocmd FileType css imap <c-x> <c-x><c-o>
autocmd FileType css imap : :<space><c-x>

" Cursor Settings
let &t_SI = "\e[6 q" "SI = INSERT mode
let &t_SR = "\e[4 q" "SR = REPLACE mode
let &t_EI = "\e[2 q" "EI = NORMAL mode (ELSE)
