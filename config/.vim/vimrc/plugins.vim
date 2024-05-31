" Setup vim-plug path
"if has('win32') || has('win64')
"    set rtp+=~/vimfiles/bundle/vim-plug.vim
"    call plug#begin('~/vimfiles/bundle')
"else
"    set rtp+=~/.vim/bundle/vim-plug.vim
"    call plug#begin()
"endif

" should just be able to call plug#begin() now since its in autoload...
call plug#begin()
" Plugins
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'fcpg/vim-farout'
Plug 'vim-scripts/a.vim'
"Plugin 'vim-scripts/c.vim'
Plug 'vim-scripts/ccvext.vim'
Plug 'vim-scripts/autoload_cscope.vim'
"Plugin 'vim-scripts/vim-javascript'
"Plugin 'vim-scripts/JSON.vim'
"Plugin 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf'
Plug 'mileszs/ack.vim'
Plug 'godlygeek/tabular'
Plug 'ntpeters/vim-better-whitespace'
"Plugin 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
"Plugin 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
"Plugin 'tpope/vim-sleuth'
"Plugin 'tpope/vim-surround'
Plug 'rking/ag.vim'
Plug 'gnattishness/cscope_maps'
"Plugin 'honza/vim-snippets'
"Plugin 'Valloric/YouCompleteMe'

" Typescript stuff
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" All plugins must be listed here
call plug#end()
filetype plugin indent on
filetype plugin on


" UltiSnips configuration
" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" a.vim configuration
"let g:alternateSearchPath = '../inc,./inc,../source,sfr,../src,../include,..'
let g:alternateExtensions_C = "h,inc,H,HPP,hpp"
let g:alternateExtensions_h = "C,cpp,c++,CPP,m,mm"

" YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_config='~/.ycm_extra_conf.py'

" NERDTree
let g:NERDTreeWinSize=40
let g:NERDTreeShowHidden=1


" CoC for typescript
let g:coc_global_extensions = ['coc-tsserver']

" Custom Environment
"autocmd VimEnter * TagbarToggle
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd WinEnter * call NERDTreeQuit()


" Functions
function NERDTreeQuit()
    if exists("t:NERDTreeBufName")
        if bufwinnr(t:NERDTreeBufName) != -1
            if winnr("$") == 1
                q
            endif
        endif
    endif
endfunction
