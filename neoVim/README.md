![logo](https://neovim.io/images/logo@2x.png) 

---
### How to install:
`sudo apt install neovim` <br/>
Must have: python3

### Important directories/files:
If they (folders and files) don't exist, create them.
1. *~/.config/nvim* - main folder.
2. *~/.config/nvim/init.vim* - config file.
3. *~/.local/share/nvim* - for plug-vim purposes.

After changing user (can be root for example) nvim looks different. 
It is obvious, the dir for config is different.

### Modes

|**Mode**|**Description**|
|:--:|:--:|
|Normal|Default; for navigation and simple editing|
|Insert|For explicitly inserting and modifying text|
|Command Line|For operations like saving, exiting, etc.|

Vim has other modes, like Visual, Select, and Ex-Mode

### *vim-plug*
After *nvim* instalation, install the *Vim-plug Plugin Manager* to make it easier 
to install plugins: <br/>
For neovim: 
```sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'```

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
Thanks to this you can use `let g:airline_theme='minimalist'`, which is nice
theme :D <br/>
Put line `let g:airline_theme='minimalist'` **after** (not between)
`call plug#end()`.

Also we can put line `let g:airline#extensions#tabline#enabled = 1` <br/>
Thanks to this we'll se in upper bar status about tabs.

Additional options for *airline*:
- enable modified detection: `let g:airline_detect_modified=:1`
- enable paste detection: `let g:airline_detect_paste=1`
- enable spell detection: `let g:airline_detect_spell=1`
- display spelling language when spell detection is enabled: 
`let g:airline_detect_spelllang=1`

Project website: https://github.com/vim-airline/vim-airline

### *auto-pairs*
Automatic quote and bracket completion is doing by *'jiangmiao/auto-pairs'*. <br/>
Just paste `Plug 'jiangmiao/auto-pairs'` to `~/.config/nvim/init.vim` between `call plug#begin('~/.local/share/nvim/plugged')` and `call plug#end()`. <br/>
And of course install.

### Settings

Set the vertical line to position 80 <br/>
```
highlight ColorColumn ctermbg=gray
set colorcolumn=80
```

Set line numbering: <br/>
```set number```



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
