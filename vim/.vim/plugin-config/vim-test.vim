if has('nvim')
    let test#strategy='neovim'

else
    let test#strategy='vimterminal'

endif

let test#python#runner='pytest'

nmap <silent> <Leader>vt :TestNearest --verbose<CR>
nmap <silent> <Leader>vT :TestFile<CR>
nmap <silent> <Leader>va :TestSuite<CR>
nmap <silent> <Leader>vl :TestLast<CR>
nmap <silent> <Leader>vg :TestVisit<CR>
