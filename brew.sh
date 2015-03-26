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
echo "Grabbing Dupes and PHP"
brew tap homebrew/dupes
brew tap homebrew/php

# Array list of Homebrew formulae to install
myBrew=( bash bash-completion brew-php-switcher colordiff homebrew/php/composer coreutils cowsay fortune git mcrypt mysql python python3 ssh-copy-id subversion tig tree "vim --override-system-vi --with-python3" wget zsh zsh-completion zsh-syntax-highlighting )

# Array list of dupes to install
myDupes=( awk bzip2 grep gzip less make openssh tidy unzip whois )

# Install all PHPs
brew install php53 php53-mcrypt php53-oauth php53-xdebug php54 --with-phpdebug php55 --with-phpdebug php56 --with-phpdebug && brew unlink php56 && brew link php54 && brew install php54-mcrypt php54-oauth php54-xdebug && brew unlink php54 && brew link php55 && brew install php55-mcrypt php55-oauth php55-xdebug && brew unlink php55 && brew link php56 && brew install php56-mcrypt php56-oauth php56-xdebug

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
