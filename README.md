## Configs-Settings
I'm a user of linux based systems, so it's natural to use the cli apps sometimes.
Because of this I have a problem to remember every shortcut. So I created this
repo to save my own configs and (if it's necessary) list the most important for 
me shortcuts.
_____________

1. [*Conky*](https://github.com/mozerpol/Configs-Settings/tree/master/conky) - lightweight desktop system monitor
2. [*NeoVim*](https://github.com/mozerpol/Configs-Settings/tree/master/neoVim) - *Vim* fork
3. [*Translate Shell*](https://github.com/mozerpol/Configs-Settings/tree/master/translateShell) - translator in cli
4. [Other files](https://github.com/mozerpol/Configs-Settings/tree/master/otherFiles) - other files, the description of which is so short that I didn't 
create a separate folder for them, e.g. *grip*
5. [*mps-youtube*](https://github.com/mozerpol/Configs-Settings/tree/master/tmux) - youtube in cli
6. [*tmux*](https://github.com/mozerpol/Configs-Settings/tree/master/tmux) - terminal multiplexer

Why the name of this repo is *"dotfiles"* not "myconfig" or "settings"? <br/>
Because is very popular that when we're personalizing various programs, their
configuration files start from dot. So we can say that config files are
**dot**-**files**, for example config file for *tmux* will be "**.** *tmux.conf*". <br/>
Nice article: https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory

### Cheat sheet
| Tmux |  |
| ------ |:--:|
| General shortkeys |  |
| Start session: | `tmux` |
| All commands in Tmux start with a prefix: | `ctrl + b` |
| List of all commands: | `ctrl + b` and after this press `?` |
| Tmux sessions |  |
| List of the Tmux sessions: | `tmux ls` |
| Create a new window with shell: | `ctrl + b` and `c` |
| Choose window from a list: | `ctrl + b` and `w` |
| Rename the current window: | `ctrl + b` and `,`|
| Panel management ||
| Split current panel horizontally: | `ctrl + b` and `%` |
| Split current panel vertically: | `ctrl + b` and `"` |
| Go to the next panel: | `ctrl + b` and `o` |
| Close the current panel: | `ctrl + b` and `x` |
| Change panels layout: | `ctrl + b` and `space` |
| Panel is a new window: | `ctrl + b` and `!` |
| Select window NUMBER: | `ctrl + b` and `number`, eg. `ctrl + b 0` |
| Focus on active panel (when divided): | `ctrl + b` and `z` |
| Swap panels: | `ctrl + b` and `{` or `}` |
| Copying ||
| Enter copy mode: | `ctrl + b` and `[` then use the arrow keys to go to the position 
from where you want to start copying. |
| Enter copy mode: | `ctrl + b` and `[` |
| Start copyting: | `ctrl + space` |
| Save marked text: | `ctrl + w` |
| Paste the selected text: | `ctrl + b` and `]` |
| trans ||
| Translate one word: | `trans :en jeden` |
| Tranlate sentence: | `trans :en "jakieś zdanie"` |
| grip ||
| Just only command grip to start server ||
| | |
