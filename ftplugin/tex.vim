

function! Texify()
    if(exists('%:r.bbl'))
     silent execute "!del %:r.bbl"
    endif
    !start g:path_tex_executables."texify.exe"  --quiet % <cr> <cr>
endfunction



augroup TexGroup

  autocmd!
  autocmd BufNewFile,BufRead *.tex nnoremap <leader>op :!evince %:p:r.pdf & <cr><cr>
  " autocmd BufNewFile,BufRead *.tex nnoremap <leader>op :!FoxitReader %:r.pdf <cr>
  " autocmd BufNewFile,BufRead *.tex nnoremap <leader>op :!start  "C:\Prgm\Foxit Reader\Foxit Reader.exe" %:r.pdf <cr>

  autocmd! BufNewFile,BufRead *.tex nnoremap <S-F12> :call BibTex() <cr>

  " autocmd! BufNewFile,BufRead *.tex nnoremap <F12> :!pdflatex %:p -output-directory=%:h<cr>
  autocmd! BufNewFile,BufRead *.tex nnoremap <F12> :!xelatex %:p -output-directory=%:p:h<cr>

  autocmd! BufNewFile,BufRead *.tex :command! Texify :call Texify()<cr><cr>

augroup END 

