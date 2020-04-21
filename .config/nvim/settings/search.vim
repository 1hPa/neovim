"大文字小文字を区別しない
set ignorecase

"検索文字に大文字がある場合は区別
set smartcase

"インクリメンタルサーチ
set incsearch

"検索にマッチしたテキストをハイライト
set hlsearch

"バックスラッシュやクエスチョンを自動的にエスケープ
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'
