![logo](https://neovim.io/images/logo@2x.png) 

---
### How to install neovim:
`sudo apt install neovim` <br/>
For all plugins to correct work you need neovim version > 0.5. <br/>

### Important directories/files:
If they (folders and files) don't exist, create them.
1. *~/.config/nvim* - main folder.
2. *~/.config/nvim/init.vim* - config file.
3. *~/.local/share/nvim* - for plug-vim purposes.

After changing user (can be root for example) nvim looks different. 
It is obvious, the dir for config is different.

### Modes in vim/nvim

|**Mode**|**Description**|
|:--:|:--:|
|Normal|Default; for navigation and simple editing|
|Insert|For explicitly inserting and modifying text|
|Command Line|For operations like saving, exiting, etc.|

Vim has other modes, like Visual, Select, and Ex-Mode, more [here](https://en.wikibooks.org/wiki/Learning_the_vi_Editor/Vim/Modes).

### *vim-plug*
After *nvim* instalation, install the *Vim-plug Plugin Manager* to make it easier 
to install plugins.

##### How to install
For neovim: 
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

This command will create config file for plugin *plug.vim* in directory: 
*~/.local/share/nvim/site/autoload/plug.vim*. <br/>
To use this plugin you must add a few lines to *init.vim*. *init.vim* should 
be in `~/.config/nvim/init.vim`, if you don't have this folders anad file, 
create them. <br/>
To *init.vim* add: <br/>
```
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

### *vim-airline*
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
Thanks to `'vim-airline/vim-airline-themes'` I can use `let g:airline_theme='minimalist'`, which is nice
theme :D <br/>
Put line `let g:airline_theme='minimalist'` **after** (not between)
`call plug#end()`.

Also we can put line `let g:airline#extensions#tabline#enabled = 1` <br/>
Thanks to this we'll see in upper bar status about tabs.

Additional options for *airline*:
- enable modified detection: `let g:airline_detect_modified=:1`
- enable paste detection: `let g:airline_detect_paste=1`
- enable spell detection: `let g:airline_detect_spell=1`
- display spelling language when spell detection is enabled: 
`let g:airline_detect_spelllang=1`

Project website: https://github.com/vim-airline/vim-airline

### auto-pairs
Automatic quote and bracket completion is doing by *'jiangmiao/auto-pairs'*. <br/>

##### How to install
Just paste `Plug 'jiangmiao/auto-pairs'` to `~/.config/nvim/init.vim` between `call plug#begin('~/.local/share/nvim/plugged')` and `call plug#end()`. <br/>
And of course install.

##### What did I use

Project website: https://github.com/jiangmiao/auto-pairs

### Yggdroot/indentLine 
At the beggining I thought this plugin would be a good choice. It is very popular,
but I had a big problem. I doesn't show colors of indent in blank line. So I
decided to use another one, which I describe below. Anyway I started describe this, so
I'll save it, becuse it's my hard work ;) <br/>
So... About *Yggdroot/indentLine*, which I ultimately didn't use. <br/> 
This plugin is for displaying vertical lines at each indentation level for code 
indented with spaces. This plugin not support indentations with tabs, because
you can just use `set list lcs=tab:\¦\ `.

##### How to install
To install: Plug `'Yggdroot/indentLine'` and `:PlugInstall` <br/>

To turn on plugin add: <br/>
`let g:indentLine_enabled = 1` <br/>
If you want turn off plugin, just: <br/>
`let g:indentLine_enabled = 0` <br/>

##### What does mean indent level: <br/>
It's the first indent level: <br/>
```cpp
int main()
{
	return 0;
}
```
It's the second indent level: <br/>
```cpp
int main()
{
	if(variable1)
	{
		return 1;
	}
	
	return 0;
}
```
It's the third indent level: <br/>
```cpp
int main()
{
	if(variable1)
	{
		if(variable2)
		{
			return 2;
		}

		return 1;
	}

	return 0;
}
```
etc.

#####
To show first indent level: <br/>
`let g:indentLine_showFirstIndentLevel = 1` <br/>
In my case the first indent level was turned off.

Show up to ten level indents: <br/>
`let g:indentLine_indentLevel = 10`

This plugin not support indentations with tabs, so in this case we must use: <br/>
`set list lcs=tab:\¦\ `, and remeber, after "\¦\ " is space on the end. <br/>
To change color for tab indents use: <br/>

Project website: https://github.com/Yggdroot/indentLine

### lukas-reineke/indent-blankline.nvim
This is impoved version of *Yggdroot/indentLine*. Thanks to this, we can see 
vertical indentations for spaces, tabs and also for empty lines. <br/>

##### How to install
To install: `Plug 'lukas-reineke/indent-blankline.nvim'` and `:PlugInstall`.

##### What did I use
I sat for four first indent lines different signs. <br/>
First vertical indentation consists of `|` sign. <br/>
Second vertical indentation consists of `¦` sign <br/>
Third... etc:
`let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']`

Show up to ten level indents: <br/>
`let g:indent_blankline_indent_level = 10`

Show first indent level. In my case the first indent level was turned off. To
turn on use: <br/>
`let g:indent_blankline_show_first_indent_level = v:true`


For this option is much harder to explain without photo. Below option is related 
with only appearance. <br/>
`let g:indent_blankline_show_trailing_blankline_indent = v:false`

Project website: https://github.com/lukas-reineke/indent-blankline.nvim

### 'folke/tokyonight.nvim'
A dark and light Neovim theme ported from the Visual Studio Code TokyoNight theme.

##### How to install
To install: `Plug 'folke/tokyonight.nvim'` and `:PlugInstall`.

##### What did I use
In my opinion, the most important things were enabled by default, such as italic
comments or *NvimTree* has a darker background. <br/>
To my config I included only: <br/>
`colorscheme tokyonight`

This turn on a *tokyonight* colorscheme, which for me is nice. 

Project website: https://github.com/folke/tokyonight.nvim 

### NERDTree
The NERDTree is a file system explorer for the Vim editor. <br/>
To use, just write `:NERDTree`.

##### How to install
To install: `Plug 'preservim/nerdtree'` and `:PlugInstall`. 
After installing *NERDTree*, the best way to learn it is to turn on the 
Quick Help. Open *NERDTree* with the `:NERDTree` command, and press `?` to turn
on the Quick Help.

##### What did I use
Ok, this plugin is very expanded, so at this moment, bit by bit I'll develop
this part. Gradually I'll add some shortcuts, plugins for *nerdtree*. I need
time to tame with this plugin. <br/>

Mapping a specific key to open *NERDTree*: <br/>
`nnoremap <Space>n :NERDTree<CR>` <br/>
Thanks to this line I can open *nerdtree* by pressing `space` and `n`. 

Project website: https://github.com/preservim/nerdtree <br/>
On the project website you'll find more info about plugin and a few intresting
informations such as "How do I open NERDTree automatically when Vim starts?" or
"How can I close Vim automatically when NERDTree is the last window?".

## TODO:
### vim-devicons
Adds filetype-specific icons to *nerdtree*, *vim-airline* and more.

##### How to install
Add to *init.vim* file `Plug 'ryanoasis/vim-devicons'` and `:PlugInstall`. <br/>
And very important info: "Always load the vim-devicons as the very last one".


Project page: https://github.com/ryanoasis/vim-devicons

### Rainbow Parentheses Improved
This plugin will help you read these codes by showing different levels of
parentheses in different colors. 

##### How to install
Add `Plug 'luochen1990/rainbow'` and `:PlugInstall`. <br/>

##### Whad did I use
This plugin is very small (I think), so I added only one line: `let g:rainbow_active = 1`.

Project page: https://github.com/luochen1990/rainbow

### Other settings
Set the vertical line to position 80: <br/>
```
highlight ColorColumn ctermbg=gray
set colorcolumn=80
```

Set line numbering: <br/>
`set number`




### Most important shortcuts

| Shortcut | Meaning |
|--|:--|
| *h, j, k, l* | navigation, instead of arrows |
| *u* | undo |
| *:q!* | exit without saving |
| *x* | delete sign under cursor |
| *i* | entering into insert mode |
| *shift + a* | writing at the end of the line |
| *w* | jump to the end if the word |
| *dw* | delete the entire word |
| *d$* | delete all words to the end of line |
| *de* | delete the entire word up to space |
| *zw* | skip forward two words and set cursor at the beginning of next word |
| *3e* | skip forward three words and set cursor on the end of next word |
| *d2w* | delete two words |
| *dd* | delete entire line |
| *2dd* | delete two entire lines |
| *ctrl + r* | ctrl + y |
| *p* | undo *dd* action |
| *r* | replace |
| *ce* | delete to the end of word |
| *ctrl + g* | shows how many percent of the document has passed |
| */* | find word |
| *:!* | execute external command |
| *gg* | place the cursor at the very top of the document |
| *:w* | save |
| *j* | copy what the cursor pointing at |
| *p* | paste |
