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
zstyle :compinstall filename '$HOME/.config/zsh/.zshrc'
autoload -Uz compinit
compinit

# Aliases
alias ls='eza --no-quotes -lah --group-directories-first'
alias c='bat'
alias x='clean && exit'
alias i7z='sudo i7z'
alias ufw='sudo ufw'
alias Syu='sudo pacman -Syu'
alias Rnsu='sudo pacman -Rnsu'
alias S='sudo pacman -S'
alias Ss='pacman -Ss'
alias Qs='pacman -Qs'
alias orphans='sudo pacman -Rns $(pacman -Qqdt)'
alias deps='pacman -Qii'
alias nordc='sudo systemctl start nordvpnd.service && nordvpn connect Buffalo'
alias nordd='nordvpn disconnect && sudo systemctl stop nordvpnd.service' 
alias hist='history -f 1'
alias v='nvim'
alias sv='sudo -E -s nvim'
alias rb='clean && sudo reboot'
alias sx='startx -- -keeptty > ~/.cache/xorg/xerr.log 2>&1'
alias liquidctl='sudo liquidctl'
alias nap='cleansus'
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
alias fast='sudo bat /var/log/suricata/fast.log'
alias notes='nvim ~/misc/notes/notes'
alias restart='systemctl restart'
alias dupes='fdupes --order=time -irdN'
alias sd='clean && sudo poweroff'
alias crop='ffautocrop'
alias ffp='ffprobe'
alias d2='cd /mnt/media/notes/d2-notes'
alias p='nomacs'
alias code='cd ~/misc/code'
alias ..='.. && ls'
alias cam='gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -pix_fmt yuv420p -threads 16 -r 30 -s 1920x1080 -f v4l2 /dev/video0'
alias camcheck='mpv av://v4l2:/dev/video0 --profile=low-latency --untimed'
alias mirrors='sudo reflector --country US --protocol http,https --latest 10 --sort rate --save /etc/pacman.d/mirrorlist'
alias cnotes='nvim ~/misc/notes/C++_Notes.txt'
alias zconf='nvim ~/.config/zsh/.zshrc'
alias cam2='gphoto2 --stdout --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 16 -r 30 -s 1920x1080 -f v4l2 /dev/video0'
alias scripts='cd ~/.config/scripts'
alias zprof='nvim ~/.config/zsh/.zprofile'
alias xlog='bat ~/.local/share/xorg/Xorg.0.log'
alias xerr='bat ~/.cache/xorg/xerr.log'
alias cast='castnow --address 192.168.1.123 --loop'
alias itnotes='nvim ~/misc/notes/itnotes'
alias res='xrandr --output DP-4 --mode 3840x2160 --rate 120'

cd() { builtin cd "$@" && ls }

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

# Window Title
precmd() { print -Pn "\e]2;%~\a" }
