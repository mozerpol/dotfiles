" For more info see the README.md file

" Installation by Vim-Plug
call plug#begin('~/.local/share/nvim/plugged')
   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'
   Plug 'jiangmiao/auto-pairs'
   Plug 'lukas-reineke/indent-blankline.nvim'
   Plug 'folke/tokyonight.nvim'
   Plug 'preservim/nerdtree'
   Plug 'luochen1990/rainbow'
   Plug 'godlygeek/tabular'
   Plug 'plasticboy/vim-markdown'
   Plug 'ervandew/supertab'
   Plug 'tpope/vim-fugitive'
   Plug 'ryanoasis/vim-devicons'
   Plug 'dense-analysis/ale'
   Plug 'vhda/verilog_systemverilog.vim'
   Plug 'SirVer/ultisnips'
   Plug 'honza/vim-snippets'
call plug#end()

" vim-airline
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_spell = 1
let g:airline_detect_spelllang = 1
let g:airline_detect_paste = 1
let g:airline_detect_modified = 1
let g:airline_powerline_fonts = 1
let g:airline_section_x = 0
let g:airline_section_y = 0
let g:airline_section_z = airline#section#create(['%l/%L:%c'])
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#tabline#formatter = 'unique_tail'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols for vim-airline
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" vim-airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" lukas-reineke/indent-blankline.nvim
let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']
let g:indent_blankline_indent_level = 10
let g:indent_blankline_show_first_indent_level = v:true
let g:indent_blankline_show_trailing_blankline_indent = v:false

" folke/tokyonight.nvim
colorscheme tokyonight

" NERDTree
nnoremap <Space>n :NERDTree<CR>

" luochen1990/rainbow
let g:rainbow_active = 1

" plasticboy/vim-markdown
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 2
let g:vim_markdown_conceal = 0
let g:vim_markdown_auto_insert_bullets = 0

" dense-analysis/ale
let g:ale_linters = {
\ 	'verilog': ['verilator'],
\}
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ }
let g:ale_echo_msg_format = '%s [%severity%]'

" Other settings
set colorcolumn=80
:hi ColorColumn guibg=#30364f
set number
set encoding=UTF-8
set tabstop=3
set shiftwidth=3
set expandtab
filetype on

" Own shortcuts
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>

" Desc later
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
