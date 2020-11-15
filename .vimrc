set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'rdnetto/YCM-Generator'
"Plugin 'jeaye/color_coded'
Plugin 'ycm-core/YouCompleteMe'
" All of your Plugins must be added before the following line
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

":set clipboard=unnamedplus
syntax on

"function! LANG_C()
set tabstop=4
set shiftwidth=4
set smartindent
set autoindent
set expandtab
"endfunction
"autocmd FileType c call LANG_C()
function! LANG_MAKEFILE()
    setlocal noexpandtab     " makefiles only work with tab-indents
    setlocal shiftwidth=8
    setlocal tabstop=8
    setlocal softtabstop=8
endfunction
autocmd FileType make call LANG_MAKEFILE()
"call plug#begin('~/.vim/plugged')
"Plug 'rust-lang/rust.vim'
"call plug#end()

let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_always_populate_location_list = 1
let mapleader=","
cabbrev RR RefactorRename
" Shortcuts for navigating using YouCompleteMe
map <leader>gg  :YcmCompleter GoTo<CR>
map <leader>gd  :YcmCompleter GoToDefinition<CR>
map <leader>gi  :YcmCompleter GoToImprecise<CR>
map <leader>gr  :YcmCompleter GoToReferences<CR>
map <leader>gs  :YcmCompleter GoToSymbol<CR>
map <leader>ty  :YcmCompleter GetType<CR>
map <leader>do  :YcmCompleter GetDoc<CR>
map <leader>fi  :YcmCompleter FixIt<CR>
map <leader>fo  :YcmCompleter Format<CR>
map <leader>gv :vsp <CR>:exec("YcmCompleter GoToDefinition")<CR>
map <leader>gt :tab split<CR>:exec("YcmCompleter GoToDefinition")<CR>

