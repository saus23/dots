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
export DESKTOP_SESSION=/usr/share/xsessions/dwm.desktop

export PATH=$HOME/.config/scripts:$HOME/bin:$HOME/.local/bin:$HOME/.local/share/bin:$HOME/misc/appimages:/opt/cuda/bin:$PATH


# variables
#export MANGOHUD=1
#export MANGOHUD_DLSYM=1
export TERMINAL='st'
export EDITOR='vim'
export BROWSER='brave'
export CUDA_CACHE_DISABLE=0
export CUDA_CACHE_MAXSIZE=4294967296
export GTK_THEME=Gruvbox-Material-Dark
export QT_QPA_PLATFORMTHEME=gtk2

# vim shit
export GVIMINIT='let $MYGVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/gvimrc" : "$XDG_CONFIG_HOME/nvim/init.gvim" | so $MYGVIMRC'
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.vim" | so $MYVIMRC'
