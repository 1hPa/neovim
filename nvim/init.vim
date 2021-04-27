"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"        _   _       _                  _____             __ _               "
"       | \ | |     (_)                / ____|           / _(_)              "
"       |  \| |_   ___ _ __ ___       | |     ___  _ __ | |_ _  __ _         "
"       | . ` \ \ / / | '_ ` _ \      | |    / _ \| '_ \|  _| |/ _` |        "
"       | |\  |\ V /| | | | | | |     | |___| (_) | | | | | | | (_| |        "
"       |_| \_| \_/ |_|_| |_| |_|      \_____\___/|_| |_|_| |_|\__, |        "
"                                                               __/ |        "
"                                                              |___/         "
"                                                                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"=== edit ===

"文字コード関係
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp932,iso-2022-jp,euc-jisx0213,euc-jp,guess

"'<'や'>'でインデントするときに'shiftwidth'の倍数に丸める
set shiftround

"tabキーを半角スペースで入力
set expandtab

"タブ幅を4文字分にする
set tabstop=4
set shiftwidth=4

"改行時、自動でインデントする
set smartindent

"タブ入力をスマートに
set smarttab

"補完時に大文字小文字を区別しない
set infercase

"カーソルが行末の一つ右まで動けるようにする
set virtualedit=onemore

"バッファを新しく開く代わりに既に開いてあるバッファを開く
set switchbuf=useopen

"バッファと閉じずに隠す
set hidden

"対応する括弧などをハイライトする
set showmatch

"対応する括弧のハイライトを3秒にする
set matchtime=3

"対応する括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>

"クリップボード有効
set clipboard=unnamed

"=== macro ===

"release autogroup in MyAutoCmd
augroup MyAutoCmd
    autocmd!
augroup END

"jj→ESC
"inoremap jj <ESC>

"ESCを2回押すことでハイライトを消す
nmap <silent> <ESC><ESC> :nohlsearch<CR>

"検索後にジャンプした際に検索単語を中央まで持ってくる
"nnoremap n nzz
"nnoremap N Nzz
"nnoremap * *zz
"nnoremap # #zz
"nnoremap g* g*zz
"nnoremap g# g#zz

"vを2回で行末まで選択
vnoremap v $h

"Tabにて対応ペアにジャンプ
noremap <Tab> %　

"Control+hjklでウィンド間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 入力モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"'^''$''*'の割当て
"noremap <Space>h  ^
"noremap <Space>l  $
"nnoremap <Space>/  *

"=== search ===

"大文字小文字を区別しない
set ignorecase

"検索文字に大文字がある場合は区別
set smartcase

"インクリメンタルサーチ
set incsearch

"検索にマッチしたテキストをハイライト
set hlsearch

"スペルチェック
"set spell spelllang=en_us,cjk

"バックスラッシュやクエスチョンを自動的にエスケープ
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

"=== show ===

"開業やタブなどの不可視文字を可視化
set list

"行番号を表示
set number

"行番号のハイライト
set cursorline
hi clear Cursorline

"コメントの色
hi Comment ctermfg=Cyan

"長いテキストを折り返す
set wrap

"自動的に改行が入るのを無効化
set textwidth=0

"折り返しを見やすく
set showbreak=↪

"markdownの構文非表示を無効化
let g:indentLine_fileTypeExclude = ['markdown']

"----------------------dein----------------------
source $XDG_CONFIG_HOME/nvim/dein.vim
