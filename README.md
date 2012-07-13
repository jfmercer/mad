     _______  _______  ______  
    (       )(  ___  )(  __  \ 
    | () () || (   ) || (  \  )
    | || || || (___) || |   ) |
    | |(_)| ||  ___  || |   | |
    | |   | || (   ) || |   ) |
    | )   ( || )   ( || (__/  )
    |/     \||/     \|(______/ 

# My Awesome Dotfiles
This is a collection of my dotfiles. I hope you find them as helpful as I do. 

## Installation
Clone the respository, and then symlink the files to the home directory. I plan
to add a script later on to automate the symlink process. 

## Git
### User Info
I followed [Yan Pritzker's advice](http://skwp.github.com/dotfiles/#git) and
set git user info as env variables in .secrets, which is loaded in 
.bash_profile.

    # Set your git user info
    export GIT_AUTHOR_NAME='Your Name'
    export GIT_AUTHOR_EMAIL='you@domain.com'
    export GIT_COMMITTER_NAME='Your Name'
    export GIT_COMMITTER_EMAIL='you@domain.com'

    # Optionally, set your GitHub credentials
    export GITHUB_USER='your_user_name'
    export GITHUB_TOKEN='your_github_token'
### Helpful Git Aliases
Find and edit them under .gitconfig. 

## Credits
I lean very heavily on the work of these outstanding gentlemen
* [Mathias Bynens](http://mathiasbynens.be/) and his [outstanding collection of
  dotfiles](https://github.com/mathiasbynens/dotfiles). 
* [Zach Holman](http://zachholman.com/) and his
  [dotfiles](https://github.com/holman/dotfiles)
* [Yan Pritzker](http://yanpritzker.com/) and his [amazing
  dotfiles](http://skwp.github.com/dotfiles/)
