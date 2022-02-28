let g:vimspector_enable_mappings = 'HUMAN'
" packadd!vimspector
nnoremap <Leader>da :call vimspector#Launch()<CR>
nnoremap <Leader>dx :call vimspector#Reset()<CR>
nnoremap <A-k> :call vimspector#StepOut()<CR>
nnoremap <A-l> :call vimspector#StepInto()<CR>
nnoremap <A-j> :call vimspector#StepOver()<CR>
nnoremap <Leader>d_ :call vimspector#Restart()<CR>
nnoremap <Leader>dn :call vimspector#Continue()<CR>
nnoremap <Leader>drc :call vimspector#RunToCursor()<CR>
nnoremap <Leader>dh :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>de :call vimspector#ToggleConditionalBreakpoint()<CR>
nnoremap <Leader>dX :call vimspector#ClearBreakpoints()<CR>
nnoremap <Leader>d? :call AddToWatch()<CR>

func! AddToWatch()
    let word = expand("<cexpr>")
    call vimspector#AddToWatch(word)
endfunction

" let g:vimspector_base_dir = expand("~/.config/vimspector-config")
