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
| <h4>1. Tmux</h4> |  |
| :-- | :--: |
| **General shortkeys** |  |
| Start session: | `tmux` |
| All commands in Tmux start with a prefix: | `ctrl + b` |
| List of all commands: | `ctrl + b` and after this press `?` |
| **Tmux sessions** |  |
| List of the Tmux sessions: | `tmux ls` |
| Create a new window with shell: | `ctrl + b` and `c` |
| Choose window from a list: | `ctrl + b` and `w` |
| Rename the current window: | `ctrl + b` and `,`|
| **Panel management** |  |
| Split current panel horizontally: | `ctrl + b` and `%` |
| Split current panel vertically: | `ctrl + b` and `"` |
| Go to the next panel: | `ctrl + b` and `o` |
| Close the current panel: | `ctrl + b` and `x` |
| Change panels layout: | `ctrl + b` and `space` |
| Panel is a new window: | `ctrl + b` and `!` |
| Select window NUMBER: | `ctrl + b` and `number`, eg. `ctrl + b 0` |
| Focus on active panel (when divided): | `ctrl + b` and `z` |
| Swap panels: | `ctrl + b` and `{` or `}` |
| **Copying** |  |
| Enter copy mode: | `ctrl + b` and `[` then use the arrow keys to go to the position from where you want to start copying. |
| Enter copy mode: | `ctrl + b` and `[` |
| Start copyting: | `ctrl + space` |
| Save marked text: | `ctrl + w` |
| Paste the selected text: | `ctrl + b` and `]` |
| <h4>2. trans</h4> ||
| Translate one word: | `trans :en jeden` |
| Tranlate sentence: | `trans :en "jakieś zdanie"` |
| <h4>3. grip</h4> |  |
| Start server: | `grip` |
| <h4>4.nvim</h4> |  |
| **Main shortcuts** |  |
| Moving in the editor | Navigation, instead of arrows: `h`, `j`, `k`, `l` |
| Insert text before the cursor: | `i` |
| Insert text from the beginning of the line: | `shift + i` |
| Append text after the cursor: | `a` |
| Append text at the end of the line: | `shift + a` |
| Insert text in a new line below the cursor: | `o` |
| Insert text in a new line above the cursor: | `shift + o` |
| Jump to the end if the word: | `w` |
| Skip forward two words and set cursor at the beginning of next word: | `zw` |
| Skip forward three words and set cursor on the end of next word: | `3e` |
| Place the cursor at the top of the document: | `ctrl + g` |
| Place the cursor at the bottom of the document: | `shift + g` |
| Writing at the end of the line: | `shift + a` |
| Writing at the beginning of the line: | `shift + i` |
| Moves the cursor to the last place you were editing and puts in insert mode: | `gi` |
| Jumps to the previous place where the cursor recently had been: | `ctrl + o` |
| Jumps to the next place where the cursor recently had been: | `ctrl + i` |
| Scroll the current buffer one line up: | `ctrl + e` |
| Scroll the current buffer one line down: | `ctrl + y` |
| Set in the middle of the screen: | `zz` |
| Go to (local) variable definition: | `gd` |
| **Copying and deleting** |  |
| Delete sign under cursor: | `x` |
| Delete the entire word with space after this word and set cursor on first character of the next word: | `dw` |
| Delete all words to the end of line: | `d$` |
| Delete the entire word up to space: | `de` |
| Delete to the end of word, set cursor on the last character of the deleted word: | `ce` |
| Delete two words: | `d2w` |
| Delete entire line: | `dd` |
| Delete two entire lines: | `2dd` |
| Replace sign under cursor: | `r` |
| Copy whole line (without visual mode): | `y` |
| Copy to system clipboard (in visual mode): | `"+y` |
| Paste: | `p` |
| Paste what dd action removed: | `p` |
| **Searching and replacing** |  |
| Search forward from cursor: | `/{pattern}` |
| Search backward from cursor: | `?{pattern}` |
| Next occurrence of search pattern: | `n` |
| Previous occurrence of search pattern: | `N` |
| Replace all matches of a pattern: | `:%s/{pattern}/{string}/` |
| Replace all matches of a pattern in the selected area (in visual mode): | `:s/{pattern}/{string}` |
| Search for the exact word under the cursor: | `*` |
| **Others** |  |
| Entering into insert mode: | `i` |
| Switch to visual mode: | `v` |
| Execute external command: | `:!<command>` |
| Redo an undone action: | `ctrl + r` |
| Shows how many percent of the document has passed: | `ctrl + g` |
| Shift the line (or selection) one indent to the right: | `>>` |
| Shift the line (or selection) one indent to the left: | `<<` |
| Complete the current word under the cursor from the word following it: | `ctrl + n` or `ctrl + p` |
| **NERDTree** |  |
| Open NERDTree: | `:NERDTree` |
| **VHDL snippets**  |  |
| Expand snippet | `tab` |
| Jump forward inside snippet | `ctrl + b` |
| Jump backward inside snippet | `ctrl + z` |
| All code snippets available: | [here](#https://github.com/honza/vim-snippets/blob/master/snippets/vhdl.snippets) |
| Possible snippets: | lib<br>libs<br>ent<br>arc<br>st<br>sv<br>ist<br>isv |
|  | ost<br>osv<br>un<br>pr<br>prc<br>prcr<br>pra<br>if |
|  | ife<br>el<br>eif<br>ca<br>wh<br>for<br>wh<br>oth |
