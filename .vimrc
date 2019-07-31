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

" ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets'

" React code snippets
Plug 'epilande/vim-react-snippets'

" Ultisnips
Plug 'SirVer/ultisnips'

let g:jsx_ext_required = 0
let g:mta_filetypes = {
	\ 'javascript.jsx': 1,
	\}


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

