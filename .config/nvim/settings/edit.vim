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
