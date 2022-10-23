"" General settings
set ruler
set number
set relativenumber

set encoding=UTF-8

set expandtab
set shiftwidth=2
set tabstop=2

set clipboard=unnamedplus

syntax enable
filetype plugin indent on

"" Plug
call plug#begin()
  Plug 'vim-airline/vim-airline'
  Plug 'preservim/nerdtree'
  Plug 'airblade/vim-gitgutter'
  Plug 'vimsence/vimsence'
  
  Plug 'lervag/vimtex'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  
call plug#end()

"" vimtex
let g:vimtex_view_method = 'zathura'

let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull',
      \ 'Overfull',
      \]

"" markdown-preview
function! g:Open_browser(url)
    silent exec "!firefox --new-window " . a:url . " &"
endfunction

let g:mkdp_browserfunc = 'g:Open_browser'

"" Nerdtree
let g:NERDTreeIgnore = ['\.o', '\.aux', '\.fls', '\.synctex.gz', '\.fdb_latexmk']
map <C-t> :NERDTreeToggle<CR>

"" coc

inoremap <silent><expr> <S-TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><C-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"" vimsence
let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'

"" Bindings
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>



