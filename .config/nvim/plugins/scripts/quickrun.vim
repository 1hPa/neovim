let g:quickrun_config = {
\   'tex': {
\       'command': 'latexmk',
\       'exec': ['%c -gg -pdfdvi %s', 'open %s:r.pdf']
\   },
\}
autocmd BufWritePost *.tex :QuickRun tex
