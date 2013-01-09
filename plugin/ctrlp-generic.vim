function! CtrlPGeneric(list, callback_name)
    let g:ctrlp_generic_list = a:list
    let g:ctrlp_generic_callback = a:callback_name
    call ctrlp#init(ctrlp#generic#id())
endfunction

" command! -nargs=1 CtrlPGeneric cal s:CtrlPGenericList(<args>)
