# Used Sofware  
## Desktop, taskbars and popups  
Desktop enverment:  hyprland  
Launcher:           hyprlauncher  
  
## Terminal and command  
Terminal:           kitty  
Terminal shell:     zsh  
  
**`/etc/zsh/zshenv`**
```zsh
if [[ -z "$XDG_CONFIG_HOME"]]
THEN
     export XDG_CONFIG_HOME="$HOME/.config"
fi
if [[ -d "$XDG_CONFIG_HOME/zsh" ]]
then
        export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
fi
```
   
AUR helper:         yay  
  
## Booting and backup  
Snapshots:          snapper  
Bootloader:         limine  

