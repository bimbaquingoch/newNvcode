# NVCode

![NVCode pic](./utils/images/theme6.png)
![NVCode pic](./utils/images/ts.png)
![NVCode pic](./utils/images/java.png)
![NVCode pic](./utils/images/htmlcss.png)
![NVCode pic](./utils/images/py.png)
![NVCode pic](./utils/images/term.png)

## Original Author

https://github.com/ChristianChiarulli/nvim

## Simple guide

https://vim.rtorr.com/

## Install in one command

The following will install this config if you have an existing config it will move it to `~/.config/nvim.old`

This script only supports Mac, Ubuntu and Arch

```
bash <(curl -s https://raw.githubusercontent.com/bimbaquingoch/newNvcode/master/utils/install.sh)
```

## After install!!!

## if you want have online statistics from your daily work

![NVCode pic](./utils/images/waka.png)

## first create an account here

https://wakatime.com/

## and then when you write in your terminal

```
nvim
```

## there put your key from the page

## if you don't will use this, go to

![NVCode pic](./utils/images/wakaConfig.png)

## and comment this line

## Install Neovim

- Mac

  ```
  brew install --HEAD neovim # Nightly version

  brew upgrade neovim --fetch-HEAD # Sometimes you need to update
  ```

- Ubuntu

  ```
  sudo apt-get update
  sudo apt-get install snapd -y
  sudo snap install nvim --classic
  ```

- Arch

  ```
  yay -S neovim-git # Latest
  ```

## Clone this repo into your config

```
git clone https://github.com/bimbaquingoch/newNvcode.git ~/.config/nvim
```

## Install python & node support

```
pip install pynvim
```

```
npm i -g neovim
```

## The leader key is space, this will show you a window with all functions, commands, and themes for your IDE.

![NVCode pic](./utils/images/which-key.png)
