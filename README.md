# emacs-config

Emacs 24.3.1 Configuration (using Cask)

# Description

Configure emacs for :
 * Cask & Pallet
 * Markdown
 * Python & Python environment auto (TODO)
 * JavaScript


# Module Requirements

## Cask

    git clone https://github.com/cask/cask.git ~/.cask
    # Add to bashrc
    export PATH=$PATH:~/.cask/bin

## Python

    sudo apt-get install python-virtualenv
    # On Emacs M-X jedi:install-server

## Flycheck

### JavaScript

    # Using jshint
    sudo npm install jshint -g

### Python

    sudo apt-get install python-flake8


# Usage

    git clone https://github.com/gerchardon/emacs-config.git ~/.emacs.d/
    cask install
    emacs

# Proxy

 * Edit ~/.emacs.d/init.el
 * Python , on emacs jedi:install-server
   * Launch one time emacs with a proxy


# License

Emacs-config is licensed under the [MIT License](http://www.opensource.org/licenses/mit-license.php).


