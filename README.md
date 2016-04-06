


>**These are my dotfiles.**
>
>**There are many like them, but these ones are mine.**
>
>**My dotfiles are my best friend. They are my life.**
>
>**I must master them as I must master my life.**
>
>**[I will](https://en.wikipedia.org/wiki/Rifleman%27s_Creed)...**


OK, that might be a bit overboard, but I do think it's important to have a solid understanding of the tools one uses, and to strive toward mastery of said tools.

In that spirit, this project exists mainly to increase my own knowledge, but also to serve as an example to others (if only a bad one, perhaps).

## How to Use
#### If you ARE NOT me:
If you're anyone other than me, I highly suggest you use this repo only as an example of how one other random dude on the internet likes to organize his config files and perhaps pick up a few ideas for how to organize your own.

No effort has been made to make these settings platform agnostic or tailored to anyone's preferences but my own.

#### If You ARE Me:
Hi, me!

Clone the repo to your home dir:
```
> git clone phoward/.dotfiles ~/.dotfiles
```

Run the install script:
```
> cd ~/.dotfiles; ./install
```

## A Note on Submodules
Any dependencies not already being handled by a package manager (e.g., oh-my-zsh plugins and themes) can be added as a git submodule.

Anything included as a git submodule will be updated to the latest version and symlinked into place by the install script. After running the install script, it's good practice, therefore, to `git commit` and `git push` back to origin with these changes. This will help ensure that the submodule versions in master repo don't get too ancient.


**Adding a submodule (example):**
```
git submodule add https://github.com/djui/alias-tips zsh/plugins/alias-tips
```

**Linking a submodule:**

`install.conf.yaml:`
```
- link:
    ~/.oh-my-zsh/custom/plugins/alias-tips: zsh/plugins/alias-tips
```

**Removing a submodule (example):**
```
(look this up -- it's like 'git rm... something or other')
```

## To Do
- [ ] Figure out how to deal with non-admin accounts
  - [ ] Present opportunity to `su admin` and `sudo visudoers`?
      - None of this is really viable unless the user is at least in `sudoers`
- [ ] Bring mackup into the mix
- [ ] Document proper order
  - xcode-select Install
  - os x defaults
  - brew check/Install
  - brew $tools-by-type install
  - brew-cask $tools-by-type install
  - nvm check/install
  - node install/config
  - nvm $tools-by-type install
  - rvm check/install
  - ruby install/config
  - rvm $tools-by-type install
- [ ] Refactor install script to run scripts/osx First
  - [ ] Install xcode tools ealry on.
- [ ] Refactor scripts/osx to use functions and user prompts, a la https://github.com/diimdeep/dotfiles/blob/master/osx/configure/el_capitan/set_osx_defaults
- [ ] Massively upgrade and refactor my zsh settings.
- [ ] Upgrade and refactor my git settings
- [ ] Include atom settings in install script
- [ ] Figure out proper procedure for removing a submodule & update README.
- [x] Include additional install scripts for apps and utilities handled by brew and brew-cask, and to optimize various OS X settings.
- [x] Figure out why zsh submodules aren't installing correctly. Must be doing something wrong.

## Thanks
This repo makes use of [dotbot](https://github.com/anishathalye/dotbot) to provide a simple and robust method to easily replicate these files onto any OS X machine.
