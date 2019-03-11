#!/usr/bin/env bash
set -euo pipefail

TODO

vscode repo and install
midnight comander
iterm config for mac
httpie

fork via wget

# pip is not installed by default on mac.
sudo easy_install pip

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
# Update homebrew recipes
brew update
brew install bash # Install latest version of Bash.
brew install shellcheck  # Linter for shell scripts
# Configure the new version to be default
# Source: https://github.com/mathiasbynens/dotfiles/issues/544#issuecomment-104935642
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash
# Install new version of bash completion for this

brew install bash-completion@2
# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
brew install ctags
brew install findutils
brew install bat
# fussy finder 
brew install fzf
brew install nmap
brew install ssh-copy-id  # Easy way to set up key based login.
brew install vim  # Better than default vim.
brew install wget


brew tap caskroom/cask                # Tap the Caskroom/Cask repository from Github using HTTPS.


# Useful OS X softwares.
brew cask install visual-studio-code  # Install the given cask.
brew cask install google-chrome 
brew cask install iterm2
brew cask install skype
brew cask install xquartz  # For running X server based apps
brew cask install wireshark

# Install fonts.
brew tap caskroom/fonts
fonts=(
    font-roboto
    font-fira-code
)
echo "Installing fonts..."
brew cask install ${fonts[@]}
brew cleanup