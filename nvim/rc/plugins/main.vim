"===============================================================================
"             Plugins
"===============================================================================

let s:current_dir = expand('<sfile>:p:h')

if &compatible
  set nocompatible
endif

" プラグインインストール先
let s:plugin_dir = expand('~/.cache/dein')
let s:dein_dir = s:plugin_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_dir, ':p')
endif

" プラグインのロード
if dein#load_state(s:plugin_dir)
  call dein#begin(s:plugin_dir)

  call dein#load_toml(s:current_dir . '/dein/plugins.toml')
  call dein#load_toml(s:current_dir . '/dein/plugins-lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" 未インストールプラグインのインストール
if dein#check_install()
  call dein#install()
endif

execute 'source ' . s:current_dir . '/defx.vim'
execute 'source ' . s:current_dir . '/denite.vim'
