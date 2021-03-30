function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

let g:startify_custom_header = s:center([ 
    \'          ▀████▀▄▄              ▄█                                                             █▄              ▄▄▀████▀             ',
    \'            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█                                                             █▀▀▄▄    ▄▄▄▄▄▀▀    ▀█               ',
    \'    ▄▄       █          ▀▀▀▀▄  ▄▀  ██╗    ██╗ ██╗   ██╗  ██████╗  ██████╗  ██████╗   ███████╗  ▀▄  ▄▀▀▀▀          █       ▄▄     ',
    \'   ▄▀ ▀▄      ▀▄              ▀▄▀  ████╗  ██║ ██║   ██║ ██╔════╝ ██╔═══██╗ ██╔═══██╗ ██╔════╝  ▀▄▀              ▄▀      ▄▀ ▀▄     ',
    \'  ▄▀    █     █▀   ▄█▀▄      ▄█    ██╔██╗ ██║ ██║   ██║ ██║      ██║   ██║ ██║   ██║ ██████╗     █▄      ▄▀█▄   ▀█     █    ▀▄    ',
    \'  ▀▄     ▀▄  █     ▀██▀     ██▄█   ██║╚██╗██║ ╚██╗ ██╔╝ ██║      ██║   ██║ ██║   ██║ ██╔═══╝    █▄██     ▀██▀     █  ▄▀     ▄▀    ',
    \'   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ██║  ╚███║  ╚████╔╝  ╚██████╗ ╚██████╔╝ ██████╔═╝ ███████╗  █ ▀▀  ▄  ▄   ▄██▄   █ ▀▄    ▄▀     ',
    \'    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ╚═╝   ╚══╝   ╚═══╝    ╚═════╝  ╚═════╝  ╚═════╝   ╚══════╝  ▀▄  ▀▀ ▀▀    ▀██▀    █  ▀▄  █     ',
    \'   █   █  █      ▄▄           ▄▀                                                                ▀▄           ▄▄      █  █   █    ',
    \])


let g:startify_padding_left = 55

let g:startify_lists = [
          \ { 'type': 'files',     'header': startify#center(['Files'])                           },
          \ { 'type': 'dir',       'header': startify#center(['Current Directory '. getcwd()])    },
          \ { 'type': 'sessions',  'header': startify#center(['Sessions'])                        },
          \ { 'type': 'bookmarks', 'header': startify#center(['Bookmarks'])                       },
          \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ ]

let g:startify_enable_special = 0
