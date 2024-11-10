# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/fzf"
plug "Aloxaf/fzf-tab"
plug "Freed-Wu/fzf-tab-source"
plug "zap-zsh/web-search"
plug "atoftegaard-git/zsh-omz-autocomplete"
plug "embeddedpenguin/sanekeybinds"


# Load and initialise completion system
autoload -Uz compinit
compinitexport PATH=$PATH:$HOME/scoop/shims

export PATH=$HOME/scoop/shims/sudo:$PATH
export PATH="C:\\Program Files\\OpenSSH":$PATH
export PATH="C:\\Program Files\\Tailscale":$PATH
export PATH=$PATH:"C:\\Users\\Owner\\scoop\\persist\\rustup\\.cargo\\bin"
export PATH=$PATH:"C:\\Users\\Owner\\AppData\\Local\\Microsoft\\WindowsApps"
export PATH=$PATH:"C:\\Users\\Owner\\AppData\\Local\\Programs\\superfile"
export PATH=$PATH:"C:\\Windows\\System32\\Wbem"

# Handle POSIX symlinks using Windows equivalents (i.e., Junction or SymbolicLink)
export MSYS=winsymlinks:native

#alias vim=nvim

export GIT_EDITOR=vim

if ! which python >/dev/null; then
	alias python=python3
fi

export EDITOR='vim'

source "C:\Users\Owner\AppData\Roaming\dystroy\broot\config\launcher\bash\br"
export PATH=$PATH:"$HOME/scoop/shims"
