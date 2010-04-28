set nocompatible
filetype plugin indent on
syntax on
set expandtab
set sts=2
set shiftwidth=2
set autoindent
set scrolljump=5
set scrolloff=3
set ruler
set backspace=2
set number
set hlsearch
colors torte
let g:EnhCommentifyRespectIndent = 'Yes'
let g:EnhCommentifyPretty = 'Yes'
let g:EngCommentifyMultiPartBlocks = 'Yes'
" let g:obviousModeInsertHi = 'term=reverse ctermbg=1'
" let g:obviousModeCmdwinHi = 'term=bold ctermbg=1'
" vsa dictionary
set dictionary+=/home/hparmar/.vim/vsa_dict.txt
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
" Make text highlighting nicer
set hl=l:Visual
" let NERDSpaceDelims = 'Yes'
"
" Open and close all the three plugins on the same time 
nmap <F8>   :TrinityToggleAll<CR> 
" Open and close the srcexpl.vim separately 
nmap <F9>   :TrinityToggleSourceExplorer<CR> 
" Open and close the taglist.vim separately 
nmap <F10>  :TrinityToggleTagList<CR> 
" Open and close the NERD_tree.vim separately 
nmap <F11>  :TrinityToggleNERDTree<CR>
nnoremap <F12> :set invpaste paste?<CR>
set pastetoggle=<F12>
set showmode

" Attach 'run this file' with the shebang to F5
au BufEnter *
\if match( getline(1) , '^\#!') == 0 |
\ execute("let b:interpreter = getline(1)[2:]") |
\endif

fun! CallInterpreter()
    if exists("b:interpreter")
         exec ("!".b:interpreter." %")
    endif
endfun

map <F5> :call CallInterpreter()<CR>

" Get the hell out of insert mode
inoremap kj <Esc>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
