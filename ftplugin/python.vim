if has("python")

vnoremap <F9> :python autopep8selection()<CR>
nnoremap <F9> :python autopep8buffer()<CR>

endif
