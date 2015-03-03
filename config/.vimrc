" Use vim settings, rather then vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible

" Use pathogen to easily modify the runtime path to include all plugins under
" the ~/.vim/bundle directory 
filetype off                    " force reloading *after* pathogen loaded
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on       " enable detection, plugins and indenting in one step
syntax on

colors elflord                  " Change color scheme to torte

" change the mapleader to , from \
let mapleader=","
" type ,r will reload vimrc
nmap <silent> <leader>ev :so $MYVIMRC<CR>

inoremap jk <esc>               " type jk to exit insert mode

set showmode                    " always show what mode we're currently editing in
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise. Both ignorecase
				"    and smarcase must be turned on
set hlsearch                    " highlight search terms
set undolevels=1000             " use many muchos levels of undo
set pastetoggle=<F2>            " use F2 to toggle to paste mode

" Use ; instead of :
nnoremap ; :
" Clear search highlight
nmap <silent> ,/ :nohlsearch<CR>

" Make Home key to the head of indented line
:map <Home> ^
:imap <Home> <Esc>^i

" Avoid accidental hits of <F1> while aiming for <Esc>
noremap! <F1> <Esc>

" Easy window navigation
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l

" Easy tab navigation
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>j gt

" Scrolling via j and k
noremap <C-j> <C-e>
noremap <C-k> <C-y>

" Command-T configurations
let g:CommandTCancelMap=['<ESC>','<C-c>']
let g:CommandTFileScanner="git"
let g:CommandTSelectNextMap = ['<ESC>OB']
let g:CommandTSelectPrevMap = ['<ESC>OA']
let g:CommandTMaxFiles = 50000

" Enable eclim in YCM
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_autoclose_preview_window_after_insertion = 1

" Eclim settings
let g:EclimDefaultFileOpenAction='tabnew'

autocmd FileType java map <leader>d :JavaSearchContext<CR>
autocmd FileType java map <leader>i :JavaImportOrganize<CR>
autocmd FileType java map <leader>f :JavaFormat<CR>
autocmd FileType java map <leader>c :JavaCallHierarchy<CR>

autocmd FileType cpp map <leader>d :CSearchContext<CR>
autocmd FileType cpp map <leader>c :CCallHierarchy<CR>

" map ,r to reload all files in buffers
nmap <silent> ,r :bufdo e<CR>

