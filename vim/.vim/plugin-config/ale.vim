let g:ale_linters = {
            \   'python': ['flake8'],
            \   'python3': ['flake8'],
            \   'css': ['csslint'],
            \   'html': ['htmlhint'],
            \}

let g:ale_fixers = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'python': ['black'],
            \   'python3': ['black'],
            \}
let g:ale_fix_on_save = 1
