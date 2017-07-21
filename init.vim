" ****************************************
"" PLUGINS
" ****************************************
call plug#begin('~/.config/.nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yuttie/comfortable-motion.vim'
Plug 'neomake/neomake'
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
call plug#end()

" ****************************************
"" KEY REMAPS
" ****************************************

" [COMMAND+INSERT+VISUAL] CTRL-A to select all text
nnoremap <C-a> ggVG<CR>
inoremap <C-a> <Esc>ggVG<CR>
vnoremap <C-a> <Esc>ggVG<CR>

" [COMMAND+INSERT+VISUAL] SHIFT-DEL to remove line
nnoremap <S-Del> <esc>dd
inoremap <S-Del> <esc>dd==gi
vnoremap <S-Del> <esc>ddgv=gv

" [COMMAND+INSERT+VISUAL] CTRL-U Undo
nnoremap <C-u> u<CR>
inoremap <C-u> <Esc>u<CR>==gi
vnoremap <C-u> <Esc>u<CR>gv=gv

" [COMMAND+INSERT+VISUAL] CTRL-R Redo

" [COMMAND+INSERT+VISUAL] CTRL-UP Move line up
nnoremap <silent> <C-Up> :silent! m .-2<CR>==
inoremap <silent> <C-Up> <Esc>:silent! m .-2<CR>==gi
vnoremap <silent> <C-Up> :m '<-2<CR>gv=gv

" [COMMAND+INSERT+VISUAL] CTRL-DOWN Move line down
nnoremap <C-Down> :silent! m .+1<CR>==
inoremap <C-Down> <Esc>:silent! m .+1<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv

" [TERMINAL] ESC to exit terminal-mode
tnoremap <Esc> <C-\><C-n>

" [COMMAND+INSERT+VISUAL] CTRL-S Save file
nnoremap <C-s> :w!<CR>
inoremap <C-s> <esc>:w!<CR>gi
vnoremap <C-s> <esc>:w!<CR>gv=gv

" [COMMAND] TAB go to next tab
nnoremap <TAB> gt


" [COMMAND] SHIFT-TAB go to previous tab
nnoremap <S-TAB> gT

" [INSERT+VISUAL] TAB insert indnet/tab
vnoremap <TAB> >gv

" [INSERT+VISUAL] SHIFT-TAB remove indent/tab
inoremap <S-TAB> <C-d>
vnoremap <S-TAB> <gv

" [COMMAND] CTRL-N new tab
nnoremap <C-n> :tabnew<CR>

" [COMMAND] CTRL-W quit tab
nnoremap <C-w> :q<CR>

" [EDIT+VISUAL+COMMAND] CTRL-F open search
nnoremap <C-f> <ESC>:%s/
inoremap <C-f> <ESC>:%s/
vnoremap <C-f> <ESC>:%s/

" [EDIT+VISUAL+COMMAND] ALT-LEFT switch to left or next window
nnoremap <M-Right> :wincmd l<CR>
inoremap <M-Right> <ESC>:wincmd l<CR>gi
vnoremap <M-Right> <ESC>:wincmd l<CR>gv=gv

" [EDIT+VISUAL+COMMAND] ALT-RIGHT switch to right previous window
nnoremap <M-Left> :wincmd h<CR> 
inoremap <M-Left> <ESC>:wincmd h<CR>gi
vnoremap <M-Left> <ESC>:wincmd h<CR>gv=gv

" [EDIT+VISUAL+COMMAND] ALT-UP switch to window above current
nnoremap <M-Up> :wincmd k<CR>
inoremap <M-Up> <ESC>:wincmd k<CR>gi
vnoremap <M-Up> <ESC>:wincmd k<CR>gv=gv

" [EDIT+VISUAL+COMMAND] ALT-DOWN switch to window below current
nnoremap <M-Down> :wincmd j<CR>
inoremap <M-Down> <ESC>:wincmd j<CR>gi
vnoremap <M-Down> <ESC>:wincmd j<CR>gv=gv

" [EDIT+VISUAL+COMMAND] SHIFT-DOWN Scroll down fast
nnoremap <silent> <S-Down> :call comfortable_motion#flick(200)<CR>
inoremap <silent> <S-Down> <ESC>:call comfortable_motion#flick(200)<CR>gi
vnoremap <silent> <S-Down> <ESC>:call comfortable_motion#flick(200)<CR>gv=gv

" [EDIT+VISUAL+COMMAND] SHIFT-UP Scroll up fast
nnoremap <silent> <S-Up> :call comfortable_motion#flick(-200)<CR>
inoremap <silent> <S-Up> <ESC>:call comfortable_motion#flick(-200)<CR>gi
vnoremap <silent> <S-Up> <ESC>:call comfortable_motion#flick(-200)<CR>gi



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
:set tabstop=4
:set shiftwidth=4
:set expandtab

" ****************************************
"" PLUGIN SETTINGS
" ****************************************

" vim-airline/vim-airline
let g:airline_powerline_fonts = 1

" vim-airline/vim-airline-thems
let g:airline_theme='bubblegum'

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1

" yuttie/comfortable-motion.vim
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_air_drag = 4.0
let g:comfortable_motion_friction = 0.0

" neomake/neomake
let g:neomake_open_list = 1 " show quickfix
autocmd! BufWritePost * Neomake " execute neomake on write

