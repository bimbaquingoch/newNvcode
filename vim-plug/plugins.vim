" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    
    " Dashboard
    Plug 'glepnir/dashboard-nvim'
    " telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    " CSS color
    Plug 'ap/vim-css-color'
    " rainbow brackets
    Plug 'frazrepo/vim-rainbow'
    " Snippeds JS
    Plug 'dominikduda/vim_es7_javascript_react_snippets'
    Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'HerringtonDarkholme/yats.vim'
    " nav tabs
    Plug 'romgrk/barbar.nvim'
    " Status Line airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " WakaTime
    Plug 'wakatime/vim-wakatime'
    " Better Comments
    Plug 'tpope/vim-commentary'
    " LSP
    Plug 'neovim/nvim-lspconfig'
    " Cool Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Themes
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    Plug 'jsit/toast.vim'
    Plug 'ghifarit53/tokyonight-vim'
    " Polyglot
    Plug 'sheerun/vim-polyglot'
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
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Markdown prewview
    " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " Intuitive buffer closing
    Plug 'moll/vim-bbye'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
