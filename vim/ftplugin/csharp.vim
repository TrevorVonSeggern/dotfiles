let b:OmniSharp_server_stdio = 1
let b:OmniSharp_highlight_types = 2

let b:ale_linters = { 'cs': ['OmniSharp'] }

augroup omnisharp_commands
    autocmd!
	autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
augroup END
