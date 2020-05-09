set laststatus=2
" 常にタブラインを表示
set showtabline=2
set t_Co=256 

"Tab 有効"
let g:airline#extensions#tabline#enabled = 1

"Show Tab number"
let g:airline#extensions#tabline#buffer_idx_mode = 1
"落ち着いた色調
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_format = {
	\ '0': '0 ',
	\ '1': '1 ',
	\ '2': '2 ',
	\ '3': '3 ',
	\ '4': '4 ',
	\ '5': '5 ',
	\ '6': '6 ',
	\ '7': '7 ',
	\ '8': '8 ',
	\ '9': '9 '
	\}
