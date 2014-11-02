# zwaldowski does dotfiles

## dotfiles

Your dotfiles are how you personalize your system. These are mine.

Inspired by @holman's [dotfiles](https://github.com/holman/dotfiles) and
@msanders' [dotfiles](https://github.com/msanders).

## install

Run this:

```sh
pip install cider
git clone --recursive https://github.com/msanders/dotfiles ~/.cider
cider restore
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.cider`.
