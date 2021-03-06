# Overview

This repository holds my configuration for VIM and Emacs as well as how to configure them to my liking.

### VIM

Currently, I use neovim. That will need to be installed first:

```
brew install neovim
```

Although vim stores it's configuration in .vimrc, neovim uses a different location. Let's set up the directories needed:

```
mkdir -p ~/.config/nvim
```

Now, we'll symlink our vimrc into a place where neovim can load it:

```
ln -s ~/dot-files/.vimrc ~/.config/nvim/init.vim
```

My current preferred plug-in manager is [vim-plug](https://github.com/junegunn/vim-plug), so we'll need to install that with a few caveats:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```