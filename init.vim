" ****************************************
"" KEY REMAPS
" ****************************************

" CTRL-A to select all text
map <C-a> <esc>ggVG<CR>

" SHIFT-DEL to remove line
map <S-Del> <esc>dd
map! <S-Del> <esc>dd

" CTRL-U Undo
map <C-u> <esc>u

" CTRL-UP Move line up
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Up> :m '<-2<CR>gv=gv

" CTRL-DOWN Move line down
nnoremap <C-Down> :m .+1<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv

" ESC to exit terminal-mode
tnoremap <Esc> <C-\><C-n>

" CTRL-S Save file
map <C-s> <esc> :w<CR>
map! <C-s> <esc> :w<CR>gi

" TAB go to next tab
nnoremap <TAB> gt

" SHIFT-TAB go to previous tab
nnoremap <S-TAB> gT

" [EDIT+VISUAL] TAB do tab
inoremap <TAB> <C-l>
vnoremap <TAB> >gv
 

" [EDIT+VISUAL] SHIFT-TAB reverse tab
inoremap <S-TAB> <C-d>
vnoremap <S-TAB> <gv
 ****************************************
"" GENERAL SETTINGS
" ****************************************

" COPY & PASTE should be synced between system clipboard
" and vim clipboard
set clipboard=unnamed,unnamedplus " use the clipboards of vim and win
