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
brew install watch
brew install htop
brew install tree
brew install git
brew install docker
brew install thefuck
brew install nginx

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
