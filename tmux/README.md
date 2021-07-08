### About
*Tmux* is a terminal multiplexer, which can start a *Tmux* session and then
open multiple windows inside that session. Each window occupies the entire 
screen and can be split into rectangular panes.

Project website: https://github.com/tmux/tmux

### How to install and start
To install *Tmux* run `apt install tmux` <br/>
Starting tmux session: `tmux`. <br/>
All commands in *Tmux* start with a prefix, which by default is `ctrl + b`, 
for example to get a list of all commands: `ctrl + b` and after this press `?`.

### Most important shortcuts
By default, Tmux sessions are named numerically. To create a new named session,
run: `tmux new -s session_name` <br/>
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
To install plugins: `ctrl + shift + i`, but in this project I'm not using any
plugin for tmux.

Reload config using `ctrl + b` and `r`: <br/>
```
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded"
```

Open in new split tab .tmux.conf: `ctrl + b` and `shift + m`: <br/>
```
bind-key M split-window -h "nvim ~/.tmux.conf"
```

Thanks to mouse mode we can select windows and different panels by clicking on 
them and what is very important (for me) we can resize panles! <br/>
```
set -g mouse on
```

Change color of inactive/active window: <br/>
```
set -g window-style 'fg=colour247,bg=colour236'
set -g window-active-style 'fg=colour250,bg=black'
```

Setting the pane border colors: <br/> 
```
set -g pane-border-style 'fg=colour235,bg=colour238' 
set -g pane-active-border-style 'fg=colour151,bg=colour238'
```

Change the colors of the bottom bar: <br/>
```
set -g status-bg colour240
set -g status-fg colour248
```

Change color during selection text: <br/>
```
set -wg mode-style fg=colour138
```

| |
|:--:|
| ![Screenshot_2021-07-02 Screenshot at 2021-07-02 20-23-49 png (PNG Image, 3286 × 1200 pixels) – Scaled (58%)](https://user-images.githubusercontent.com/43972902/124315141-c94e3580-db73-11eb-95c4-cda78616d514.png) |
| The final appearance of the terminal window divided into three parts, with the text selected. |

### Config
Below is my complete config, which is very modest, but enough for me :) <br/>
```
# For reload config
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded"

# For easier access to config
bind-key M split-window -h "nvim ~/.tmux.conf"

# Larger history
set -g history-limit 5000 

# Rename window to reflect current program
setw -g automatic-rename on

# Enable mouse mode (tmux 2.1 and above)
set -g mouse on

# Set inactive/active window styles
set -g window-style 'fg=colour247,bg=colour236'
set -g window-active-style 'fg=colour250,bg=black'

# Set the pane border colors 
set -g pane-border-style 'fg=colour235,bg=colour238' 
set -g pane-active-border-style 'fg=colour151,bg=colour238'

# Change the colors of the bottom bar
set -g status-bg colour240
set -g status-fg colour248

# Change selection color
set -wg mode-style fg=colour138

# Allow vim to use its background color
set -g default-terminal "screen-256color"
set -ga terminal-overrides ",*256col*:Tc"
```
