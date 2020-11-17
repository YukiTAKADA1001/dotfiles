"===============================================================================
"             Key mappings
"===============================================================================

" Leaderキー
let mapleader = "\<Space>"

" Normal mode
" 保存
nnoremap <Leader>w :w<Enter>
" 終了
nnoremap <Leader>q :q<Enter>
" 保存して終了
nnoremap <Leader>z ZZ
" クリップボードレジスタからペースト
nnoremap <Leader>p "*p
" 画面分割
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>split<CR><C-w>j
nnoremap sv :<C-u>vsplit<CR><C-w>l
" 表示単位での行移動を行う
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" Visual mode
" クリップボードレジスタへのコピー
vnoremap <Leader>y "*y
" クリップボードレジスタへのカット
vnoremap <Leader>d "*d
" クリップボードレジスタからペースト
vnoremap <Leader>p "*p

" Insert mode
" ノーマルモードに移行
inoremap jj <Esc>
