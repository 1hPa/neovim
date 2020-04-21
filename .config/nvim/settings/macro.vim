"release autogroup in MyAutoCmd
augroup MyAutoCmd
    autocmd!
augroup END

"入力モード中に素早くjjと入力した場合ESCとみなす
inoremap jj <ESC>									

"ESCを2回押すことでハイライトを消す
nmap <silent> <ESC><ESC> :nohlsearch<CR>

"検索後にジャンプした際に検索単語を中央まで持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

"括弧の補完++
inoremap [ []<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap " ""<left>
inoremap ' ''<left>

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
noremap <Space>h  ^
noremap <Space>l  $
nnoremap <Space>/  *

" :e などでファイルを開く際にフォルダが存在しない場合は自動作成
function! s:mkdir(dir, force)
  if !isdirectory(a:dir) && (a:force ||
        \ input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
    call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
  endif
endfunction
autocmd MyAutoCmd BufWritePre * call s:mkdir(expand('<afile>:p:h'), v:cmdbang)

"w!!でスーパーユーザーとして保存(sudoが使える環境のみ)
cmap w!! w!sudo tee > /dev/null %

