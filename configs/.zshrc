# Path to your oh-my-zsh installation
ZSH=$HOME/.oh-my-zsh
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR="/usr/local/share/zsh-syntax-highlighting/highlighters"
ZSH_DISABLE_COMPFIX="true"

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

PATH=${PATH}:/.jenv/bin
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
for file in $HOME/dotfiles/source/*; do
   source "$file"
done

ZSH_THEME="powerlevel9k/powerlevel9k"
source "$HOME"/dotfiles/configs/.powerlevel9k
source "$ZSH"/oh-my-zsh.sh
source "$GOOGLE_CLOUD_SKD_ROOT"/path.zsh.inc
source "$GOOGLE_CLOUD_SKD_ROOT"/completion.zsh.inc
source "$HOME"/.pyenv/completions/pyenv.zsh
source /usr/local/bin/virtualenvwrapper.sh



#pyenv precedence
# The shell Python specified by the PYENV_VERSION environment variable.
# The local Python specified by the .python-version file in the current directory or the parent directories of the current directory.
# The global Python specified by the version file under the pyenv root.
# The system Python.