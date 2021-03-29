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

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]
let g:which_key_map['/'] = [ ':call Comment()'                                 , 'comment' ]
let g:which_key_map[';'] = [ ':command'                                        , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                                          , 'split below']
let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]
let g:which_key_map['q'] = [ ':q'                                              , 'quit']
let g:which_key_map['u'] = [ ':UndotreeToggle'                                 , 'undo tree']
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']
let g:which_key_map['w'] = [ ':w'                                              , 'save']
let g:which_key_map['m'] = [ ':MarkdownPreview'                                , 'README preview']
let g:which_key_map['M'] = [ ':MarkdownPreviewStop'                            , 'README preview stop']
let g:which_key_map['r'] = [ ':RnvimrToggle'                                   , 'Ranger']


" Group mappings

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'a' : [':ColorizerAttachToBuffer' , 'Colorizer'],
      \ 'h' : [':let @/ = ""'             , 'remove search highlight'],
      \ 'n' : [':set nonumber!'           , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'   , 'relative line nums'],
      \ 'c' : ['<Plug>(coc-rename)'       , 'rename'],
      \ 'l' : [':Bracey'                  , 'live server'],
      \ 's' : [':BraceyStop'              , 'stop live server'], 
      \ 'd' : [':BraceyReload'            , 'reload live server'], 
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+manage-tabs' ,
      \ '>' : [':BufferMoveNext'        , 'next tab'],
      \ '<' : [':BufferMovePrevious'    , 'prev tab'],
      \ '1' : [':BufferGoto 1'          , 'tab 1'],
      \ '2' : [':BufferGoto 2'          , 'tab 2'],
      \ '3' : [':BufferGoto 3'          , 'tab 3'],
      \ '4' : [':BufferGoto 4'          , 'tab 4'],
      \ '5' : [':BufferGoto 5'          , 'tab 5'],
      \ '6' : [':BufferGoto 6'          , 'tab 6'],
      \ '7' : [':BufferGoto 7'          , 'tab 7'],
      \ '8' : [':BufferGoto 8'          , 'tab 8'],
      \ '9' : [':BufferGoto 9'          , 'tab 9'],
      \ '0' : [':BufferGoto 0'          , 'tab 0'],
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':Bdelete'               , 'close tab'],
      \ 'D' : [':BufferOrderByDirectory', 'order by directory'],
      \ 'f' : ['bfirst'                 , 'first tab'],
      \ 'l' : ['blast'                  , 'last tab'],
      \ 'L' : [':BufferOrderByLanguage' , 'order by language'],
      \ 'n' : ['bnext'                  , 'next-tab'],
      \ 'p' : ['bprevious'              , 'previous-'],
      \ }

"c is for colorscheme
let g:which_key_map.c = {
      \ 'name':'+colorschemes',
      \ 'a' : [':colorscheme default      | :AirlineTheme base16_default      | :RainbowParenthesesActivate'      , 'terminal colors' ],
      \ 'b' : [':colorscheme onedark      | :AirlineTheme base16_snazzy       | :RainbowParenthesesActivate'      , 'onedark'],
      \ 'c' : [':colorscheme toast        | :AirlineTheme seoul256            | :RainbowParenthesesActivate'      , 'toast dark'],
      \ 'd' : [':colorscheme ltoast       | :AirlineTheme atomic              | :RainbowParenthesesActivate'      , 'toast light'],
      \ 'e' : [':colorscheme material     | :AirlineTheme zenburn             | :RainbowParenthesesActivate'      , 'material'],
      \ 'f' : [':colorscheme daycula      | :AirlineTheme daycula             | :RainbowParenthesesActivate'      , 'daycula']
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
      \ 'g' : [':SSave'           , 'Save Session']   ,
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                                             , 'add all'],
      \ 'b' : [':Git blame'                                             , 'blame'],
      \ 'B' : [':Git branch -a'                                         , 'branches'],
      \ 'c' : [':Git commit'                                            , 'commit'],
      \ 'C' : [':Git commit --amend'                                    , 'commit --amend'],
      \ 'd' : [':Git diff'                                              , 'diff'],
      \ 'e' : [':Gstatus'                                              , 'status'],
      \ 'f' : [':Git log --decorate'                                    , 'log'],
      \ 'g' : [':Gpush origin master'                                   , 'push Mater'],
      \ 'h' : [':Gpull origin master'                                   , 'pull Mater'],
      \ 'i' : [':Git log --oneline'                                     , 'log --oneline'],
      \ 'j' : [':Git log --stat'                                        , 'log --stat'],
      \ 'k' : [':Git log --all --graph --decorate --oneline'            , 'log all graph decorate'],
      \ 'l' : [':Git show'                                              , 'show'],
      \ 'm' : [':Git checkout master'                                   , 'move to Master'],
      \ 'n' : [':Git branch development'                                , 'create branch development'],
      \ 'o' : [':Git branch hotfix'                                     , 'create branch hotfix'],
      \ 'N' : [':Git checkout development'                              , 'move to development'],
      \ 'O' : [':Git checkout hotfix'                                   , 'move to hotfix'],
      \ 'p' : [':Git merge development'                                 , 'merge development'],
      \ 'q' : [':Git merge hotfix'                                      , 'merge hotfix'],
      \ 'r' : [':Gpush origin development'                              , 'push development'],
      \ 's' : [':Gpush origin hotfix'                                   , 'push hotfix'],
      \ 't' : [':Git reflog'                                            , 'history(reflog)'],
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
