"===============================================================================
"             .vimrc
"===============================================================================

" 新規ファイル作成時のエンコーディング
set encoding=utf-8

" 開いているvim script（このvimrc）のエンコーディング
" set encodingより後に記述する
scriptencoding=utf-8

" 自動判別対象のエンコーディングリスト
set fileencodings=utf-8

" vi互換モードで起動しない
set nocompatible

" vimによるファイル形式の検出を有効化
filetype on

" ファイル形式別インデントのロードを有効化
filetype plugin on

" ファイル形式別プラグインのロードを有効化
filetype indent on

" 構文ハイライトを有効化する
syntax enable

set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

" swpファイルを出力しない
set noswapfile

" バックアップファイルを出力しない
set nobackup

" undoファイルを出力しない
set noundofile

" 編集中でないファイルに変更があった場合に自動で変更を適用する
set autoread

" 保存せずに:q or :eした場合に確認を挟む
set confirm

" 入力中のコマンドを表示する
set showcmd

" 挿入モードでの <BS>, <Del>, CTRL-W, CTRL-Uの働きを設定する
" indent  autoindent を超えてバックスペースを働かせる
" eol     改行を超えてバックスペースを働かせる (行を連結する)
" start   挿入区間の始めでバックスペースを働かせるが CTRL-W と CTRL-U は挿入区間の始めでいったん止まる
set backspace=indent,eol,start

" 行番号を表示する
set number

" カーソルの位置を表示する
set ruler

" 対応する括弧を強調表示する
set showmatch

" 新しい行のインデントを現在の行に合わせる
set autoindent

" ある程度構文を理解しインデントを調整する
" https://vim-jp.org/vimdoc-ja/options.html#'smartindent'
set smartindent

" Tab文字の表示幅を設定する
set tabstop=4

" 挿入モードで<Tab>を入力した際、代わりに適切な数の空白を使う
" この機能が有効化されたい状態でTab文字を入力したい場合は<CTRL-V><Tab>を入力する
set expandtab

" 自動インデントやコマンド">>", "<<"でずれる幅
set shiftwidth=4

" <Tab>, <BS>を打ち込んだときにカーソルが動く幅を設定する
" 0           機能オフ
" -1等負の値  shiftwidthの値を使用
set softtabstop=-1

" 警告音を無効化する
set belloff=all

" プラグイン設定
source ~/.config/nvim/rc/plugins/main.vim

" キーマッピング設定
source ~/.config/nvim/rc/keymappings.vim

" Python
let g:python_host_prog = $HOME . '/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = $HOME . '/.pyenv/versions/neovim3/bin/python'

" Ruby
let g:ruby_host_prog = $HOME . '/.rbenv/versions/2.7.2/bin/neovim-ruby-host'

" Node.js
let g:node_host_prog = $HOME . '/.nodebrew/node/v12.19.0/bin/neovim-node-host'
