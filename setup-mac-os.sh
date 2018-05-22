# MacOS setup file
# High Sierra 10.13.4 (17E202)

#########################################
# SSH
#########################################

echo "Creating an SSH"
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub | pbcopy

echo "Add this public key to: \n"
echo "https://github.com/account/ssh \n"
echo "https://gitlab.com/profile/keys \n"
echo "https://bitbucket.org/account/ \n"
read -p "Press [Enter] key after this..."

#########################################
# HOMEBREW
#########################################

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#########################################
# GIT INSTALL AND CONF
#########################################

echo "Installing Git and Config..."
brew install git
git config --global user.name "Diego Almeida"
git config --global user.email "dgralmeida@gmail.com"

echo "Installing brew git utilities..."
brew install git-extras git-flow legit

#########################################
# CLI TOOLS
#########################################

echo "Installing cli tools stuff..."
brew install tree wget trash the_silver_searcher

#########################################
# PYTHON
#########################################

brew install pyenv
pyenv install 2.7.11 -s
pyenv install 3.6.5 -s
pyenv global 2.7.11
eval "$(pyenv init -)"

brew install pipenv
brew install jupyter
brew cleanup

#########################################
# NODE.JS
#########################################

echo "Installing web dev tools"
echo "Nvm..."
brew install nvm
mkdir ~/.nvm

export NVM_DIR="$HOME/.nvm"
source "$(brew --prefix nvm)/nvm.sh"

ecoh "Installing last LTS node version"
nvm install node
nvm install --lts
nvm use --lts

#########################################
# DOT FILES
#########################################
# @TODO

#setup my repo and symlinking function
#echo "Copying dotfiles from Github"
#cd ~
#git clone git@github.com:d/dotfiles.git .dotfiles
#cd .dotfiles
#sh symdotfiles

#########################################
# TERMINAL CONFIG
#########################################

echo "Installing zsh"
brew install zsh zsh-completions zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew cleanup

#########################################
# JKDs
#########################################
brew cask install java
brew cask install java8

brew cleanup
java -version

#########################################
# INSTALL MAC APPS
#########################################
#  apps=(
#    google-chrome
#    visual-studio-code
#    franz
#    macdown
#    docker
# )
apps=(
    google-chrome
    visual-studio-code
    pycharm
    franz
    macdown
    docker
)
brew tap caskroom/versions
brew tap caskroom/cask

echo "installing apps with Cask..."
brew cask install ${apps[@]}
brew cask cleanup
brew cleanup

echo 'Set szh as shell...'
chsh -s $(which zsh)


#========================
# MACOS SETTINGS
#========================
echo "Setting Mac settings..."

# dock orientation
defaults write com.apple.dock 'orientation' -string 'left'

# automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# show indicator lights for open applications
defaults write com.apple.dock show-process-indicators -bool true

# dont create dock thumb on minimize
defaults write com.apple.dock minimize-to-application -bool true

# use Dark menu bar and Dock
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# set function keys as defaults
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool false

# desable smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# doble click on window to maxmize
defaults write NSGlobalDomain AppleActionOnDoubleClick -string "Maximize"

# external display font smoothing
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# allow guests to login to this computer
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false

# Disable "natural" scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Disable swipe between pages
defaults write AppleEnableSwipeNavigateWithScrolls -bool false

# Tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Play iOS charging sound when power is connected
defaults write com.apple.PowerChime ChimeOnAllHardware -bool true && \
  open /System/Library/CoreServices/PowerChime.app &

# -- APP STORE --
# automatically check for updates
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# download newly available updates in the background
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -bool true

# install app updates
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool true

# install macOS updates
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired -bool true

# install system data files and security updates
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall -bool true
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall -bool true