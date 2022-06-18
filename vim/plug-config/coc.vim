

autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')


autocmd FileType go inoremap <C-t> <C-x><C-u>

autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>
