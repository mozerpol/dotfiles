" Plugins List
call plug#begin('~/.config/nvim/bundle')  
 
    " UI related
    " color scheme for neovim
    Plug 'christkempson/base16-vim'
    " statusline at the bottom
    Plug 'vim-airline/vim-airline'
    " draw vertical lines at each indentation level for code indented with spaces
    Plug 'Yggdroot/indentLine'
    
    " syntax check
    " syntax checking and semantic errors, while edit file and return errors
    Plug 'w0rp/ale'
    
    " Autocomplete
    " asynchronous completion support for diffrent languages
    Plug 'ncm2/ncm2'
    " Donno what do this, may return any text in nvim statusbar
    Plug 'roxma/nvim-yarp'
    " use words from current buffer for completion
    Plug 'ncm2/ncm2-bufword'
    "
    Plug 'ncm2/ncm2-path'
    " python completion
    Plug 'ncm2/ncm2-jedi'
    " Automatic quote and bracket completion
	Plug 'jiangmiao/auto-pairs'
    " Formater
    Plug 'Chiel92/vim-autoformat'
    
    " Addons
    " provide file sustem explorter
    Plug 'scrooloose/nerdTree'

call plug#end()

" The result is that when a file is edited its indent and plugin file is loaded
filetype plugin indent on

" Configurations Part
" UI configuration
" Syntax Highlighting
syntax on
syntax enable

" colorscheme
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
set background=dark
" True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif
"if has("gui_running")
"  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
"endif
" set line numbering
set number
set relativenumber
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw
" Turn off backup
set nobackup
set noswapfile
set nowritebackup
" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
" vim-autoformat with flake8
noremap <F3> :Autoformat<CR>
" Thanks to this u can use nerdTree, to do this press ctrl+n
nmap <C-n> :NERDTreeToggle<CR> 
" NCM2
augroup NCM2
  autocmd!
  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()
  " :help Ncm2PopupOpen for more information
  set completeopt=noinsert,menuone,noselect
  " When the <Enter> key is pressed while the popup menu is visible, it only
  " hides the menu. Use this mapping to close the menu and also start a new line.
  inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
augroup END
" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}
" Airline
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
