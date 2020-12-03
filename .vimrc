" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Valloric/MatchTagAlways'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'w0rp/ale'
Plug 'preservim/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'gko/vim-coloresque'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets'

" React code snippets
Plug 'epilande/vim-react-snippets'


Plug 'wfleming/vim-codeclimate'

" Ultisnips
Plug 'SirVer/ultisnips'

let g:jsx_ext_required = 0
let g:mta_filetypes = {
	\ 'javascript.jsx': 1,
	\}
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1


" List ends here. Plugins become visible to Vim after this call.
call plug#end()
set number "show line numbers
set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.

set shiftwidth=2    " Indents will have a width of 2

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

let g:prettier#config#tab_width = 2
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#bracket_spacing = 'true'
" Opening node modules and typescript files"
set path=.,src,node_nodules,source/app,public/js
set suffixesadd=.js,.jsx,.ts,.tsx

nnoremap gf <C-W>f
vnoremap gf <C-W>f
map <C-n> :NERDTreeToggle<CR>

" Auto open nerd tree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"
colorscheme Tomorrow-Night-Eighties
