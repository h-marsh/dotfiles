" Change the color of line numbers
" Define custom highlight groups for line numbers
highlight LineNrNormal ctermfg=white guifg=white
highlight LineNrInsert ctermfg=green guifg=green

" Set default line number color
highlight LineNr ctermfg=white guifg=white

" Update line number color based on mode
augroup ModeBasedLineNrColor
    autocmd!
    autocmd InsertEnter * :highlight LineNr guifg=green ctermfg=green
    autocmd InsertLeave * :highlight LineNr guifg=white ctermfg=white
augroup END


" Define custom highlight group for matching parentheses
highlight MatchParen ctermfg=darkgreen guifg=darkgreen ctermbg=darkgrey guibg=darkgrey


" Display full path of the file
set statusline=%{expand('%:p')}
" Display path relative to home directory
set statusline+=\ %P

" Add file information and align line info to the right
set statusline+=\ %m%r%h%w\ [%{&ff}]\ [%{&fileencoding}]\ [%{&fileformat}]\ [%{&filetype}]\ %=%l/%L\ [%p%%]
set laststatus=2

" Customize insert mode indicator
highlight ModeMsg ctermfg=white ctermbg=red guifg=white guibg=red

" Set the mode indicator
autocmd InsertEnter * hi ModeMsg ctermbg=red
autocmd InsertLeave * hi ModeMsg ctermbg=none

" Set background color to a specific RGB value
highlight Normal guibg=#445169

" Set the font and size for GVim
set guifont=Monaco:h11

set linebreak
set fillchars=eob:\ 
set relativenumber
syntax on
