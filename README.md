# Used Sofware  
## Desktop, taskbars and popups  
Desktop enverment:  hyprland  
Launcher:           hyprlauncher  
Texteditor:         Neovim   
fetch:              fastfetch

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
CD rember:          zoxide   
Fuzzy finder:       fzf  
Utils:              eza, fd, ripgrep, bat    
zsh skin:           starship   
AUR helper:         yay  
  
## Booting and backup  
Snapshots:          snapper  
Bootloader:         limine  

## To Do
[ X ] Edit fastfetch config to have label   
[ ] Learn more of quickshell   
[ ] Make own waybar   
[ ] Make launch   
[ ] Make controlcenter   
[ ] Make notificationcenter   
