### About
*Tmux* is a terminal multiplexer, which can start a *Tmux* session and then open multiple windows inside that session. Each window occupies the entire screen and can be split into rectangular panes.

Project website: https://github.com/tmux/tmux

### How to install and start
To install *Tmux* run `apt install tmux` <br/>
Starting tmux session: `tmux`. <br/>
All commands in *Tmux* start with a prefix, which by default is `ctrl + b`, for example to get a list of all commands: `ctrl + b` and after this press `?`. <br/>

### Most important shortcuts
By default, Tmux sessions are named numerically. To create a new named session, run: `tmux new -s session_name` <br/>
Detach from Tmux and return to normal shell: `ctrl + b` and `d` <br/>
List of the Tmux sessions: `tmux ls` <br/>
Attach session: `tmux attach-session -t name_of_session_or_number` <br/>
Create a new window with shell: `ctrl + b` and `c` <br/>
Choose window from a list: `ctrl + b` and `w` <br/>
Rename the current window: `ctrl + b` and `,` <br/>
Split current panel horizontally: `ctrl + b` and `%` <br/>
Split current panel vertically: `ctrl + b` and `"` <br/>
Go to the next panel: `ctrl + b` and `o` <br/>
Toggle between the current and previous panel: `ctrl + b` and `;` <br/>
Close the current panel: `ctrl + b` and `x` <br/>

##### Copy - Paste
Enter *copy mode*: `ctrl + b` and `[` <br/>
Then use the arrow keys to go to the position from where you want to start copying. <br/>
`ctrl + space` to start copying. <br/>
Save marked text: `ctrl + w` <br/>
Paste the selected text: `ctrl + b` and `]` 

### Customizing 
*Tmux* reads its configuration from `~/.tmux.conf` <br/>
If config doesn't exist, you can create it. <br/>
To install plugins: `ctrl + shift + i`

```
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded"
bind-key M split-window -h "nvim ~/.tmux.conf"
```
Thanks to this we can: <br/>
Reload config: `ctrl + b` and `r` <br/>
Open in new split tab *.tmux.conf*: `ctrl + b` and `shift + m`

Mouse mode: <br/>
`set -g mouse on` <br/>
We can select windows and different panels by clicking on them and what is very important (for me) we can resize panles! <br/>

My config is very modest, but enough for me :) <br/>
```
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded"
bind-key M split-window -h "nvim ~/.tmux.conf"
set -g history-limit 5000
setw -g automatic-rename on   # rename window to reflect current program

# Enable mouse mode (tmux 2.1 and above)
set -g mouse on
```




