" ****************************************
"" PLUGINS
" ****************************************
call plug#begin('~/.config/.nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ****************************************
"" KEY REMAPS
" ****************************************

" CTRL-A to select all text
map <C-a> <esc>ggVG<CR>

" SHIFT-DEL to remove line
map <S-Del> <esc>dd
map! <S-Del> <esc>dd==gi

" CTRL-U Undo
map <C-u> <esc>u

" CTRL-UP Move line up
nnoremap <silent> <C-Up> :silent! m .-2<CR>==
inoremap <silent> <C-Up> <Esc>:silent! m .-2<CR>==gi
vnoremap <silent> <C-Up> :m '<-2<CR>gv=gv

" CTRL-DOWN Move line down
nnoremap <C-Down> :silent! m .+1<CR>==
inoremap <C-Down> <Esc>:silent! m .+1<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv

" ESC to exit terminal-mode
tnoremap <Esc> <C-\><C-n>

" CTRL-S Save file
nnoremap <C-s> :silent! w!<CR>==
inoremap <C-s> <esc> :silent! w!<CR>==gi
vnoremap <C-s> <esc> :silent! w!<CR>gv=gv

" TAB go to next tab
nnoremap <TAB> gt

" SHIFT-TAB go to previous tab
nnoremap <S-TAB> gT

" [EDIT+VISUAL] TAB do tab
vnoremap <TAB> >gv
 

" [EDIT+VISUAL] SHIFT-TAB reverse tab
inoremap <S-TAB> <C-d>
vnoremap <S-TAB> <gv

" ****************************************
"" GENERAL SETTINGS
" ****************************************

" COPY & PASTE should be synced between system clipboard
" and vim clipboard
set clipboard=unnamed,unnamedplus " use the clipboards of vim and win

" ****************************************
"" PLUGIN SETTINGS
" ****************************************

" vim-airline/vim-airline
let g:airline_powerline_fonts = 1

" vim-airline/vim-airline-thems
let g:airline_theme='bubblegum'
