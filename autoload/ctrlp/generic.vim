if exists('g:loaded_ctrlp_generic') && g:loaded_ctrlp_generic
  finish
endif
let g:loaded_ctrlp_generic = 1

let s:generic_var = {
\  'init':   'ctrlp#generic#init()',
\  'exit':   'ctrlp#generic#exit()',
\  'accept': 'ctrlp#generic#accept',
\  'lname':  'generic',
\  'sname':  'generic',
\  'type':   'generic',
\  'sort':   0,
\}

if exists('g:ctrlp_ext_vars') && !empty(g:ctrlp_ext_vars)
  let g:ctrlp_ext_vars = add(g:ctrlp_ext_vars, s:generic_var)
else
  let g:ctrlp_ext_vars = [s:generic_var]
endif

function! ctrlp#generic#init()
  return g:ctrlp_generic_list
endfunc

function! ctrlp#generic#accept(mode, str)
  call ctrlp#exit()
  execute "call " . g:ctrlp_generic_callback . "(a:str)"
endfunction

function! ctrlp#generic#exit()
  return -1
endfunction

let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)
function! ctrlp#generic#id()
  return s:id
endfunction

" vim:fen:fdl=0:ts=2:sw=2:sts=2
