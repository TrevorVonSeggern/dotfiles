let b:OmniSharp_server_stdio = 1
let b:OmniSharp_highlight_types = 2
let g:omnicomplete_fetch_full_documentation = 0

let b:ale_linters = [ 'OmniSharp' ]

nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
