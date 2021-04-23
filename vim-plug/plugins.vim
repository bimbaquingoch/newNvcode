" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    "Ranger
    Plug 'kevinhwang91/rnvimr'
    " colorizer-lua
    Plug 'norcalli/nvim-colorizer.lua'
    " daycula colorscheme
    Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
    "bar bar
    Plug 'romgrk/barbar.nvim'
    " Status Line airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "material
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    "Toast colorscheme
    Plug 'jsit/toast.vim'
    "Json
    Plug 'elzr/vim-json'
    "indentpython
    Plug 'vim-scripts/indentpython.vim'
    "wakaTime
    Plug 'wakatime/vim-wakatime'
    "Typescript
    Plug 'leafgarland/typescript-vim'
    Plug 'quramy/tsuquyomi'
    Plug 'maxmellon/vim-jsx-pretty'
    "CSS better syntax
    Plug 'hail2u/vim-css3-syntax'
    "CSS Color
    Plug 'ap/vim-css-color'
    " Better Comments
    Plug 'tpope/vim-commentary'
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Useful for React Commenting 
    Plug 'suy/vim-context-commentstring'

  if exists('g:vscode')
    Plug 'ChristianChiarulli/vscode-easymotion'
    Plug 'machakann/vim-highlightedyank'
  else

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    " auto set indent settings
    Plug 'tpope/vim-sleuth'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Cool Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Themes
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
   " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Markdown prewview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " Interactive code
    Plug 'metakirby5/codi.vim'
    " undo time travel
    Plug 'mbbill/undotree'
    " Find and replace
    Plug 'ChristianChiarulli/far.vim'
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " Swap windows
    Plug 'wesQ3/vim-windowswap'
    " Intuitive buffer closing
    Plug 'moll/vim-bbye'
    " Debugging
    Plug 'puremourning/vimspector'
    Plug 'szw/vim-maximizer'
     "Rainbow
    Plug 'luochen1990/rainbow'
    Plug 'kien/rainbow_parentheses.vim'
   
  endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
