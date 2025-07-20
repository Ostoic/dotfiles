# My dotfiles
The way to configure my dotfiles is with a program called [GNU stow](https://www.gnu.org/software/stow/). I have my dotfiles set 
up in a modular structure so that one can stow whichever of my dotfiles the desire, instead of being forced to install all
of my dotfiles to their home directory.

## Installing my dotfiles
For each of the desired stow dotfiles directories one wants to install, run the `stow -t ~ $DOTFILES_DIR` command. 
As an example, installing my zsh dotfiles can be accomplished by simply running the `stow -t ~ zsh` command.

## Where to put the dotfiles repo
For sake of convenience, if you put this repo into the `~/dotfiles` location, then instead of needing to specify the stow target
each time you want to install a dotfiles module, you can instead write `stow zsh` for the example of installing my zsh dotfiles.
This is certainly more convenient when you want to install multiple dotfiles directories.

### Install all
Assuming this repo was cloned to `~/dotfiles`, run `ls */ | xargs stow`.


### Uninstall all
Assuming this repo was cloned to `~/dotfiles`, run `ls */ | xargs stow -D`.

