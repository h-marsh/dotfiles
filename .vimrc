" Change the color of line numbers
" Define custom highlight groups for line numbers
highlight LineNrNormal ctermfg=white guifg=white
highlight LineNrInsert ctermfg=green guifg=green

" Set default line number color
highlight LineNr guibg=NONE guifg=NONE cterm=NONE

" Update line number color based on mode
augroup ModeBasedLineNrColor
    autocmd!
    autocmd InsertEnter * :highlight LineNr guifg=green ctermfg=green
    autocmd InsertLeave * :highlight LineNr guifg=white ctermfg=white
augroup END







" Display path relative to home directory
set statusline+=\ %P

" Customize insert mode indicator
highlight ModeMsg ctermfg=white ctermbg=red guifg=white guibg=red

" Set the mode indicator
autocmd InsertEnter * hi ModeMsg ctermbg=red
autocmd InsertLeave * hi ModeMsg ctermbg=none

set relativenumber
