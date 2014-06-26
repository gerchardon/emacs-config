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

    aptitude install python-virtualenv
    # On Emacs M-X jedi:install-server

## Flycheck

### JavaScript

    # Using jslint
    aptitude install closure-linter
    # Using jshint
    # TODO ....

### Python

    aptitude install python-flake8


# Usage

    git clone https://github.com/gerchardon/emacs-config.git ~/.emacs.d/
    cask install
    emacs

# Proxy

 * Edit ~/.emacs.d/init.el
 * Cask Install
   * Need a squi proxy without password
 * Python , on emacs jedi:install-server
   * Launch one time emacs with a proxy


# License

Emacs-config is licensed under the [MIT License](http://www.opensource.org/licenses/mit-license.php).


