# paths
export ZDOTDIR=${ZDOTDIR:-$HOME/.config/zsh}
export CARGO_HOME=~/.cache/.cargo
export RUSTUP_HOME=~/.cache/.rustup
export GNUPGHOME=~/.cache/.gnupg
export JAVA_HOME=~/.cache/java
export CUDA_CACHE_PATH=~/.cache/nv/ComputeCache
export MANGOHUD_CONFIGFILE=~/.config/MangoHud/MangoHud.conf
export WINEPREFIX=~/.local/share/wineprefixes/default
export GTK2_RC_FILES=~/.config/gtk-2.0/gtkrc
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}
export CONDARC=~/.config/conda/.condarc
export VSCODE_PORTABLE=~/.local/share/vscode
export __GL_SHADER_DISK_CACHE_PATH=~/.cache/nv
export VKBASALT_CONFIG_FILE=~/.config/vkBasalt/vkBasalt.conf
export IDAUSR=~/.config/idapro
export AUDIBLE_CONFIG_DIR=~/.config/audible

export PATH=$HOME/.config/scripts:$HOME/bin:$HOME/.local/bin:$HOME/.local/share/bin:$HOME/misc/appimages:/opt/cuda:$PATH

# variables
export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
export TERMINAL=st
export EDITOR=nvim
export BROWSER=librewolf
export CUDA_CACHE_DISABLE=0
export CUDA_CACHE_MAXSIZE=4294967296
export GTK_THEME=Gruvbox-Material-Dark
export QT_QPA_PLATFORMTHEME=gtk2
export QT_STYLE_OVERRIDE=Gruvbox-Material-Dark
export LIBVA_DRIVER_NAME=nvidia
export VDPAU_DRIVER=nvidia
export NVD_BACKEND=direct
export MOZ_DISABLE_RDD_SANDBOX=1
export MOZ_X11_EGL=1
export RANGER_LOAD_DEFAULT_RC=false
export BAT_THEME=gruvbox-dark

# vim shit
export VIMINIT='let $MYVIMRC = has("nvim") ? "$XDG_CONFIG_HOME/nvim/init.lua" : "$XDG_CONFIG_HOME/vim/vimrc" | so $MYVIMRC'

#Autostart X with display manager
#if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty2" ]; then
#  exec startx
#fi
