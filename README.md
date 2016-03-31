

>**These are my dotfiles. there are many like them, but these ones are mine. My dotfiles are my best friend. They are my life. [I must master them](https://en.wikipedia.org/wiki/Rifleman%27s_Creed) as I must master my life. I will...**

OK, maybe that's going overboard a bit, but I do think it's important to have a solid understanding of the tools one uses, and to strive toward mastery of said tools. In that spirit, I put my these configuration files here to increase my own knowledge of them, and to make them available for others. (Not that I really think anyone else is at all interested, mind you, but you never know.)

## Environment
These files are specific to my own preferred OS X configuration. No effort has been made to make them platform agnostic or tailored to anyone's preferences but mine. I use [`oh-my-zsh`](http://ohmyz.sh/) in the terminal and [`brew`](http://brew.sh/) and [`brew-cask`](https://caskroom.github.io/) to install applications and dependencies.

## How to Use
**Important:** If you're not me, I highly suggest you use this repo only as an example of how one other random dude on the internet likes to organize his config files and perhaps pick up a few ideas for how to organize your own. If you *are* me (hi, me!), follow the instructions below.

Clone the repo to your home dir:
```
> git clone phoward/.dotfiles ~/.dotfiles
```

Run the install script:
```
> cd ~/.dotfiles; ./install
```

## A Note on Submodules
Any dependencies not already being handled by a package manager (e.g. zsh plugins/themes) can be added as a git submodule.

Anything included as a git submodule will be updated to the latest version and symlinked into place by the install script. After running the install script, it's good practice, therefore, to `git commit` and `git push` back to origin with these changes. This will help ensure that the submodule versions in master repo don't get too ancient.


Adding a submodule (example):
```
git submodule add https://github.com/djui/alias-tips zsh/plugins/alias-tips
```

Linking a submodule (in install.conf.yaml):
```
- link:
    ~/.oh-my-zsh/custom/plugins/alias-tips: zsh/plugins/alias-tips
```

Removing a submodule (example):
```
git rm... (look this up)
```

## To Do
- [x] Figure out why zsh submodules aren't installing correctly. Must be doing something wrong.
- [ ] Figure out proper procedure for removing a submodule.
- [ ] Include additional install scripts for apps and utilities handled by brew and brew-cask, and to optimize various OS X settings.
- [ ] Massively upgrade and refactor my zsh settings.
- [ ] Upgrade and refactor my git settings
- [ ] Include atom settings in install script

## Thanks
This repo makes use of [dotbot](https://github.com/anishathalye/dotbot) to provide a simple and robust method to easily replicate these files onto any OS X machine.
