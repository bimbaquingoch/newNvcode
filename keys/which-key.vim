" Leader Key Maps

let @s = 'veS"'

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Change the colors if you want

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]
let g:which_key_map['/'] = [ ':call Comment()'                                 , 'comment' ]
let g:which_key_map[';'] = [ ':Commands'                                       , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                                          , 'split below']
let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]
let g:which_key_map['q'] = [ ':q'                                              , 'quit']
let g:which_key_map['u'] = [ ':UndotreeToggle'                                 , 'undo tree']
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']
let g:which_key_map['w'] = [ ':w'                                              , 'save']


" Group mappings

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'l' : [':LivedownPreview'         , 'live server'],
      \ 'k' : [':LivedownKill'            , 'kill live server'],
      \ 'h' : [':let @/ = ""'             , 'remove search highlight'],
      \ 'n' : [':set nonumber!'           , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'   , 'relative line nums'],
      \ 't' : [':FloatermToggle'          , 'terminal'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '>' : [':BufferMoveNext'        , 'move next'],
      \ '<' : [':BufferMovePrevious'    , 'move prev'],
      \ '1' : [':BufferGoto 1'          , 'buffer 1'],
      \ '2' : [':BufferGoto 2'          , 'buffer 2'],
      \ '3' : [':BufferGoto 3'          , 'buffer 3'],
      \ '4' : [':BufferGoto 4'          , 'buffer 4'],
      \ '5' : [':BufferGoto 5'          , 'buffer 5'],
      \ '6' : [':BufferGoto 6'          , 'buffer 6'],
      \ '7' : [':BufferGoto 7'          , 'buffer 7'],
      \ '8' : [':BufferGoto 8'          , 'buffer 8'],
      \ '9' : [':BufferGoto 9'          , 'buffer 9'],
      \ '0' : [':BufferGoto 0'          , 'buffer 0'],
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':Bdelete'               , 'delete-buffer'],
      \ 'D' : [':BufferOrderByDirectory', 'order by directory'],
      \ 'f' : ['bfirst'                 , 'first-buffer'],
      \ 'l' : ['blast'                  , 'last buffer'],
      \ 'L' : [':BufferOrderByLanguage' , 'order by language'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ '?' : ['Buffers'                , 'fzf-buffer'],
      \ }

"c is for colorscheme
let g:which_key_map.c = {
      \ 'name':'+colors',
      \ 'a' : [':colorscheme aurora       | :AirlineTheme ayu_mirage'               , 'aurora'],
      \ 'b' : [':colorscheme default      | :AirlineTheme base16_default'           , 'default terminal colors' ],
      \ 'c' : [':colorscheme delek        | :AirlineTheme base16_adwaita'           , 'delek light'],
      \ 'd' : [':colorscheme dracula      | :AirlineTheme base16_railscasts'        , 'dracula'],
      \ 'e' : [':colorscheme gruvbox      | :AirlineTheme base16_default'           , 'gruvbox'],
      \ 'f' : [':colorscheme nvcode       | :AirlineTheme base16_chalk'             , 'nvcode'],
      \ 'g' : [':colorscheme onedark      | :AirlineTheme base16_snazzy'            , 'onedark'],
      \ 'h' : [':colorscheme palenight    | :AirlineTheme base16'                   , 'palenight'],
      \ 'i' : [':colorscheme snazzy       | :AirlineTheme biogoo:'                  , 'snazzy'],
      \ 'j' : [':colorscheme toast        | :AirlineTheme seoul256'                 , 'toast dark'],
      \ 'k' : [':colorscheme ltoast       | :AirlineTheme atomic'                   , 'toast light'],
      \ 'l' : [':colorscheme tokyonight'                                            , 'tokyonight night'],
      \ 'm' : [':colorscheme stokyonight'                                           , 'tokyonight storm'],
      \ 'n' : [":colorscheme material"                                              , 'material']
      \}

"p is for Plug
let g:which_key_map.p = {
      \ 'name' : '+PlugConf',
      \ 'a' : [':PlugClean'                     ,'PlugClean'],
      \ 'b' : [':PlugInstall'                   ,'PlugInstall'],
      \ 'c' : [':PlugStatus'                    ,'PlugStatus'],
      \ 'd' : [':PlugUpdate'                    ,'PlugUpdate'],
      \ 'e' : [':PlugUpgrade'                   ,'PlugUpgrade'],
      \ 'f' : [':PlugSnapshot'                  ,'PlugSnapshot'],
      \ 'g' : [':PlugDiff'                      , 'PlugDiff']
      \}


" d is for debug
let g:which_key_map.d = {
      \ 'name' : '+debug' ,
      \ 'b' : ['<Plug>VimspectorToggleBreakpoint'              , 'breakpoint'],
      \ 'B' : ['<Plug>VimspectorToggleConditionalBreakpoint'   , 'conditional breakpoint'],
      \ 'c' : ['<Plug>VimspectorRunToCursor'                   , 'run to cursor'],
      \ 'd' : ['<Plug>VimspectorContinue'                      , 'continue'],
      \ 'f' : ['<Plug>VimspectorAddFunctionBreakpoint'         , 'function breakpoint'],
      \ 'm' : [':MaximizerToggle'                              , 'maximize window'],
      \ 'o' : ['<Plug>VimspectorStepOver'                      , 'step over'],
      \ 'O' : ['<Plug>VimspectorStepOut'                       , 'step out'],
      \ 'i' : ['<Plug>VimspectorStepInto'                      , 'step into'],
      \ 'p' : ['<Plug>VimspectorPause'                         , 'pause'],
      \ 'r' : ['<Plug>VimspectorRestart'                       , 'restart'],
      \ 's' : ['<Plug>VimspectorStop'                          , 'stop'],
      \ }

" k is for task
let g:which_key_map.k = {
      \ 'name' : '+task' ,
      \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
      \ 'b' : [':AsyncTask project-build'     , 'build project'],
      \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
      \ 'f' : [':AsyncTaskFzf'                , 'find task'],
      \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
      \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
      \ 'l' : [':CocList tasks'               , 'list tasks'],
      \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
      \ 'o' : [':copen'                       , 'open task view'],
      \ 'r' : [':AsyncTask file-run'          , 'run file'],
      \ 'p' : [':AsyncTask project-run'       , 'run project'],
      \ 'x' : [':cclose'                      , 'close task view'],
      \ }

let g:which_key_map.s = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                                             , 'add all'],
      \ 'b' : [':Git blame'                                             , 'blame'],
      \ 'B' : [':Git branch'                                            , 'branches'],
      \ 'c' : [':Git commit'                                            , 'commit'],
      \ 'd' : [':Git diff'                                              , 'diff'],
      \ 'e' : [':Gstatus'                                               , 'status'],
      \ 'f' : [':Git log --decorate'                                    , 'log'],
      \ 'g' : [':Gpush origin master'                                   , 'push'],
      \ 'h' : [':Gpull origin master'                                   , 'pull'],
      \ 'i' : [':Git log --oneline'                                     , 'log --oneline'],
      \ 'j' : [':Git log --stat'                                        , 'log --stat'],
      \ 'k' : [':Git log --all --graph --decorate --oneline'            , 'log all graph decorate'],
      \ 'l' : [':Git show'                                              , 'show'],
      \ 'm' : [':Git checkout master'                                   , 'move to Master'],
      \ 'n' : [':Git branch development'                                , 'branch development'],
      \ 'o' : [':Git branch hotfix'                                     , 'branch hotfix'],
      \ 'N' : [':Git checkout development'                              , 'move to development'],
      \ 'O' : [':Git checkout hotfix'                                   , 'move to hotfix'],
      \ 'p' : [':Git merge development'                                 , 'merge development'],
      \ 'q' : [':Git merge hotfix'                                      , 'merge hotfix'],
      \ }

let g:which_key_map.G = {
      \ 'name' : '+gist' ,
      \ 'a' : [':Gist -a'                          , 'post gist anon'],
      \ 'b' : [':Gist -b'                          , 'post gist browser'],
      \ 'd' : [':Gist -d'                          , 'delete gist'],
      \ 'e' : [':Gist -e'                          , 'edit gist'],
      \ 'l' : [':Gist -l'                          , 'list public gists'],
      \ 's' : [':Gist -ls'                         , 'list starred gists'],
      \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
      \ 'p' : [':Gist -P'                          , 'post public gist '],
      \ 'P' : [':Gist -p'                          , 'post private gist '],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'code action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'O' : [':CocList outline'                    , 'search outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=normal --height=6'       , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }

call which_key#register('<Space>', "g:which_key_map")
