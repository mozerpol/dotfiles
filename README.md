
go](https://neovim.io/images/logo@2x.png) 
# My own config

I created this description mainly for me - for future, if I want to recreate my own work.
In this doc I'll try describe the most important things for me. 
---
#### How to install:
1. sudo apt-get install neovim
Must have: python3

#### Important directories/files:
1. ~/.config/nvim - main folder
2. ~/.config/nvim/bundle - it's folder for vim plugins. If you don't have this folder - create it.
3. ~/.config/nvim init.vim - it's my config, type: ASCII text (meaninig may *.txt)

I saw, that after changing user to *root* nvim looks different, perhaps other 
users have different direction for vim config, so I mainly (or currently) use nvim only for my home user. 

## What is init.vim
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
