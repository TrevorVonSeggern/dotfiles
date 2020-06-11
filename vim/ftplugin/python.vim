setl tabstop=4
setl softtabstop=4
setl shiftwidth=4
setl expandtab
setl autoindent

setl textwidth=79
setl fileformat=unix
setl encoding=utf-8


" Hightlighting rules will never be great language specific. Commenting until
" something better is found

"highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
"highlight ExtraWhitespace ctermbg=red guibg=red

"" Show trailing whitespace:
"syntax match ExtraWhitespace /\s\+$/
"" Show trailing whitespace and spaces before a tab:
"syntax match ExtraWhitespace /\s\+$\| \+\ze\t/
"" Show tabs that are not at the start of a line:
"syntax match ExtraWhitespace /[^\t]\zs\t\+/
"" more than 80 chars in a line is bad
"syntax match ExtraWhitespace /\%>80v.\+/
