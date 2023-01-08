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
| **trans** ||
| Translate one word: | `trans :en jeden` |
| Tranlate sentence: | `trans :en "jakieś zdanie"` |
| **grip** ||
| Start server: | `grip` |
| **nvim** | |
| Main shortcuts |  |
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
| Copying and deleting |  |
| Delete sign under cursor: | `x` |
| Delete the entire word with space after this word and set cursor on first 
character of the next word: | `dw` |
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
| Searching and replacing |  |
| Search forward from cursor: | `/{pattern}` |
| Search backward from cursor: | `?{pattern}` |
| Next occurrence of search pattern: | `n` |
| Previous occurrence of search pattern: | `N` |
| Replace all matches of a pattern: | `:%s/{pattern}/{string}/` |
| Replace all matches of a pattern in the selected area (in visual mode): | `:s/{pattern}/{string}` |
| Search for the exact word under the cursor: | `*` |
| Others |  |
| Entering into insert mode: | `i` |
| Switch to visual mode: | `v` |
| Execute external command: | `:!<command>` |
| Redo an undone action: | `ctrl + r` |
| Shows how many percent of the document has passed: | `ctrl + g` |
| Shift the line (or selection) one indent to the right: | `>>` |
| Shift the line (or selection) one indent to the left: | `<<` |
| Complete the current word under the cursor from the word following it: | `ctrl + n` or `ctrl + p` |
| NERDTree |  |
| Open NERDTree: | `:NERDTree` |
|  |  |
|  |  |
| VHDL snippets  |  |
| Expand snippet | `tab` |
| Jump forward inside snippet | `ctrl + b` |
| Jump backward inside snippet | `ctrl + z` |
| lib | library ${1} <br>
use $1.${2}|
| libs | library IEEE;* <br> *use IEEE.std_logic_1164.ALL;* <br> *use IEEE.numeric_std.ALL; |
|:--:|---------------------------------|
NEED TO TRANSFORM TO HTML TABLE, BUT BEFORE THIS CHECK
| test| <pre>main(m,k){<br>  for(<br>    ;<br>    m%k--?:(k=m++);<br>    k^1?:printf("%i\|",m)<br>  );<br>}</pre>   |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |




<table>
   <tr>
      <td><h3>Tmux</h3></td>
      <td></td>
   </tr>
   <tr>
      <td><h4>General shortkeys</h4></td>
      <td></td>
   </tr>
   <tr>
      <td>Start session: </td>
      <td> <i>tmux </i></td>
   </tr>
   <tr>
      <td>All commands in Tmux start with a prefix: </td>
      <td>ctrl + b</td>
   </tr>
   <tr>
      <td>List of all commands: </td>
      <td>ctrl + b and after this press ?</td>
   </tr>
   <tr>
      <td><h4>Tmux sessions</h4></td>
      <td></td>
   </tr>
   <tr>
      <td>List of the Tmux sessions: </td>
      <td>tmux ls</td>
   </tr>
   <tr>
      <td>Create a new window with shell: </td>
      <td>ctrl + b and c</td>
   </tr>
   <tr>
      <td>Choose window from a list: </td>
      <td>ctrl + b and w</td>
   </tr>
   <tr>
      <td>Rename the current window: </td>
      <td>ctrl + b and ,</td>
   </tr>
   <tr>
      <td>Panel management </td>
      <td></td>
   </tr>
   <tr>
      <td>Split current panel horizontally: </td>
      <td>ctrl + b and %</td>
   </tr>
   <tr>
      <td>Split current panel vertically: </td>
      <td>ctrl + b and "</td>
   </tr>
   <tr>
      <td>Go to the next panel: </td>
      <td>ctrl + b and o</td>
   </tr>
   <tr>
      <td>Close the current panel: </td>
      <td>ctrl + b and x</td>
   </tr>
   <tr>
      <td>Change panels layout: </td>
      <td>ctrl + b and space</td>
   </tr>
   <tr>
      <td>Panel is a new window: </td>
      <td>ctrl + b and !</td>
   </tr>
   <tr>
      <td>Select window NUMBER: </td>
      <td>ctrl + b and number, eg. ctrl + b 0</td>
   </tr>
   <tr>
      <td>Focus on active panel (when divided): </td>
      <td>ctrl + b and z</td>
   </tr>
   <tr>
      <td>Swap panels: </td>
      <td>ctrl + b and { or }</td>
   </tr>
   <tr>
      <td>Copying </td>
      <td></td>
   </tr>
   <tr>
      <td>Enter copy mode: </td>
      <td>ctrl + b and [ then use the arrow keys to go to the position</td>
   </tr>
   <tr>
      <td>from where you want to start copying. </td>
      <td></td>
   </tr>
   <tr>
      <td>Enter copy mode: </td>
      <td>ctrl + b and [</td>
   </tr>
   <tr>
      <td>Start copyting: </td>
      <td>ctrl + space</td>
   </tr>
   <tr>
      <td>Save marked text: </td>
      <td>ctrl + w</td>
   </tr>
   <tr>
      <td>Paste the selected text: </td>
      <td>ctrl + b and ]</td>
   </tr>
   <tr>
      <td>trans </td>
      <td></td>
   </tr>
   <tr>
      <td>Translate one word: </td>
      <td>trans :en jeden</td>
   </tr>
   <tr>
      <td>Tranlate sentence: </td>
      <td>trans :en "jakieś zdanie"</td>
   </tr>
   <tr>
      <td>grip </td>
      <td></td>
   </tr>
   <tr>
      <td>Start server: </td>
      <td>grip</td>
   </tr>
   <tr>
      <td>nvim </td>
      <td></td>
   </tr>
   <tr>
      <td>Main shortcuts </td>
      <td></td>
   </tr>
   <tr>
      <td>Moving in the editor </td>
      <td>Navigation, instead of arrows: h, j, k, l</td>
   </tr>
   <tr>
      <td>Insert text before the cursor: </td>
      <td>i</td>
   </tr>
   <tr>
      <td>Insert text from the beginning of the line: </td>
      <td>shift + i</td>
   </tr>
   <tr>
      <td>Append text after the cursor: </td>
      <td>a</td>
   </tr>
   <tr>
      <td>Append text at the end of the line: </td>
      <td>shift + a</td>
   </tr>
   <tr>
      <td>Insert text in a new line below the cursor: </td>
      <td>o</td>
   </tr>
   <tr>
      <td>Insert text in a new line above the cursor: </td>
      <td>shift + o</td>
   </tr>
   <tr>
      <td>Jump to the end if the word: </td>
      <td>w</td>
   </tr>
   <tr>
      <td>Skip forward two words and set cursor at the beginning of next word: </td>
      <td>zw</td>
   </tr>
   <tr>
      <td>Skip forward three words and set cursor on the end of next word: </td>
      <td>3e</td>
   </tr>
   <tr>
      <td>Place the cursor at the top of the document: </td>
      <td>ctrl + g</td>
   </tr>
   <tr>
      <td>Place the cursor at the bottom of the document: </td>
      <td>shift + g</td>
   </tr>
   <tr>
      <td>Writing at the end of the line: </td>
      <td>shift + a</td>
   </tr>
   <tr>
      <td>Writing at the beginning of the line: </td>
      <td>shift + i</td>
   </tr>
   <tr>
      <td>Moves the cursor to the last place you were editing and puts in insert mode: </td>
      <td>gi</td>
   </tr>
   <tr>
      <td>Jumps to the previous place where the cursor recently had been: </td>
      <td>ctrl + o</td>
   </tr>
   <tr>
      <td>Jumps to the next place where the cursor recently had been: </td>
      <td>ctrl + i</td>
   </tr>
   <tr>
      <td>Scroll the current buffer one line up: </td>
      <td>ctrl + e</td>
   </tr>
   <tr>
      <td>Scroll the current buffer one line down: </td>
      <td>ctrl + y</td>
   </tr>
   <tr>
      <td>Set in the middle of the screen: </td>
      <td>zz</td>
   </tr>
   <tr>
      <td>Go to (local) variable definition: </td>
      <td>gd</td>
   </tr>
   <tr>
      <td>Copying and deleting </td>
      <td></td>
   </tr>
   <tr>
      <td>Delete sign under cursor: </td>
      <td>x</td>
   </tr>
   <tr>
      <td>Delete the entire word with space after this word and set cursor on first </td>
      <td></td>
   </tr>
   <tr>
      <td>character of the next word: </td>
      <td>dw</td>
   </tr>
   <tr>
      <td>Delete all words to the end of line: </td>
      <td>d$</td>
   </tr>
   <tr>
      <td>Delete the entire word up to space: </td>
      <td>de</td>
   </tr>
   <tr>
      <td>Delete to the end of word, set cursor on the last character of the deleted word: </td>
       <td>ce</td>
   </tr>
   <tr>
      <td>Delete two words: </td>
      <td>d2w</td>
   </tr>
   <tr>
      <td>Delete entire line: </td>
      <td>dd</td>
   </tr>
   <tr>
      <td>Delete two entire lines: </td>
      <td>2dd</td>
   </tr>
   <tr>
      <td>Replace sign under cursor: </td>
      <td>r</td>
   </tr>
   <tr>
      <td>Copy whole line (without visual mode): </td>
      <td>y</td>
   </tr>
   <tr>
      <td>Copy to system clipboard (in visual mode): </td>
      <td>"+y</td>
   </tr>
   <tr>
      <td>Paste: </td>
      <td>p</td>
   </tr>
   <tr>
      <td>Paste what dd action removed: </td>
      <td>p</td>
   </tr>
   <tr>
      <td>Searching and replacing </td>
      <td></td>
   </tr>
   <tr>
      <td>Search forward from cursor: </td>
      <td>/{pattern}</td>
   </tr>
   <tr>
      <td>Search backward from cursor: </td>
      <td>?{pattern}</td>
   </tr>
   <tr>
      <td>Next occurrence of search pattern: </td>
      <td>n</td>
   </tr>
   <tr>
      <td>Previous occurrence of search pattern: </td>
      <td>N</td>
   </tr>
   <tr>
      <td>Replace all matches of a pattern: </td>
      <td>:%s/{pattern}/{string}/</td>
   </tr>
   <tr>
      <td>Replace all matches of a pattern in the selected area (in visual mode): </td>
      <td>:s/{pattern}/{string}</td>
   </tr>
   <tr>
      <td>Search for the exact word under the cursor: </td>
      <td>*</td>
   </tr>
   <tr>
      <td>Others </td>
      <td></td>
   </tr>
   <tr>
      <td>Entering into insert mode: </td>
      <td>i</td>
   </tr>
   <tr>
      <td>Switch to visual mode: </td>
      <td>v</td>
   </tr>
   <tr>
      <td>Execute external command: </td>
      <td>:!&lt;command&gt;</td>
   </tr>
   <tr>
      <td>Redo an undone action: </td>
      <td>ctrl + r</td>
   </tr>
   <tr>
      <td>Shows how many percent of the document has passed: </td>
      <td>ctrl + g</td>
   </tr>
   <tr>
      <td>Shift the line (or selection) one indent to the right: </td>
      <td>&gt;&gt;</td>
   </tr>
   <tr>
      <td>Shift the line (or selection) one indent to the left: </td>
      <td>&lt;&lt;</td>
   </tr>
   <tr>
      <td>Complete the current word under the cursor from the word following it: </td>
      <td>ctrl + n or ctrl + p</td>
   </tr>
   <tr>
      <td>NERDTree </td>
      <td></td>
   </tr>
   <tr>
      <td>Open NERDTree: </td>
      <td>:NERDTree</td>
   </tr>
   <tr>
      <td></td>
      <td></td>
   </tr>
   <tr>
      <td></td>
      <td></td>
   </tr>
   <tr>
      <td>VHDL snippets </td>
      <td></td>
   </tr>
   <tr>
      <td>Expand snippet </td>
      <td>tab</td>
   </tr>
   <tr>
      <td>Jump forward inside snippet </td>
      <td>ctrl + b</td>
   </tr>
   <tr>
      <td>Jump backward inside snippet </td>
      <td>ctrl + z</td>
   </tr>
   <tr>
      <td>
         code
      </td>
      <td>
      <pre>
         architecture virat of not1 is
         begin
            y<=not x;
         end virat;
      </pre> </td>
   </tr>
</table>
