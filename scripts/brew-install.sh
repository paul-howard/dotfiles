#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install formulae
brew install ack
brew install archey
brew install asciinema
brew install awscli
brew install casperjs
brew install chromedriver
brew install cowsay
brew install docker
brew install ffmpeg
brew install figlet
brew install git
brew install git-extras
brew install heroku-toolbelt
brew install htop
brew install hub
brew install legit
brew install mackup
brew install macvim
brew install mariadb
brew install mongodb
brew install nginx
brew install nyancat
brew install phantomjs
brew install postgresql
brew install redis
brew install rename
brew install rig
brew install speedtest_cli
brew install sqlformat
brew install sqlite
brew install the_silver_searcher
brew install thefuck
brew install tig
brew install tmux
brew install toilet
brew install trash
brew install tree
brew install vim
brew install watch
brew install watchman
brew install youtube-dl
brew install zsh

# Install cask
# brew install caskroom/cask/brew-cask

# Install cask formulae

brew tap caskroom/versions

brew cask install 1password
brew cask install alfred
brew cask install appcleaner
brew cask install atom
brew cask install bartender
brew cask install busycal
brew cask install busycontacts
brew cask install couleurs
brew cask install dash
brew cask install devonthink-pro-office
brew cask install dockertoolbox
brew cask install dropbox
brew cask install duet
brew cask install evernote
brew cask install flux
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install imageoptim
brew cask install iterm2-beta
brew cask install itsycal
brew cask install lingo
brew cask install mongochef
brew cask install moom
brew cask install postgres
brew cask install prey
brew cask install sequel-pro
brew cask install skyfonts
brew cask install slack
brew cask install spillo
brew cask install superduper
brew cask install terminology
brew cask install the-hit-list
brew cask install transmit
brew cask install virtualbox

brew cask install betterzipql
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install suspicious-package

brew tap caskroom/fonts

brew cask install font-anonymous-pro
brew cask install font-dejavu-sans
brew cask install font-hermit
brew cask install font-inconsolata
brew cask install font-input
brew cask install font-source-code-pro


# Install `wget` with IRI support.
# brew install wget --with-iri

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
# brew install node

# Remove outdated versions from the cellar.
brew cleanup
