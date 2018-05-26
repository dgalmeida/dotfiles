# Path to your oh-my-zsh installation.
ZSH_THEME="powerlevel9k/powerlevel9k"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR="/usr/local/share/zsh-syntax-highlighting/highlighters"
ZSH_DISABLE_COMPFIX="true"
HOMEBREW_NO_AUTO_UPDATE=1
unsetopt nomatch
setopt APPEND_HISTORY
setopt INTERACTIVE_COMMENTS

fpath=(/usr/local/share/zsh-completions $fpath)

plugins=(
	brew
	brew-cask
	git
	git-extras
	z
	zsh-syntax-highlighting
)

PATH=${PATH}:/usr/local/opt/go/libexec/bin
PATH=${PATH}:/usr/local/opt/openssl/bin
PATH=${PATH}:/usr/local/opt/sqlite/bin
PATH=${PATH}:$(pyenv root)/shims
PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/bin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/usr/local/git/bin
PATH=${PATH}:/usr/local/bin/charm
PATH=${PATH}:/usr/local/sbin
PATH=${PATH}:"$HOME"/.yarn/bin
export PATH=${PATH}

#sourcing
for file in $HOME/dotfiles/sourced/*; do
   source "$file"
done

source "$GOOGLE_CLOUD_SKD_ROOT"/path.zsh.inc
source "$GOOGLE_CLOUD_SKD_ROOT"/completion.zsh.inc
source /usr/local/bin/virtualenvwrapper.sh
