set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments
set norelativenumber!
set termguicolors
set foldmethod=syntax

"markdown
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']

" tokyonight-vim
let g:tokyonight_enable_italic = 1
let g:cssColorVimDoNotMessMyUpdatetime = 1 "Css color
let g:tokyonight_style = 'storm'
let g:lightline = {'colorscheme' : 'tokyonight'}
colorscheme tokyonight
let g:airline_theme = "tokyonight"

" neovim dashboard
let g:dashboard_custom_header = [
     \' ██╗    ██╗ ███████╗  ██████╗  ██╗   ██╗ ██████╗ ██╗    ██╗ ',
     \' ████╗  ██║ ██╔════╝ ██╔═══██╗ ██║   ██║ ╚═██╔═╝ ████╗████║ ',
     \' ██╔██╗ ██║ ██████╗  ██║   ██║ ██║   ██║   ██║   ██╚███╗██║ ',
     \' ██║╚██╗██║ ██╔═══╝  ██║   ██║ ╚██╗ ██╔╝   ██║   ██║╚══╝██║ ',
     \' ██║  ╚███║ ███████╗ ╚██████╔╝  ╚████╔╝  ██████╗ ██║    ██║ ',
     \' ╚═╝   ╚══╝ ╚══════╝  ╚═════╝    ╚═══╝   ╚═════╝ ╚═╝    ╚═╝ ',
		\]

let g:dashboard_default_executive ='telescope'
let g:material_theme_style = 'ocean'
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set whichwrap+=<,>,[,],h,l
set encoding=UTF-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
let g:airline_powerline_fonts = 1
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
" set cursorline                          " Enable highlighting of the current line
" set cursorcolumn
set guicursor+=n-v-c:blinkon1           " blinking enable
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set incsearch
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
cmap w!! w !sudo tee %
