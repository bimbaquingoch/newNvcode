![NVCode pic](./utils/images/collageNvcode.png)

![NVCode pic](./utils/images/newnvcode.png)

## Typescript

![NVCode pic](./utils/images/ts.png)

## HTML and CSS

![NVCode pic](./utils/images/htmlcss.png)

## Terminal

![NVCode pic](./utils/images/term.png)

## Commands

> [Commands Vim](https://vim.rtorr.com/)

> [Commands Linux](https://blog.desdelinux.net/mas-de-400-comandos-para-gnulinux-que-deberias-conocer/)

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
  sudo snap install nvim --beta --classic
  nvim -v

  NVIM v0.5
  ```

- Arch

  ```
  yay -S neovim-git # Latest
  ```

### Install in one command this script only supports Mac, Ubuntu and Arch

- The following will install this config if you have an existing config it will move it to `~/.config/nvim.old`

```
bash <(curl -s https://raw.githubusercontent.com/bimbaquingoch/newNvcode/master/utils/install.sh)
```

- Or Clone this repo into your config

```
git clone https://github.com/bimbaquingoch/newNvcode.git ~/.config/nvim
```

- Enable light colorscheme

```
cp ~/.config/nvim/themes/ltoast.vim ~/.config/nvim/autoload/plugged/toast.vim/colors
```

### SSH KEY

- To enable git push and pull commands make a [SSH key](https://gist.github.com/bimbaquingoch/f82962545ec731682cf989c582b3fd21) and connect your repositories using SSH

### Ranger vim

```
sudo apt install ranger
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
pip install ueberzug
mkdir ~/.config/ranger
touch ~/.config/ranger/rc.conf
```

- Add this configuration to rc.conf

  ```
  set preview_images_method ueberzug

  default_linemode devicons

  set show_hidden true
  ```

- do this

  ```
  nvim ~/.config/nvim/plug-config/rnvimr.vim
  ```

  - add at the end

    ```
    " Make Ranger replace netrw and be the file explorer
    let g:rnvimr_ex_enable = 1

    nmap <space>r :RnvimrToggle<CR>
    ```

## IMPORTANT

### if you want have online statistics from your daily work

![NVCode pic](./utils/images/waka.png)

### first create an account here [Waka Time](https://wakatime.com/)

```
nvim ~/.config/nvim/vim-plug/plugins.vim
```

<hr/>

### Nerd Font

> To see all files icons you must be installed nerd font [Nerd Font](https://www.nerdfonts.com/font-downloads), I recommend download JetBrainsMono Nerd Font

##### Download your font

```
unzip ~/Downloads/JetBrainsMono.zip
sudo mv *.ttf /usr/share/fonts
```

## Install python & node support

```
sudo pip3 install pynvim
```

```
sudo npm i -g neovim
```

> The leader key is space, this will show you a window with all functions, commands, and themes for your Text Editor.

![NVCode pic](./utils/images/key.png)
