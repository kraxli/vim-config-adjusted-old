
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" set runtimepath+=~/Dropbox/VimWiki
" TODO:
" let g:dwc_dcd_bin_dir
      " let g:deoplete#sources#d#dcd_client_binary = g:dwc_dcd_bin_dir.'dcd-client'
      " call dutyl#register#tool('dcd-client', g:dwc_dcd_bin_dir.'dcd-client')

" {{{ === Path ===

if has('unix')
	 let $PATH=$PATH.';'.'~/.dutils/Dscanner/bin;~/.dutils/DCD/bin'
else
	 let  $PATH=$PATH.';'
endif

" }}} Path

" {{{ === Settings ===
" use dwc functions to send code lines to (ipython-)terminal. Alternative is bfredl/nvim-ipy
let g:dwc_ipython_terminal = 1
let g:dwc_terminal_keys = 1
let g:dwc_key_maps = 1

let g:path_tex_executables = 'C:\Program Files\MiKTeX 2.9\miktex\bin\x64\'


" }}}

" original from vim-config:
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vimrc'

" execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config_dw_after/terminal_nvim.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/load_dw.vim'

" load some mappings to quickly access as some files
execute 'source '."~/Dropbox/ActiveHome/.settings/quickfiles.vim"

" {{{ === Individual settings / commands - unallocated stuff ===
augroup IndividualCommands
      autocmd!
augroup END

command! PandocEx :tabnew ~/Dropbox/Work_Content/SCOR/VIM/pandoc_example.pdc

colorscheme gruvbox " hybrid
set background=light

let color_scheme1 = 'hybrid'
let color_scheme2 = 'gruvbox'

nmap <leader>cs :call dway#misc#ToggleColorScheme(color_scheme1, color_scheme2)<cr>
noremap <leader>b :call dway#misc#ToggleBgCs(color_scheme1, color_scheme2)<cr>
nmap gb <c-o> " <c-;>

set statusline+=%F

" }}} end individual settings / commands

" vim: set foldmethod=marker
