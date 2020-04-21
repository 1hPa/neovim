"Binary editing (xxd) mode (Start with 'vim -b' or 'Open *.bin file')
augroup BinaryXXD
    autocmd!
    autocmd BufReadPre *.bin let &binary =1
    autocmd BufReadPost * if &binary | silent %!xxd -g 1
    autocmd BufReadPost * set ft=xxd | endif
    autocmd BufReadPre * if &binary |%!xxd -r |endif
    autocmd BufWritePost * if &binary | silent %!xxd -g 1
    autocmd BufWritePost * set nomod | endif
augroup END
