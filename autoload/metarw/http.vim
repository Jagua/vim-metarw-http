

scriptencoding utf-8


let s:save_cpo = &cpo
set cpo&vim


function! metarw#http#complete(arglead, cmdline, cursorpos) abort "{{{
  return [[], a:arglead, '']
endfunction "}}}


function! metarw#http#read(fakepath) abort "{{{
  let url = a:fakepath
  let res = webapi#http#get(url)
  if res.status == '200'
    put =res.content
    return ['done', '']
  else
    return ['error', res.message]
  endif
endfunction "}}}


function! metarw#http#write(fakepath, line1, line2, append_p) abort "{{{
  return ['error', '''write'' is not implemented.']
endfunction "}}}


let &cpo = s:save_cpo
unlet s:save_cpo
