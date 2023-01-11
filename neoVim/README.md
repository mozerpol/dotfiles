![logo](https://neovim.io/images/logo@2x.png)

---

### Table of contents <a name="tof"></a>
1. [How to install neovim](#howto)
   1. [Quick installation](#quick)
2. [Important directories/files](#important)
3. [Modes in vim/nvim](#modes)
4. [vim-plug](#vim-plug)
5. [vim-airline](#vim-airline)
6. [fugitive.vim](#fugi)
7. [auto-pairs](#auto)
8. [Yggdroot/indentLine](#inde)
9. [lukas-reineke/indent-blankline.nvim](#lukas)
10. [folke/tokyonight.nvim](#folke)
11. [NERDTree](#nerd)
12. [vim-devicons](#vim-dev)
13. [Rainbow Parentheses Improved](#rainbow)
14. [Vim Markdown](#vim-mark)
15. [Supertab](#supertab)
16. [Asynchronous Lint Engine](#ale)
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

### 1. How to install neovim: <a name="howto"></a> [UP↑](#tof)
`sudo apt install neovim` <br/>
For all plugins to correct work you need neovim version > 0.5. <br/>

#### 1.1 Quick installation
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

### 2. Important directories/files: <a name="important"></a> [UP↑](#tof)
If they (folders and files) don't exist, create them.
1. *~/.config/nvim* - main folder.
2. *~/.config/nvim/init.vim* - config file.
3. *~/.local/share/nvim* - for plug-vim purposes.

After changing user (can be root for example) nvim looks different.
It is obvious, the dir for config is different.

### Modes in vim/nvim <a name="modes"></a> [UP↑](#tof)

|**Mode**|**Description**|
|:--:|:--:|
|Normal|Default; for navigation and simple editing|
|Insert|For explicitly inserting and modifying text|
|Command Line|For operations like saving, exiting, etc.|

Vim has other modes, like Visual, Select, and Ex-Mode, more [here](https://en.wikibooks.org/wiki/Learning_the_vi_Editor/Vim/Modes).

### vim-plug <a name="vim-plug"></a> [UP↑](#tof)
After *nvim* instalation, install the *Vim-plug Plugin Manager* to make it easier
to install plugins.

##### How to install
For neovim:
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

This command will create config file for plugin *plug.vim* in directory:
*~/.local/share/nvim/site/autoload/plug.vim*. <br/>
To use this plugin you must add a few lines to *init.vim*. *init.vim* should
be in `~/.config/nvim/init.vim`, if you don't have this folders anad file,
create them. <br/>
To *init.vim* add: <br/>
```vim
call plug#begin('~/.local/share/nvim/plugged')
	Plug 'davidhalter/jedi-vim'
call plug#end()
```

After this steps you should run *neovim* by `nvim` command and inside neovim
run `:PlugInstall` <br/>
This command will create folder *jedi-vim* with config file for this plugin in
dir *~/.local/share/nvim/plugged*. <br/>
So as I wrote, *vim-plug* is a plugin for easier installation other plugins
for vim, the basic commands for *vim-plug*: <br/>
- Install plugins: `:PlugInstall`
- Update plugins: `:PlugUpdate`
- Remove plugins: `:PlugClean` (First, comment the plugin install command in
init.vim. Open Nvim and use :PlugClean to uninstall plugins)
- Check the plugin status: `:PlugStatus`
- Upgrade vim-plug itself: `:PlugUpgrade`

Project website: `https://github.com/junegunn/vim-plug`

### vim-airline <a name="vim-airline"></a> [UP↑](#tof)
*vim-airline* is a status bar, which can be customized. <br/>

##### How to install? <br/>
To `~/.config/nvim/init.vim` add `Plug 'vim-airline/vim-airline'`, between
`call plug#begin('~/.local/share/nvim/plugged')` and `call plug#end()`. <br/>
Next run *nvim* and type `:PlugInstall`. <br/>
After this in dir `/home/mozerpol/.local/share/nvim/plugged` will be create
folder *vim-airline* with necessary files. <br/>
To add more themes put in *init.vim* line
`Plugin 'vim-airline/vim-airline-themes'` and install it. <br/>

##### What did I use
Thanks to `'vim-airline/vim-airline-themes'` I can use a *minimalist* theme: <br/>
`let g:airline_theme='minimalist'`, which imo is nice theme :D <br/>
So you must put line: <br/>
`let g:airline_theme='minimalist'` <br/>
**after** (not between) `call plug#end()`.

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

To see nice icons in your status bar add these lines to your init.vim: <br/>
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

Also I had annoying (for me) info in the bottom bar about type of file, I mean
*utf-8[unix]*, sometimes it can be intresting info, but usually I'm editing
*utf-8* files, so to turn off this info, just add: <br/>
`let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'`

Setting path formatter in the upper bar. Thanks to this we'll get only file
name: <br/>
`let g:airline#extensions#tabline#formatter = 'unique_tail'`

Project website: https://github.com/vim-airline/vim-airline

### fugitive.vim <a name="fugi"></a> [UP↑](#tof)
Fugitive is the Vim plugin for Git. <br/>

I only use showing git branch and its status on the bottom status bar.

Project website: https://github.com/tpope/vim-fugitive

### auto-pairs <a name="auto"></a> [UP↑](#tof)
Automatic quote and bracket completion is doing by *'jiangmiao/auto-pairs'*.

Project website: https://github.com/jiangmiao/auto-pairs

### lukas-reineke/indent-blankline.nvim  <a name="lukas"></a> [UP↑](#tof)
This is impoved version of *Yggdroot/indentLine*. Thanks to this, we can see
vertical indentations for spaces, tabs and also for empty lines. <br/>

I sat for four first indent lines different signs. <br/>
First vertical indentation consists of `|` sign. <br/>
Second vertical indentation consists of `¦` sign <br/>
Third... etc:
`let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']`

Show up to ten level indents: <br/>
`let g:indent_blankline_indent_level = 10`

To turn on the first indent level: <br/>
`let g:indent_blankline_show_first_indent_level = v:true`

Below option is related with only appearance. <br/>
`let g:indent_blankline_show_trailing_blankline_indent = v:false`

Project website: https://github.com/lukas-reineke/indent-blankline.nvim

### folke/tokyonight.nvim <a name="folke"></a> [UP↑](#tof)
A dark and light Neovim theme ported from the Visual Studio Code TokyoNight theme.

To my config I included only: <br/>
`colorscheme tokyonight` <br/>
This turn on a *tokyonight* colorscheme.

If you want see background color from this plugin be careful on *tmux*. <br/>
More info about this you'll find on my
[tmux repo](https://github.com/mozerpol/Configs-Settings/tree/master/tmux)
and [here](https://unix.stackexchange.com/questions/197391/background-color-mismatch-in-vim-and-tmux).

Project website: https://github.com/folke/tokyonight.nvim

### NERDTree <a name="nerd"></a> [UP↑](#tof)
The NERDTree is a file system explorer for the Vim editor. <br/>
To use, just write `:NERDTree`.

Mapping a specific key to open *NERDTree*: <br/>
`nnoremap <Space>n :NERDTree<CR>` <br/>
Thanks to this line I can open *nerdtree* by pressing `space` and `n`.

Project website: https://github.com/preservim/nerdtree <br/>

### vim-devicons  <a name="vim-dev"></a> [UP↑](#tof)
Adds filetype-specific icons to *nerdtree*, *vim-airline* and more.

You need also install this plugin [here](#vim-airline).
After this everything should work correct.

Project page: https://github.com/ryanoasis/vim-devicons

### Rainbow Parentheses Improved  <a name="rainbow"></a> [UP↑](#tof)
This plugin will help you read these codes by showing different levels of
parentheses in different colors.

I added only one line: `let g:rainbow_active = 1`.

Project page: https://github.com/luochen1990/rainbow

### Vim Markdown  <a name="vim-mark"></a> [UP↑](#tof)
Syntax highlighting, matching rules and mappings for the original Markdown and extensions.

You must add two lines to init.vim: <br/>
```vim
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
```
And after this of course `:PlugInstall`.

##### What did I use
I used option "fold in a style like python-mode": <br/>
`let g:vim_markdown_folding_style_pythonic = 1`

Also for me is more comfortable to change folding level. We can set six grades,
default is first grade. It means that our file will be fold to maximum, every
title (such as: #, ##, ###, ####...) will be fold. To change this use: <br/>
`let g:vim_markdown_folding_level = 6`.

I turn off syntax concealing. Explanation from main page of this
repo: "For example, conceal [link text](link url) as just link text. Also, _italic_ and *italic* will conceal to just italic. Similarly __bold__, **bold**, ___italic bold___, and ***italic bold*** will conceal to just bold, bold, italic bold, and italic bold respectively."To disable syntax concealing: <br/>
`let g:vim_markdown_conceal = 0`

Also I turn off auto insert bulletpoints: <br/>
`let g:vim_markdown_auto_insert_bullets = 0`

Project page: https://github.com/plasticboy/vim-markdown

### Supertab  <a name="supertab"></a> [UP↑](#tof)
Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs (:help ins-completion).

Just press `Tab` and see the prompt. <br/>

Project page: https://github.com/ervandew/supertab

### Asynchronous Lint Engine <a name="ale"></a> [UP↑](#tof)
ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax checking
and semantic errors) while you edit your text files.

I'm using (at this moment) *ALE* for Verilog language, so below part of my vim
config conern just this language. To everything should work correct, you must
install *verilator*. Source page:
https://www.veripool.org/verilator/ <br/>
To install verilator at linux just `apt install verilator`, package should be
in repo by default. <br/>
I added three things: <br/>
```vim
let g:ale_linters = {
\   'verilog': ['verilator'],
\}
```

This backslashes look a bit wired, but are necessary. Above part is about
linter for verilog. The next thing: <br/>
```vim
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ }
```

This part of code is for command `:ALEFix`, which delete unncessary whitespaces
and empty lines, for all types of code (because we have `*` - it means all
type of code). The last one is: <br/>
```vim
let g:ale_echo_msg_format = '%s [%severity%]'
```

This part modify output for status bar, which is in left-bottom corner.


Project page: https://github.com/dense-analysis/ale

### vhda/verilog_systemverilog.vim <a name="vhda"></a> [UP↑](#tof)
VHDA - Vim Syntax Plugin for Verilog and SystemVerilog. It's a quite big tool,
but I'm using only a small part - identation, which are based on context.

Project page: https://github.com/vhda/verilog_systemverilog.vim

### Other settings  <a name="other"></a> [UP↑](#tof)
Set the vertical line to position 80: <br/>
`set colorcolumn=80`

Color change of vertical line at position 80. Color is in hex value, may this
value can change more things, but for now everything looks ok. <br/>
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
match the current tab settings, use in vim terminal `:retab`. Option to set in
init.vim: <br/>
`set expandtab`

Vim can detect the type of file that is edited: <br/>
`filetype on`

### jeremiah-c-leary/vhdl-style-guide <a name="vsg"></a> [UP↑](#tof)
VHDL Style Guide (VSG) provides coding style guide enforcement for VHDL code.

Github page: https://github.com/jeremiah-c-leary/vhdl-style-guide <br/>
Web page: https://vhdl-style-guide.readthedocs.io/en/latest/overview.html <br/>

I described this tool a little bit
[here](https://github.com/mozerpol/dotfiles/tree/master/otherFiles#2-vsg---vhdl-style-guide).

It's not a special tool for vim, but thanks to calling commands directly from
vim, it's nice to use it. I'm using mainly this commands: <br/>
1. `:!vsg -f design.vhd` <br/>
![image](https://user-images.githubusercontent.com/43972902/142885091-e114c4e5-6308-4eb4-bd46-c297f7c8167c.png)
2. `:!vsg -f design.vhd --fix` <br/>
![image](https://user-images.githubusercontent.com/43972902/142885345-021919cb-5633-46b4-b413-8992a0261f43.png)
After pressing enter code looks like this: <br/>
![image](https://user-images.githubusercontent.com/43972902/142885453-dc081117-a9b7-40b5-b799-dcea7e0bfa28.png)

### My own shortcuts <a name="mos"></a> [UP↑](#tof)
Below are two shortcuts, which help navigate between cards using *NERDTree*.
Just select your file, press *t* and from now you can use below shortcuts. <br/>
```vim
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
```
