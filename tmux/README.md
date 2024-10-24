### About
*Tmux* is a terminal multiplexer, which can start a *Tmux* session and then
open multiple windows inside that session. <br/>
Project website: https://github.com/tmux/tmux

### How to install and start
To install *Tmux* run `apt install tmux` <br/>
Starting tmux session: `tmux`. <br/>
All commands in *Tmux* start with a prefix, which by default is `ctrl + b`

### Most important shortcuts
To create a new named session: `tmux new -s session_name` <br/>
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
Close the current panel: `ctrl + b` and `x`.
Reload config using `ctrl + b` and `r`: <br/>

##### Copy - Paste
Enter *copy mode*: `ctrl + b` and `[` <br/>
Then use the arrow keys to go to the position from where you want to start
copying. <br/>
`ctrl + space` to start copying. <br/>
Save marked text: `ctrl + w` <br/>
Paste the selected text: `ctrl + b` and `]`

### Customizing
*Tmux* reads its configuration from `~/.tmux.conf` <br/>
If config doesn't exist, you can create it. <br/>
There are plugins for tmux, but I'm not using any.

| |
|:--:|
| ![Screenshot_2021-07-02 Screenshot at 2021-07-02 20-23-49 png (PNG Image, 3286 × 1200 pixels) – Scaled (58%)](https://user-images.githubusercontent.com/43972902/124315141-c94e3580-db73-11eb-95c4-cda78616d514.png) |
| The final appearance of the terminal window divided into three parts, with the text selected. |
