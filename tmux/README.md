*Tmux* is a terminal multiplexer, which can start a *Tmux* session and then open multiple windows inside that session. Each window occupies the entire screen and can be split into rectangular panes.

To install *Tmux* run `apt install tmux` <br/>
Starting tmux session: `tmux`. <br/>
All commands in *Tmux* start with a prefix, which by default is `ctrl + b`, for example to get a list of all commands: `ctrl + b` and after this press `?`. <br/>
By default, Tmux sessions are named numerically. To create a new named session, run: <br/>
`tmux new -s session_name` <br/>

To detach from Tmux session and return to normal shell: `ctrl + b` and `d` <br/>
o get a list of the currently running sessions: `tmux ls` <br/>
To attach the session: `tmux attach-session -t name_of_session_or_number` <br/>
To create a new window with shell: `ctrl + b` and `c` <br/>
Choose window from a list: `ctrl + b` and `w` <br/>





