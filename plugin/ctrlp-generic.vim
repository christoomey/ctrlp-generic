function! CtrlPGeneric(list, callback_name) range
    let g:ctrlp_generic_list = a:list
    let g:ctrlp_generic_callback = a:callback_name
    let g:ctrlp_generic_range = [a:firstline, a:lastline]
    call ctrlp#init(ctrlp#generic#id())
endfunction

" command! -nargs=1 CtrlPGeneric cal s:CtrlPGenericList(<args>)
