# emacs-config

Emacs 24.3.1 Configuration (using Cask)

# Description

Configure emacs for :
 * Cask & Pallet
 * Markdown
 * Python & Python environment auto (TODO)
 * JavaScript

# Requirements

## Cask

    git clone https://github.com/cask/cask.git ~/.cask
    # Add to ~/.bashrc or ~/.bash_aliases
    export PATH=$PATH:~/.cask/bin

# Language Deps

## JavaScript

    # Install last nodejs (ubuntu)
    sudo apt-get install python-software-properties
    sudo apt-add-repository ppa:chris-lea/node.js
    sudo apt-get update
    sudo apt-get install nodejs
    # Using jshint
    sudo npm install jshint -g
    sudo npm install tern -g

## Python

    sudo apt-get install python-flake8 python-virtualenv
    # On Emacs M-X jedi:install-server

# Usage

    git clone https://github.com/gerchardon/emacs-config.git ~/.emacs.d/
    cd ~/.emacs.d/; cask install
    emacs

# Proxy

 * Edit ~/.emacs.d/init.el
 * Python , on emacs jedi:install-server
   * Launch one time emacs with a proxy


# Links

Inspire by :


http://emacsrocks.com/
https://github.com/magnars/.emacs.d

# License

Emacs-config is licensed under the [MIT License](http://www.opensource.org/licenses/mit-license.php).
