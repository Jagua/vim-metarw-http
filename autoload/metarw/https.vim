

scriptencoding utf-8


let s:save_cpo = &cpo
set cpo&vim


function! metarw#https#complete(arglead, cmdline, cursorpos) abort "{{{
  return metarw#http#complete(a:arglead, a:cmdline, a:cursorpos)
endfunction "}}}


function! metarw#https#read(fakepath) abort "{{{
  return metarw#http#read(a:fakepath)
endfunction "}}}


function! metarw#https#write(fakepath, line1, line2, append_p) abort "{{{
  return metarw#http#write(a:fakepath, a:line1, a:line2, a:append_p)
endfunction "}}}


let &cpo = s:save_cpo
unlet s:save_cpo
