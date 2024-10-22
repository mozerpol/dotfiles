![logo](https://neovim.io/images/logo@2x.png)

---

### Table of contents <a name="tof"></a>
1. [Quick installation](#quick)
2. [Important directories/files](#important)
3. [Modes in vim/nvim](#modes)
4. [junegunn/vim-plug](#vim-plug)
5. [vim-airline/vim-airline](#vim-airline)
6. [tpope/vim-fugitive](#fugi)
7. [jiangmiao/auto-pairs](#auto)
8. [Yggdroot/indentLine](#inde)
9. [lukas-reineke/indent-blankline.nvim](#lukas)
10. [folke/tokyonight.nvim](#folke)
11. [preservim/nerdtree](#nerd)
12. [vim-devicons](#vim-dev)
13. [luochen1990/rainbow](#rainbow)
14. [plasticboy/vim-markdown](#vim-mark)
15. [ervandew/supertab](#supertab)
16. [dense-analysis/ale](#ale)
17. [vhda/verilog_systemverilog.vim](#vhda)
18. [jeremiah-c-leary/vhdl-style-guide](#vsg)
19. [Other settings](#other)
20. [My own shortcuts](#mos)

||
|:--:|
| ![image](https://user-images.githubusercontent.com/43972902/124953523-8679db00-e015-11eb-9cd5-791e2082a336.png) |
| *Main window after setting up my neovim config.* |

||
|:--:|
|![image](https://user-images.githubusercontent.com/43972902/124954052-fbe5ab80-e015-11eb-8486-8a1f6c37fff1.png)|
| *NeoVim based on my own config with NERDTree.* |

||
|:--:|
|![image](https://user-images.githubusercontent.com/43972902/124954308-3a7b6600-e016-11eb-99ca-baadda841548.png)|
|*NeoVim + NERDTree + youtube in cli (also of course I'm using tmux).* |

||
|:--:|
| ![image](https://user-images.githubusercontent.com/43972902/124955659-811d9000-e017-11eb-9fd7-9aa1760a542a.png) |
| *NeoVim + NERDTree + youtube in cli + README of NeoVim config in w3m web browser (also in cli).* |

||
|:--:|
| ![image](https://user-images.githubusercontent.com/43972902/124954775-bbd2f880-e016-11eb-9f89-b46bec46416e.png) |
| *Almost the same as above, but NeoVim displays the same file, which is shown by w3m.* |

### Quick installation <a name="quick"></a> [UP↑](#tof)
For all plugins to correct work you need neovim version > 0.9.

1. `sudo apt install neovim git-all fonts-powerline python3-pip`
2. If doesn't exist, create ~/.config/nvim/init.vim
3. Copy *init.vim* from this repository to *init.vim* in `~/.config/nvim/`
4. Run `nvim`
5. Inside neovim `:PlugInstall`
6. `python3 -m pip install --user --upgrade pynvim`
7. Download font from: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts,
can be e.g. DejaVuSansMono. For linux must be *.tff file.
8. Copy downloaded font to `/usr/local/share/fonts/`
9. `fc-cache -fv`

### Important directories/files: <a name="important"></a> [UP↑](#tof)
If they (folders and files) don't exist, create them.
1. *~/.config/nvim* - main folder.
2. *~/.config/nvim/init.vim* - config file.
3. *~/.local/share/nvim* - for plug-vim purposes.

After changing user (can be root for example) nvim looks different.
It is obvious, the dir for config is different.

### Modes in vim/nvim <a name="modes"></a> [UP↑](#tof)
[WIki](https://en.wikibooks.org/wiki/Learning_the_vi_Editor/Vim/Modes)

### junegunn/vim-plug <a name="vim-plug"></a> [UP↑](#tof)
*Vim-plug Plugin Manager* makes it easier to install modules. <br/>
Project website: `https://github.com/junegunn/vim-plug`

### vim-airline/vim-airline <a name="vim-airline"></a> [UP↑](#tof)
It is a status bar, which can be customized.

Minimalist theme: <br/>
`let g:airline_theme='minimalist'`

To see upper status bar about tabs add line: <br/>
`let g:airline#extensions#tabline#enabled = 1`

Enable modified detection: <br/>
`let g:airline_detect_modified=:1`

Enable paste detection: <br/>
`let g:airline_detect_paste=1`

Enable spell detection: <br/>
`let g:airline_detect_spell=1`

Display spelling language when spell detection is enabled: <br/>
`let g:airline_detect_spelllang=1`

To see nice icons in status bar: <br/>
```vim
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
```

If everything must work add line: <br/>
`let g:airline_powerline_fonts = 1`

Turning off section *x*: <br/>
`let g:airline_section_x = 0`

Turning off section *y*: <br/>
`let g:airline_section_y = 0`

Set in section *Z* position in file, like this: *row/totalRows:column*: <br/>
`let g:airline_section_z = airline#section#create(['%l/%L:%c'])`

Turn off about type of file: <br/>
`let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'`

Setting path formatter in the upper bar. Thanks to this I'll get only file name:
<br/>
`let g:airline#extensions#tabline#formatter = 'unique_tail'`

Project website: https://github.com/vim-airline/vim-airline

### tpope/vim-fugitive <a name="fugi"></a> [UP↑](#tof)
Plugin for Git. <br/>
I only use showing git branch and its status on the bottom status bar. <br/>
Project website: https://github.com/tpope/vim-fugitive

### jiangmiao/auto-pairs <a name="auto"></a> [UP↑](#tof)
Automatic quote and bracket completion. <br/>
Project website: https://github.com/jiangmiao/auto-pairs

### lukas-reineke/indent-blankline.nvim <a name="lukas"></a> [UP↑](#tof)
Vertical indentations for spaces, tabs and also for empty lines. <br/>

I sat for four first indent lines different signs. <br/>
First vertical indentation: `|` <br/>
Second vertical indentation: `¦` <br/>
Third... etc: <br/>
`let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']`

Show up to ten level indents: <br/>
`let g:indent_blankline_indent_level = 10`

To turn on the first indent level: <br/>
`let g:indent_blankline_show_first_indent_level = v:true`

Below option is related with only appearance. <br/>
`let g:indent_blankline_show_trailing_blankline_indent = v:false`

Project website: https://github.com/lukas-reineke/indent-blankline.nvim

### folke/tokyonight.nvim <a name="folke"></a> [UP↑](#tof)
A dark and light Neovim theme ported from the Visual Studio Code TokyoNight
theme.

Turn on a *tokyonight* colorscheme: <br/>
`colorscheme tokyonight` <br/>

To see background color from this plugin be careful on *tmux*. <br/>
More info about this
[here](https://unix.stackexchange.com/questions/197391/background-color-mismatch-in-vim-and-tmux).

Project website: https://github.com/folke/tokyonight.nvim

### preservim/nerdtree <a name="nerd"></a> [UP↑](#tof)
File system explorer for the Vim editor. <br/>
To use: `:NERDTree`

Mapping a specific key to open *NERDTree*: <br/>
`nnoremap <Space>n :NERDTree<CR>` <br/>
To open *nerdtree*: `space` and `n`

Project website: https://github.com/preservim/nerdtree <br/>

### vim-devicons <a name="vim-dev"></a> [UP↑](#tof)
Adds filetype-specific icons to *nerdtree*, *vim-airline* and more. <br/>
Project page: https://github.com/ryanoasis/vim-devicons

### luochen1990/rainbow <a name="rainbow"></a> [UP↑](#tof)
Shows different levels of parentheses in different colors. <br/>
Turn on: `let g:rainbow_active = 1`.

Project page: https://github.com/luochen1990/rainbow

### plasticboy/vim-markdown <a name="vim-mark"></a> [UP↑](#tof)
Syntax highlighting, matching rules and mappings for the original Markdown and
extensions.

Fold in a style like python-mode: <br/>
`let g:vim_markdown_folding_style_pythonic = 1`

Change folding level. It means that any file will be fold to maximum. Every
title (such as: #, ##, ###, ####...) will be fold: <br/>
`let g:vim_markdown_folding_level = 6`

Disable syntax concealing: <br/>
`let g:vim_markdown_conceal = 0`

Turn off auto insert bulletpoints: <br/>
`let g:vim_markdown_auto_insert_bullets = 0`

Project page: https://github.com/plasticboy/vim-markdown

### ervandew/supertab <a name="supertab"></a> [UP↑](#tof)
Allows to use <Tab> for all insert completion needs (:help ins-completion).
<br/>
Press `Tab` and see the prompt.

Project page: https://github.com/ervandew/supertab

### dense-analysis/ale <a name="ale"></a> [UP↑](#tof)
ALE (Asynchronous Lint Engine) providing linting (syntax checking and semantic
errors) while you edit your text files.

I'm using (at this moment) *ALE* for Verilog language, so below part of my vim
config conern just this language. To everything should work correct, you must
install *verilator*. Source page: <br/>
To install verilator `apt install verilator`.

I added three things: <br/>
This backslashes look a bit wired, but are necessary.
1. linter for verilog: <br/>
```vim
let g:ale_linters = {
\   'verilog': ['verilator'],
\}
```

2. Use `:ALEFix` - delete unncessary whitespaces and empty lines: <br/>
```vim
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ }
```

3. Modify output for status bar, which is in left-bottom corner: <br/>
```vim
let g:ale_echo_msg_format = '%s [%severity%]'
```

Project page: https://github.com/dense-analysis/ale

### vhda/verilog_systemverilog.vim <a name="vhda"></a> [UP↑](#tof)
VHDA - Vim Syntax Plugin for Verilog and SystemVerilog. It's a quite big tool,
but I'm using only identation, which are based on context.

Project page: https://github.com/vhda/verilog_systemverilog.vim

### Other settings <a name="other"></a> [UP↑](#tof)
Set the vertical line to position 80: <br/>
`set colorcolumn=80`

Color change of vertical line at position 80. Color is in hex value: <br/>
`:hi ColorColumn guibg=#30364f`

Set line numbering: <br/>
`set number`

Prepare the terminal to show utf-8 encoding: <br/>
`set encoding=UTF-8`

Size of tab character: <br/>
`set tabstop=4`

Size indetation after pressing enter: <br/>
`set shiftwidth=4`

Change entered tabs to spaces. To change all the existing tab characters to
match the current tab settings, use in vim terminal `:retab`.<br/>
`set expandtab`

Vim can detect the type of file that is edited: <br/>
`filetype on`

### jeremiah-c-leary/vhdl-style-guide <a name="vsg"></a> [UP↑](#tof)
VHDL Style Guide (VSG) provides coding style guide enforcement for VHDL code.

Github page: https://github.com/jeremiah-c-leary/vhdl-style-guide <br/>
Web page: https://vhdl-style-guide.readthedocs.io/en/latest/overview.html <br/>

I described this tool a little bit
[here](https://github.com/mozerpol/dotfiles/tree/master/otherFiles#2-vsg---vhdl-style-guide).

I'm using mainly this commands:
1. `:!vsg -f design.vhd`
2. `:!vsg -f design.vhd --fix`

### My own shortcuts <a name="mos"></a> [UP↑](#tof)
Navigate between cards using *NERDTree*. Select file in NeoVim, press *t* and
now you can use below shortcuts. <br/>
```vim
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
```
