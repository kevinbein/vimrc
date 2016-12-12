set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-surround'
Plugin 'chriskempson/base16-vim'
Plugin 'jasonlong/dotfiles'
Plugin 'StanAngeloff/php.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
"Plugin 'vim-scripts/cscope.vim'
"Plugin 'mbbill/code_complete'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'powerline/powerline'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'wincent/terminus'
Plugin 'scrooloose/nerdcommenter'
Plugin 'zacanger/angr.vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'rayburgemeestre/phpfolding.vim'

"filetype plugin indent on
filetype plugin on
let NERDTreeShowHidden=1
syntax on
scriptencoding utf-8
set encoding=utf-8

" Map ü and Ü to insert a line below or above
nnoremap ü :call append(line('.'), '')<CR>
nnoremap Ü :call append(line('.')-1, '')<CR>

" Disable arrow keys
"nnoremap <Up> <Nop>
"nnoremap <Down> <Nop>
"nnoremap <Left> <Nop>
"nnoremap <Right> <Nop>
"vnoremap <Up> <Nop>
"vnoremap <Down> <Nop>
"vnoremap <Left> <Nop>
"vnoremap <Right> <Nop>
nnoremap <Up> <C-y>k
nnoremap <Down> <C-e>j

" Always display the statusline even if nerdtree is closed and only one buffer
" is open
set laststatus=2

" Folding
"let g:php_folding=2
"set foldmethod=indent
set foldlevel=2
set foldlevelstart=2
set foldenable
set foldnestmax=5
hi Folded ctermbg=237

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" PHP internal folding we use a plugin
"let g:php_folding = 2
"let g:php_html_in_strings = 0
"let g:php_html_in_heredoc = 0
"let g:php_sql_query = 1
"let g:php_noShortTags = 1
"let b:phpfold_use = 1
"let b:phpfold_doc_with_funcs = 1
"let b:phpfold_group_args=0
"autocmd FileType php set foldmethod=syntax

" // opens the search with the current selection pasted into it
vnoremap // y/<C-R>"<CR>

" Basic options
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nu
set clipboard=unnamed
set modelines=0
" set listchars=tab:▶\ ,eol:¬,extends:>,preceeds:<
set visualbell
set cursorline


" assd max setting
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab 

" make search next apeear in the middle of the screen
nnoremap n nzz
nnoremap N Nzz

" elimnate esc delay
" also affects <leader> delay so we just remap <esc> to work instantly
set timeoutlen=200 ttimeoutlen=0
syntax sync minlines=100
syntax sync maxlines=240
set synmaxcol=800
"nnoremap <Esc> <Esc><Esc>
"vnoremap <Esc> <Esc><Esc>

" Colored line spacer after 80 characters
" vim built in:
" let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#4c4d47
set colorcolumn=80
" Only highlight if something actually exceeds the 80 characters:
" everything:
" highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
" match OverLength /\%>80v.\+/
" only one character
"  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa     
"colorscheme angr
colorscheme spacegray

set shortmess+=A
set relativenumber 
set number 
set backspace=indent,eol,start
nmap <silent> <C-T> :NERDTreeToggle<CR>
"set number

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

" Needed for YouCompleteMe
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/ycm_extra_conf.py'

" auto open nerdtree
autocmd vimenter * NERDTree
" go to previous (last accessed) window
autocmd VimEnter * wincmd p
" close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Save swap files somewhere else
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set undodir=~/.vim/tmp/undo//
set backup
set noswapfile

set mouse=a

" airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" Keep search matches in the middle of the window and pulse the line when
" moving to them.
nnoremap n nzzzv
nnoremap N Nzzzv

set path+=**
set wildmenu

command! MakeTags !ctags -R .

"set fillchars+=vert:\ 
set fillchars+=vert:│
highlight VertSplit ctermbg=NONE guibg=NONE
highlight VertSplit cterm=NONE

highlight VertSplit cterm=NONE

" map ctrl c to toggle comment
nmap <C-C> <leader>c<Space>
vmap <C-C> <leader>c<Space>

" map mapleader to ä
let mapleader = "ä"

" let p not overwrite the default register
xnoremap p "_dP
"xnoremap p pgv"@=v:register.'y'<c-r>

