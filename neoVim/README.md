![logo](https://neovim.io/images/logo@2x.png) 

---
### How to install:
`sudo apt install neovim` <br/>
Must have: python3

### Important directories/files:
If they (folders and files) don't exist, create them.
1. *~/.config/nvim* - main folder.
2. *~/.config/nvim/bundle* - folder for vim plugins.
3. *~/.config/nvim/init.vim* - config file.
4. *~/.local/share/nvim* - for plug-vim purposes.

After changing user (can be root for example) nvim looks different. It is obvious, the dir for config is different.

### Modes

|**Mode**|**Description**|
|:--:|:--:|
|Normal|Default; for navigation and simple editing|
|Insert|For explicitly inserting and modifying text|
|Command Line|For operations like saving, exiting, etc.|

Vim has other modes, like Visual, Select, and Ex-Mode

### Step by step
After *nvim* instalation, install the *Vim-plug Plugin Manager* to make it easier to install plugins: <br/>
For neovim: ```sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'```

This command will create config file for plugin *plug.vim* in directory: *~/.local/share/nvim/site/autoload/plug.vim*. <br/>
To use this plugin you must add a few lines to *init.vim*. *init.vim* should be in `~/.config/nvim/init.vim`, if you
don't have this folders anad file, create them. <br/>
To *init.vim* add: <br/>
```
call plug#begin('~/.local/share/nvim/plugged')
	Plug 'davidhalter/jedi-vim'
call plug#end()
```

After this steps you should run *neovim* by `nvim` command and inside neovim run `:PlugInstall` <br/>
This command will create folder *jedi-vim* with config file for this plugin in dir *~/.local/share/nvim/plugged*. <br/>
So as I wrote, *vim-plug* is a plugin for easier installation other plugins for vim, the basic commands for *vim-plug*: <br/>
- Install plugins: `:PlugInstall`
- Update plugins: `:PlugUpdate`
- Remove plugins: `:PlugClean` (First, comment the plugin install command in init.vim. Open Nvim and use :PlugClean to uninstall plugins)
- Check the plugin status: `:PlugStatus`
- Upgrade vim-plug itself: `:PlugUpgrade`


### What is init.vim
Plugins should be between *call* 
```
call plug#begin('~/.config/nvim/bundle')
    " It is comment
    " ~/.config/nvim/bundle - dir to folder with plugins
    " UI related
    " Color scheme for neovim
    Plug 'christkempson/base16-vim'
    " Statusline at the bottom, indicates for many useful things
    Plug 'vim-airline/vim-airline'
    " Draw vertical lines at each indentation level for code indented with spaces
    Plug 'Yggdroot/indentLine'
    
    " Syntax check
    " Syntax checking and semantic errors, while edit file and return errors
    Plug 'w0rp/ale'
    
    " Autocomplete
    " Asynchronous completion support for diffrent languages
    Plug 'ncm2/ncm2'
    " Donno what do this, may return any text in nvim statusbar
    Plug 'roxma/nvim-yarp'
    " Use words from current buffer for completion
    Plug 'ncm2/ncm2-bufword'
    "
    Plug 'ncm2/ncm2-path'
    " Python completion
    Plug 'ncm2/ncm2-jedi'
    " Automatic quote and bracket completion
	Plug 'jiangmiao/auto-pairs'
    " Formater
    Plug 'Chiel92/vim-autoformat'
    
    " Addons
    " Provide file sustem explorter
    Plug 'scrooloose/nerdTree'
    
call plug#end()
```

TO DO: complete the rest
