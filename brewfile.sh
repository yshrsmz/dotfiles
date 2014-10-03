#!/bin/sh
brew update
brew upgrade
brew cleanup

# tap repos
brew tap homebrew/versions
brew tap thoughtbot/formulae
brew tap homebrew/binary
brew tap caskroom/cask
brew tap peco/peco
brew tap jimbojsb/launchrocket

brew install gcc
brew install ios-sim
brew install groovy
brew install gradle
brew install pandoc
brew install imagemagick
brew install node
brew install readline
brew install git
brew install tig
brew install zsh
brew install z
brew install tree
brew install openssl
brew install ruby-build
brew install rbenv
brew install tmux
brew install reattach-to-user-namespace
brew install mercurial
brew install go
brew install ansible
brew install docker
brew install boot2docker

# install from homebrew/versions
brew install subversion17

# install from thoughtbot/formulae
brew install gitsh

# install from homebrew/binary
brew install jad
brew install dex2jar

# install from peco/peco
brew install peco

# install from caskroom/cask
brew install brew-cask

# install from jimbojsb/launchrocket
brew cask install launchrocket

# install via homebrew cask
brew cask install sublime-text
brew cask install charles
brew cask install alfred
brew cask install dropbox
brew cask install teleport
brew cask install bettertouchtool
brew cask install onepassword
brew cask install iterm2
brew cask install path-finder
brew cask install intellij-idea
brew cask install Filezilla
brew cask install Imageoptim
brew cask install Imagealpha
brew cask install Mou
brew cask install appcleaner
brew cask install skype