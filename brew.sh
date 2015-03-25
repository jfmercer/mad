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
myBrew=( bash bash-completion brew-cask  colordiff curl homebrew/php/composer coreutils cowsay fortune git python python3 ssh-copy-id subversion tig tree "vim --override-system-vi --with-python3" wget zsh zsh-completion zsh-syntax-highlighting )

# Array list of dupes to install
myDupes=( awk bzip2 grep gzip less make openssh tidy unzip whois )

# Write a PHP Install Script
# "php53 --with-gmp --with-homebrew-curl --with-imap --with-postgresql --with-tidy" php53-apc php53-memcache php53-oauth php53-opcache php53-mcrypt php53-varnish php53-xcache php53-xdebug
# "php54 --with-gmp --with-homebrew-curl --with-imap --with-phpdebug--with-postgresql --with-tidy" php54-apc php54-memcache php54-oauth php54-opcache php54-mcrypt php54-varnish php54-xcache php54-xdebug
# "php55 --with-gmp --with-homebrew-curl --with-imap --with-phpdebug--with-postgresql --with-tidy" php55-apc php55-memcache php55-oauth php55-opcache php55-mcrypt php55-varnish php55-xcache php55-xdebug
# "php56 --with-gmp --with-homebrew-curl --with-imap --with-phpdebug--with-postgresql --with-tidy" php56-apc php56-memcache php56-oauth php56-opcache php56-mcrypt php56-varnish php56-xcache php56-xdebug

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
