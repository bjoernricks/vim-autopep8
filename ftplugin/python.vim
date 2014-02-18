if has("python")

    if !exists('g:autopep8#command')
        let g:autopep8#command = '<F9>'
    endif

    if g:autopep8#command != ''
        execute "vnoremap <buffer> ".g:autopep8#command." :python autopep8selection()<CR>"
        execute "nnoremap <buffer> ".g:autopep8#command." :python autopep8buffer()<CR>"
    endif

endif
