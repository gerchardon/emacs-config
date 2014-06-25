# emacs-config

Emacs 24.3.1 Configuration (using Cask)

# Description

Configure emacs for :
 * Cask & Pallet
 * Markdown
 * Python (TODO)
 * JavaScript (TODO)


# Module Requirements

## Cask

    git clone https://github.com/cask/cask.git ~/.cask
	# Add to bashrc
	export PATH=$PATH:~/.cask/bin

## Python

    aptitude install python-virtualenv python-flake8
    # On Emacs M-X jedi:install-server

## Flycheck

### JavaScript

    # Using jslint
    aptitude install closure-linter
    # Using jshint
    # TODO ....


# Usage

    git clone https://github.com/gerchardon/emacs-config.git ~/.emacs.d/
    cask install
    emacs

# License

Emacs-config is licensed under the [MIT License](http://www.opensource.org/licenses/mit-license.php).


