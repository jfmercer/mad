#!/bin/bash

# Make sure we're on a Mac
if [[ "$OSTYPE" =~ ^darwin ]]; then
    echo "Since this is a Mac, let's roll Homebrew."
else
    echo "This ain't a Mac! Exiting now."
    exit 0
fi

# Update Homebrew formulae & upgrade existing packages
echo "Updating Homebrew and upgrading existing packages"
brew update && brew upgrade

# Grab duplicate formulae
echo "Grabbing Dupes, PHP, and brew-cask"
brew tap homebrew/dupes
brew tap homebrew/php
brew tap caskroom/cask

# Array list of Homebrew formulae to install
myBrew=( bash bash-completion brew-cask  colordiff  homebrew/php/composer coreutils cowsay fortune git "php56 --with-gmp --with-phpdbg" php56-xdebug php56-mcrypt python python3 ssh-copy-id subversion tig tree "vim --override-system-vi" wget zsh zsh-completion zsh-syntax-highlighting )

# Array list of dupes to install
myDupes=( awk bzip2 grep gzip less make openssh tidy unzip whois )

# Run installs
echo "Installing packages"
for i in ${myBrew[*]}
do
    brew install $i
done

echo "Installing duplicate packages"
for i in ${myDupes[*]}
do
    brew install $i
done

# Clean up the Cellar
brew cleanup

echo "All done!"