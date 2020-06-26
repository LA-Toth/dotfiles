My dot files
============

The repository contains all of my ~/.something files:

Configs for:
* bash
* emacs
* git
* vim (mostly from about 2008)


The layout:
===========

/dot: the directory of the files without leading dot.
/bin: helper scripts, to install into ~/bin

/install.sh: the installer script


Install:
========

Run: ``<repo-root>/install.sh``

This backs up existing non-symlink files or directories with the target name, eg.
.gitconfig becomes .gitconfig.$TIMESTAMP.bak

The symlinks are forcibly overwritten.`

To test it, run with parameter, eg:

<repo-root>/install.sh /path/to/somewhere

The target directory is created if does not exist, and the script does everything as it would
do in the home directory.


Git config:
===========

The ~/.gitconfig includes two git configs at the end of the config:
* ~/.config/dotfiles/private/.gitconfig
* ~/.config/dotfiles/work/.gitconfig

where the username and the email must be stored, and work-specific settings.
In current setup the 'work' git repos are in ~/git/work or ~/src/work directories, where the lower-
and uppercase letters are the same, so ~/git/Work is also valid.
