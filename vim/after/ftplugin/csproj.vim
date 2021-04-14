if exists("b:did_ftplugin")
   finish
endif

augroup csproj_syntax
	"autocmd FileType csproj setlocal syntax=xml
	au!
	autocmd Syntax <buffer> call SetCsProjSyntax()
augroup END

function! SetCsProjSyntax()
	" remove the augroup
	au! csproj_syntax
	setlocal syntax=xml
	setlocal tabstop=2
	setlocal softtabstop=2
	setlocal shiftwidth=2
	setlocal expandtab
endfunction
