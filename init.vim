" ****************************************
"" PLUGINS
" ****************************************
call plug#begin('~/.config/.nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
call plug#end()

" ****************************************
"" KEY REMAPS
" ****************************************

" CTRL-A to select all text
nnoremap <C-a> ggVG<CR>
inoremap <C-a> <Esc>ggVG<CR>
vnoremap <C-a> <Esc>ggVG<CR>

" SHIFT-DEL to remove line
map <S-Del> <esc>dd
map! <S-Del> <esc>dd==gi

" CTRL-U Undo
nnoremap <C-u> u<CR>
inoremap <C-u> <Esc>u<CR>==gi
vnoremap <C-u> <Esc>u<CR>gv=gv

" CTRL-R Redo

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

" CTRL-TAB go to next tab
nnoremap <TAB> gt

" CTRL-SHIFT-TAB go to previous tab
nnoremap <S-TAB> gT

" [EDIT+VISUAL] TAB do tab
vnoremap <TAB> >gv
 

" [EDIT+VISUAL] SHIFT-TAB reverse tab
inoremap <S-TAB> <C-d>
vnoremap <S-TAB> <gv


" [COMMAND] CTRL-N new tab
nnoremap <C-n> :tabnew<CR>

" [COMMAND] CTRL-W quit tab
nnoremap <C-w> :q<CR>

" [EDIT+VISUAL+COMMAND] CTRL-F open search
nnoremap <C-f> /
inoremap <C-f> <ESC>/
vnoremap <C-f> <ESC>/

" [EDIT+VISUAL+COMMAND] SHIFT-LEFT switch to left or next window
nnoremap <S-Right> :wincmd l<CR>
inoremap <S-Right> <ESC>:wincmd l<CR>==gi
vnoremap <S-Right> <ESC>:wincmd l<CR>gv=gv

" [EDIT+VISUAL+COMMAND] SHIFT-RIGHT switch to right previous window
nnoremap <S-Left> :wincmd h<CR> 
inoremap <S-Left> <ESC>:wincmd h<CR>==gi
vnoremap <S-Left> <ESC>:wincmd h<CR>gv=gv

" [EDIT+VISUAL+COMMAND] SHIFT-UP switch to window above current
nnoremap <S-Up> :wincmd k<CR>
inoremap <S-Up> <ESC>:wincmd k<CR>==gi
vnoremap <S-Up> <ESC>:wincmd k<CR>gv=gv

" [EDIT+VISUAL+COMMAND] SHIFT-DOWN switch to window below current
nnoremap <S-Down> :wincmd j<CR>
inoremap <S-Down> <ESC>:wincmd j<CR>==gi
vnoremap <S-Down> <ESC>:wincmd j<CR>gv=gv

" SHIFT-SPACE Scroll down fast
nnoremap <A> :test<CR>
inoremap <A> <S-DOWN>

" ****************************************
"" GENERAL SETTINGS
" ****************************************

" COPY & PASTE should be synced between system clipboard
" and vim clipboard
set clipboard=unnamed,unnamedplus " use the clipboards of vim and win

" Always show tab bar
set showtabline=2

" Wrap left and right
set whichwrap+=<,>,h,l,[,]

" Use spaces instead of tabs
:set expandtab
:set tabstop=4

" ****************************************
"" PLUGIN SETTINGS
" ****************************************

" vim-airline/vim-airline
let g:airline_powerline_fonts = 1

" vim-airline/vim-airline-thems
let g:airline_theme='bubblegum'

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1
