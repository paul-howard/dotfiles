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
brew install archey
brew install cowsay
brew install docker
brew install ffmpeg
brew install figlet
brew install git
brew install git-extras
brew install heroku-toolbelt
brew install htop
brew install hub
brew install lame
brew install legit
brew install libcaca
brew install libevent
brew install libgpg-error
brew install libksba
brew install libtool
brew install libyaml
brew install lua
brew install mackup
brew install macvim
brew install mariadb
brew install mongodb
brew install ncdu
brew install nginx
brew install nginx
brew install nyancat
brew install openssl
brew install pcre
brew install pkg-config
brew install postgresql
brew install readline
brew install redis
brew install speedtest_cli
brew install sqlite
brew install thefuck
brew install tig
brew install tmux
brew install toilet
brew install trash
brew install tree
brew install tree
brew install unar
brew install vim
brew install watch
brew install watchman
brew install x264
brew install xvid
brew install youtube-dl


# Install cask
# brew install caskroom/cask/brew-cask

# Install cask formulae
brew cask install google-chrome
brew cask install iterm2

brew cask install dashlane
brew cask install sequel-pro
brew cask install virtualbox

# Install `wget` with IRI support.
# brew install wget --with-iri

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
# brew install node

# Remove outdated versions from the cellar.
brew cleanup
