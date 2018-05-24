# Path to your oh-my-zsh installation.
ZSH_THEME="powerlevel9k/powerlevel9k"
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


PATH=${PATH}:/usr/local/opt/coreutils/libexec/gnubin
PATH=${PATH}:/usr/local/opt/coreutils/libexec/gnuman
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

for file in $HOME/dotfiles/env/*; do
   source "$file"
done

if (( $+commands[tag] )); then
	tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null }
	alias ag=tag
fi

#source  /Users/dgralmeida/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme
source "$GOOGLE_CLOUD_SKD_ROOT"/path.zsh.inc
source "$GOOGLE_CLOUD_SKD_ROOT"/completion.zsh.inc
source /usr/local/bin/virtualenvwrapper.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
