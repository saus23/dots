# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
bindkey -v

# Hist options
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

# The following lines were added by compinstall
zstyle :compinstall filename '/home/saus/.config/zsh/.zshrc'
autoload -Uz compinit
compinit

# Aliases
alias ls='exa -lah --group-directories-first'
alias c='bat'
alias x='clean && exit'
alias btop='bpytop'
alias i7z='sudo i7z'
alias ufw='sudo ufw'
alias Syu='sudo pacman -Syu'
alias Rnsu='sudo pacman -Rnsu'
alias S='sudo pacman -S'
alias Ss='pacman -Ss'
alias Qs='pacman -Qs'
alias orphans='sudo pacman -Rns $(pacman -Qqdt)'
alias deps='pacman -Qii'
alias nordc='nordvpn connect'
alias nordd='nordvpn disconnect'
alias hist='history 1'
alias v='vim'
alias sv='sudo vim'
alias rb='killall dbus-daemon && sudo reboot'
alias sx='startx'
alias mnt='sudo mount -o discard /dev/sda /mnt/media'
alias umnt='sudo umount /mnt/media'
alias liquidctl='sudo liquidctl'
alias res='xrandr --output DP-4 --mode 3840x2160 --rate 119.91'
alias nap='systemctl suspend'
alias B='cd /mnt/media'
alias neo='neofetch'
alias fail='sudo systemctl list-units --failed'
alias status='sudo systemctl status'
alias daemon-reload='sudo systemctl daemon-reload'
alias r='. ranger'
alias pdf='evince'
alias nv-set='nvidia-settings --config=~/.config/nvidia/settings/.nvidia-settings-rc'
alias jlog='journalctl --no-pager -b -1 > journal.log'
alias jctl='journalctl'
alias updb='sudo updatedb'
alias calc='bc --mathlib'
alias smi='nvidia-smi'
alias headset='pactl set-default-sink 0 && kill -44 $(pidof dwmblocks)'
alias speakers='pactl set-default-sink 1 && kill -44 $(pidof dwmblocks)'
alias fast='sudo vim /var/log/suricata/fast.log'
alias notes='vim ~/misc/notes/notes'
alias restart='systemctl restart'
alias dupes='fdupes --order=time -irdN'
alias cache='sudo paccache -ruk 1'
alias sd='killall dbus-daemon && sudo poweroff'
alias tera="cd ~/Games/tera/drive_c/Program\ Files/Menma\'s\ TERA/proxy/mods"
alias tb="cd ~/.local/share/wineprefixes/default/drive_c/Program\ Files/TeraToolbox"
alias handbrake="flatpak run fr.handbrake.ghb"

# Variables
export STARSHIP_CONFIG=~/.config/starship.toml
export KEYTIMEOUT=1

# Auto-suggestion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

colorscript random

# Starship
eval "$(starship init zsh)"

# Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Path
#export PATH=$HOME/.config/scripts:$HOME/bin:$HOME/.local/bin:$HOME/.local/share/bin:$HOME/misc/appimages:$PATH

# Variables
#export EDITOR='vim'
#export BROWSER='/usr/bin/brave'
#export MANGOHUD=1
#export MANGOHUD_DLSYM=1
#export COREHOST_TRACE=1
