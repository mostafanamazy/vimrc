set nocompatible              " be iMproved, required
filetype off                  " required

" All your searches will be case insensitive
set ignorecase
" Your search will be case sensitive if it contains an uppercase letter
set smartcase

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'rdnetto/YCM-Generator'
"Plugin 'jeaye/color_coded'
Plugin 'ycm-core/YouCompleteMe'
" All of your Plugins must be added before the following line
" Track the engine.
Plugin 'SirVer/ultisnips'
" Edit config
Plugin 'editorconfig/editorconfig-vim'

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
"autocmd FileType python compiler pylint
"call plug#begin('~/.vim/plugged')
"Plug 'rust-lang/rust.vim'
"call plug#end()

" netrw configs
"let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END


" ycm configs
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_language_server =
  \ [
  \   {
  \     'name': 'rust',
  \     'cmdline': [ 'rust-analyzer' ],
  \     'filetypes': [ 'rust' ],
  \     'project_root_files': [ 'Cargo.toml' ]
  \   },
  \   {
  \     'name': 'lua',
  \     'cmdline': [ 'lua-language-server' ],
  \     'filetypes': [ 'lua' ]
  \   }
  \ ]
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

