### About
*Tmux* is a terminal multiplexer, which can start a *Tmux* session and then open multiple windows inside that session. Each window occupies the entire screen and can be split into rectangular panes.

### How to install and start
To install *Tmux* run `apt install tmux` <br/>
Starting tmux session: `tmux`. <br/>
All commands in *Tmux* start with a prefix, which by default is `ctrl + b`, for example to get a list of all commands: `ctrl + b` and after this press `?`. <br/>

### Most important shortcuts
By default, Tmux sessions are named numerically. To create a new named session, run: `tmux new -s session_name` <br/>
To detach from Tmux session and return to normal shell: `ctrl + b` and `d` <br/>
o get a list of the currently running sessions: `tmux ls` <br/>
To attach the session: `tmux attach-session -t name_of_session_or_number` <br/>
To create a new window with shell: `ctrl + b` and `c` <br/>
Choose window from a list: `ctrl + b` and `w` <br/>
Rename the current window: `ctrl + b` and `,` <br/>
Split current panel horizontally into two panels: `ctrl + b` and `%` <br/>
Split current panel vertically into two panels: `ctrl + b` and `"` <br/>
Go to the next panel: `ctrl + b` and `o` <br/>
Toggle between the current and previous panel: `ctrl + b` and `;` <br/>
Close the current panel: `ctrl + b` and `x` <br/>

### Customizing 
*Tmux* reads its configuration from `~/.tmux.conf` <br/>
If config doesn't exist, you can create it. <br/>
To install plugins: `ctrl + shift + i`






