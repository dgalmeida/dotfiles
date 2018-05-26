#########################################
# Personal
#########################################

export PROJECT_HOME=$HOME/Projects
export SSH_KEY_PATH="~/.ssh/rsa_id"

#########################################
# History
#########################################
export HISTSIZE=32768; # Larger bash history (allow 32³ entries; default is 500)
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"; # Make some commands not show up in history

#########################################
# Language
#########################################
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";

#########################################
# Conf
#########################################
export EDITOR="code";
export MANPAGER="less -X";
export GREP_OPTIONS="--color=auto";
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

#########################################
# zsh-specific
#########################################
# If querying the user before executing ‘rm *’ or ‘rm path/*’,
# first wait ten seconds and ignore anything typed in that time.
# This avoids the problem of reflexively answering ‘yes’ to the query when
# one didn’t really mean it. The wait and query can always be avoided by
# expanding the ‘*’ in ZLE (with tab).
setopt RM_STAR_WAIT

#########################################
# Python PATH
#########################################
export PYENV_ROOT_SHIMS="$(pyenv root)/shims"
export PYENV_ROOT=$HOME/.pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VERSION="2.7.11"
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
export WORKON_HOME=$HOME/.virtualenvs
. /usr/local/bin/virtualenvwrapper.sh

#google sdk home | appengine core packages | appengine dev libs
GOOGLE_CLOUD_SKD_ROOT=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
PYTHONPATH=${PYTHONPATH}:${GOOGLE_CLOUD_SKD_ROOT}
PYTHONPATH=${PYTHONPATH}:${GOOGLE_CLOUD_SKD_ROOT}/platform/google_appengine
PYTHONPATH=${PYTHONPATH}:${GOOGLE_CLOUD_SKD_ROOT}/platform/google_appengine/google/appengine/lib
PYTHONPATH=${PYTHONPATH}:${GOOGLE_CLOUD_SKD_ROOT}/platform/google_appengine/google/appengine/google
PYTHONPATH=${PYTHONPATH}:${GOOGLE_CLOUD_SKD_ROOT}/google/appengine
export PYTHONPATH=${PYTHONPATH}

#########################################
# Node nvm_dir
#########################################
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# @ODO
# FIX gLAPTOP

# sudo chown -R $(whoami) /usr/local/etc /usr/local/sbin /usr/local/share /usr/local/share/doc (before install brew)
# install python from brew
# brew cask install google-cloud-sdk
# gcloud components install app-engine-python

# to setup vscode project specific create symbolic link to gcloud sdk platafrom as defined on __init___ of tests:
# sudo ln -s /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/ /opt/citools/