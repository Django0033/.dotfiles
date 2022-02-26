let g:ale_linters = {
            \   'css': ['csslint'],
            \   'html': ['htmlhint'],
            \}

let g:ale_fixers = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'python': ['black'],
            \   'python3': ['black'],
            \}
let g:ale_fix_on_save = 1
