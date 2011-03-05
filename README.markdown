# KBA-KBA does dotfiles

It is fork [Zach Holman](http://github.com/holman)' [dotfiles](http://github.com/holman/dotfiles)

## dotfiles

Your dotfiles are how you personalize your system. These are mine. The very
prejudiced mix: OS X, Linux, zsh, Ruby, Rails, git, homebrew, rvm, vim. If you
match up along most of those lines, you may dig my dotfiles.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read my post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## install

- `git clone git://github.com/kbakba/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `make install`

The install Makefile task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `make install`.