### How to install
It's very easy, for debian (my case), just in terminal: <br/>
`apt install conky` <br/>
and after this it's worth to consider: <br/>
`apt install conky-all`

To run *conky* just: <br/>
`conky`

Then should appear: <br/>
![image](https://user-images.githubusercontent.com/43972902/125082284-525ef280-e0c7-11eb-9d02-1cc628f63b41.png)

To get rid of the flicker run: <br/>
`conky -b`

### Important directories/files:
1. */etc/conky* - Conky main folder
2. */etc/conky/conky.conf* - Conky configuration file
3. */etc/xdg/autostart* - Folder for autostart files

Of course you can move *conky.conf* to *~/.config* direction, but I don't care
about this.

### How to run Conky at startup
It generally depends on what graphics environment you are using. I'm using
*Mate*, but maybe for the other environment will be the same way or might my 
approach will work. 
<br/>
Inside this folder */etc/xdg/autostart* you will put two files: <br/>
- conky-startup.sh - also you should run command `sudo chmod a+x conky-startup.sh`.
- conky.desktop

##### Files content:
*conky-startup.sh*: <br/>
```
sleep 10 && conky -b
```

*conky.desktop* <br/>
```
[Desktop Entry]
Type=Application
Exec=/etc/xdg/autostart/conky-startup.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=conky
Name=conky
Comment[en_US]=desktop system monitor
Comment=desktop system monitor
```

### conky_old_version.conf
About ten years ago (± 2012) in high school I made my own config. Unfortunately 
with newer version of *conky* the syntax has changed. But anyway, I'll post here
my old config with old screenshot (luckily, I once took a screenshot). <br/>
So... my old config is called *conky_old_version.conf* <br/>
Screenshot below: <br/>
![screemshot](https://user-images.githubusercontent.com/43972902/125206490-dfe94080-e287-11eb-92a2-1340d16c9b29.jpg)

In the screenshot you can see also terminal emulator *tilda* and simple terminal,
perhaps it was gnome-terminal-something.

### TODO
Create a new version of my own config using new syntax. I'll do it, but later... 
;) 
