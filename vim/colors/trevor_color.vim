augroup trevor_color
	autocmd!
	let g:colors_name="trevor_color"

	scriptencoding utf-8

	set foldcolumn=0
	set signcolumn=no " annoying gray column to the left.
	set background=dark

	hi clear
	if exists("syntax_on")
		syntax reset
	endif

	if &t_Co >= 256
		let g:trevor_color_term256=1
	elseif !exists("g:trevor_color_term256")
		let g:trevor_color_term256=0
	endif

	fun! s:hi(group, fg, bg, attr, sp)
		if !empty(a:fg)
			exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . (g:trevor_color_term256 ? a:fg.cterm256 : a:fg.cterm)
		endif
		if !empty(a:bg)
			exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . (g:trevor_color_term256 ? a:bg.cterm256 : a:bg.cterm)
		endif
		if a:attr != ""
			exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
		endif
		if !empty(a:sp)
			exec "hi " . a:group . " guisp=" . a:sp.gui
		endif
	endfun

	" Terminal colors (base16):
	let s:cterm00 = "00"
	let s:cterm03 = "08"
	let s:cterm05 = "07"
	let s:cterm07 = "15"
	let s:cterm08 = "01"
	let s:cterm0A = "03"
	let s:cterm0B = "02"
	let s:cterm0C = "06"
	let s:cterm0D = "04"
	let s:cterm0E = "05"
	if exists('base16colorspace') && base16colorspace == "256"
		let s:cterm01 = "18"
		let s:cterm02 = "19"
		let s:cterm04 = "20"
		let s:cterm06 = "21"
		let s:cterm09 = "16"
		let s:cterm0F = "17"
	else
		let s:cterm01 = "00"
		let s:cterm02 = "08"
		let s:cterm04 = "07"
		let s:cterm06 = "07"
		let s:cterm09 = "06"
		let s:cterm0F = "03"
	endif

	let s:cdNone = {'gui': 'NONE', 'cterm': 'NONE', 'cterm256': 'NONE'}
	let s:cdFront = {'gui': '#D4D4D4', 'cterm': s:cterm05, 'cterm256': '188'}
	let s:cdBack = {'gui': '#050505', 'cterm': s:cterm00, 'cterm256': '232'}

	let s:cdTabCurrent = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}
	let s:cdTabOther = {'gui': '#2D2D2D', 'cterm': s:cterm01, 'cterm256': '236'}
	let s:cdTabOutside = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}

	let s:cdLeftDark = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}
	let s:cdLeftMid = {'gui': '#373737', 'cterm': s:cterm03, 'cterm256': '237'}
	let s:cdLeftLight = {'gui': '#3F3F46', 'cterm': s:cterm03, 'cterm256': '238'}

	let s:cdPopupFront = {'gui': '#BBBBBB', 'cterm': s:cterm06, 'cterm256': '250'}
	let s:cdPopupBack = {'gui': '#2D2D30', 'cterm': s:cterm01, 'cterm256': '236'}
	let s:cdPopupHighlightBlue = {'gui': '#073655', 'cterm': s:cterm0D, 'cterm256': '24'}
	let s:cdPopupHighlightGray = {'gui': '#3D3D40', 'cterm': s:cterm03, 'cterm256': '237'}

	let s:cdSplitLight = {'gui': '#898989', 'cterm': s:cterm04, 'cterm256': '245'}
	let s:cdSplitDark = {'gui': '#444444', 'cterm': s:cterm03, 'cterm256': '238'}
	let s:cdSplitThumb = {'gui': '#424242', 'cterm': s:cterm04, 'cterm256': '238'}

	let s:cdCursorDarkDark = {'gui': '#222222', 'cterm': s:cterm01, 'cterm256': '235'}
	let s:cdCursorDark = {'gui': '#51504F', 'cterm': s:cterm03, 'cterm256': '239'}
	let s:cdCursorLight = {'gui': '#AEAFAD', 'cterm': s:cterm04, 'cterm256': '145'}
	let s:cdSelection = {'gui': '#264F78', 'cterm': s:cterm03, 'cterm256': '24'}
	let s:cdLineNumber = {'gui': '#5A5A5A', 'cterm': s:cterm04, 'cterm256': '240'}

	let s:cdDiffRedDark = {'gui': '#4B1818', 'cterm': s:cterm08, 'cterm256': '52'}
	let s:cdDiffRedLight = {'gui': '#6F1313', 'cterm': s:cterm08, 'cterm256': '52'}
	let s:cdDiffRedLightLight = {'gui': '#FB0101', 'cterm': s:cterm08, 'cterm256': '09'}
	let s:cdDiffGreenDark = {'gui': '#373D29', 'cterm': s:cterm0B, 'cterm256': '237'}
	let s:cdDiffGreenLight = {'gui': '#4B5632', 'cterm': s:cterm09, 'cterm256': '58'}

	let s:cdSearchCurrent = {'gui': '#49545F', 'cterm': s:cterm09, 'cterm256': '239'}
	let s:cdSearch = {'gui': '#4C4E50', 'cterm': s:cterm0A, 'cterm256': '239'}

	if !exists("g:trevor_color_conservative")
		let g:trevor_color_conservative=0
	endif

	"let s:cdBlack = {'gui': '#999999', 'cterm': s:cterm04, 'cterm256': '00'}
	"let s:cdFront = {'gui': '#D4D4D4', 'cterm': s:cterm05, 'cterm256': '188'}

	let s:cdBlack = {'gui': '#999999', 'cterm': s:cterm04, 'cterm256': '00'}
	let s:cdFront = {'gui': '#D4D4D4', 'cterm': s:cterm05, 'cterm256': '188'}
	let s:cdGray = {'gui': '#808080', 'cterm': s:cterm04, 'cterm256': '08'}
	let s:cdViolet = {'gui': '#646695', 'cterm': s:cterm04, 'cterm256': '60'}
	let s:cdBlue = {'gui': '#569CD6', 'cterm': s:cterm0D, 'cterm256': '75'}
	let s:cdLightBlue = {'gui': '#9CDCFE', 'cterm': s:cterm0C, 'cterm256': '117'}
	if g:trevor_color_conservative | let s:cdLightBlue = s:cdFront | endif
	let s:cdGreen = {'gui': '#608B4E', 'cterm': s:cterm0B, 'cterm256': '65'}
	let s:cdBlueGreen = {'gui': '#4EC9B0', 'cterm': s:cterm0F, 'cterm256': '43'}
	let s:cdLightGreen = {'gui': '#B5CEA8', 'cterm': s:cterm09, 'cterm256': '151'}
	let s:cdRed = {'gui': '#F44747', 'cterm': s:cterm08, 'cterm256': '203'}
	let s:cdOrange = {'gui': '#CE9178', 'cterm': s:cterm0F, 'cterm256': '173'}
	let s:cdLightRed = {'gui': '#D16969', 'cterm': s:cterm08, 'cterm256': '167'}
	if g:trevor_color_conservative | let s:cdLightRed = s:cdOrange | endif
	let s:cdYellowOrange = {'gui': '#D7BA7D', 'cterm': s:cterm0A, 'cterm256': '179'}
	let s:cdYellow = {'gui': '#DCDCAA', 'cterm': s:cterm0A, 'cterm256': '187'}
	if g:trevor_color_conservative | let s:cdYellow = s:cdFront | endif
	let s:cdPink = {'gui': '#C586C0', 'cterm': s:cterm0E, 'cterm256': '176'}
	if g:trevor_color_conservative | let s:cdPink = s:cdBlue | endif

	" Vim editor colors
	"    s:hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
	call s:hi('Normal', s:cdFront, s:cdBack, 'none', {})
	call s:hi('ColorColumn', {}, s:cdCursorDarkDark, 'none', {})
	call s:hi('Cursor', s:cdCursorDark, s:cdCursorLight, 'none', {})
	call s:hi('CursorLine', {}, s:cdCursorDarkDark, 'none', {})
	call s:hi('Directory', s:cdBlue, s:cdBack, 'none', {})
	call s:hi('DiffAdd', {}, s:cdDiffGreenDark, 'none', {})
	call s:hi('DiffChange', {}, s:cdDiffRedDark, 'none', {})
	call s:hi('DiffDelete', {}, s:cdDiffRedLight, 'none', {})
	call s:hi('DiffText', {}, s:cdDiffRedLight, 'none', {})
	call s:hi('EndOfBuffer', s:cdLineNumber, s:cdBack, 'none', {})
	call s:hi('ErrorMsg', s:cdRed, s:cdBack, 'none', {})
	call s:hi('VertSplit', s:cdSplitDark, s:cdBack, 'none', {})
	call s:hi('Folded', s:cdLeftLight, s:cdLeftDark, 'underline', {})
	call s:hi('FoldColumn', s:cdLineNumber, s:cdBack, 'none', {})
	call s:hi('SignColumn', {}, s:cdBack, 'none', {})
	call s:hi('IncSearch', s:cdNone, s:cdSearchCurrent, 'none', {})
	call s:hi('LineNr', s:cdLineNumber, s:cdBack, 'none', {})
	call s:hi('CursorLineNr', s:cdPopupFront, s:cdBack, 'none', {})
	call s:hi('MatchParen', s:cdNone, s:cdCursorDark, 'none', {})
	call s:hi('ModeMsg', s:cdFront, s:cdLeftDark, 'none', {})
	call s:hi('MoreMsg', s:cdFront, s:cdLeftDark, 'none', {})
	call s:hi('NonText', s:cdLineNumber, s:cdBack, 'none', {})
	call s:hi('Pmenu', s:cdPopupFront, s:cdPopupBack, 'none', {})
	call s:hi('PmenuSel', s:cdPopupFront, s:cdPopupHighlightBlue, 'none', {})
	call s:hi('PmenuSbar', {}, s:cdPopupHighlightGray, 'none', {})
	call s:hi('PmenuThumb', {}, s:cdPopupFront, 'none', {})
	call s:hi('Question', s:cdBlue, s:cdBack, 'none', {})
	call s:hi('Search', s:cdNone, s:cdSearch, 'none', {})
	call s:hi('SpecialKey', s:cdBlue, s:cdNone, 'none', {})
	call s:hi('SpellBad', s:cdNone, s:cdNone, 'underline', {})
	call s:hi('SpellCap', s:cdNone, s:cdNone, 'underline', {})
	call s:hi('SpellLocal', s:cdNone, s:cdNone, 'underline', {})
	call s:hi('StatusLine', s:cdFront, s:cdLeftMid, 'none', {})
	call s:hi('StatusLineNC', s:cdFront, s:cdLeftDark, 'none', {})
	call s:hi('TabLine', s:cdFront, s:cdTabOther, 'none', {})
	call s:hi('TabLineFill', s:cdFront, s:cdTabOutside, 'none', {})
	call s:hi('TabLineSel', s:cdFront, s:cdTabCurrent, 'none', {})
	call s:hi('Title', s:cdNone, s:cdNone, 'bold', {})
	call s:hi('Visual', s:cdSelection, s:cdSelection, 'none', {})
	call s:hi('VisualNOS', s:cdNone, s:cdSelection, 'none', {})
	call s:hi('WarningMsg', s:cdOrange, s:cdBack, 'none', {})
	call s:hi('WildMenu', s:cdNone, s:cdSelection, 'none', {})

	call s:hi('Comment', s:cdGreen, {}, 'none', {})

	call s:hi('Constant', s:cdBlue, {}, 'none', {})
	call s:hi('String', s:cdOrange, {}, 'none', {})
	call s:hi('Character', s:cdOrange, {}, 'none', {})
	call s:hi('Number', s:cdLightGreen, {}, 'none', {})
	call s:hi('Boolean', s:cdBlue, {}, 'none', {})
	call s:hi('Float', s:cdLightGreen, {}, 'none', {})

	call s:hi('Identifier', s:cdLightBlue, {}, 'none', {})
	call s:hi('Function', s:cdYellow, {}, 'none', {})

	call s:hi('Statement', s:cdPink, {}, 'none', {})
	call s:hi('Conditional', s:cdPink, {}, 'none', {})
	call s:hi('Repeat', s:cdPink, {}, 'none', {})
	call s:hi('Label', s:cdPink, {}, 'none', {})
	call s:hi('Operator', s:cdFront, {}, 'none', {})
	call s:hi('Keyword', s:cdPink, {}, 'none', {})
	call s:hi('pythonOperator', s:cdPink, {}, 'none', {})
	call s:hi('Exception', s:cdPink, {}, 'none', {})

	call s:hi('PreProc', s:cdPink, {}, 'none', {})
	call s:hi('Include', s:cdPink, {}, 'none', {})
	call s:hi('Define', s:cdPink, {}, 'none', {})
	call s:hi('Macro', s:cdPink, {}, 'none', {})
	call s:hi('PreCondit', s:cdPink, {}, 'none', {})

	call s:hi('Type', s:cdBlue, {}, 'none', {})
	call s:hi('StorageClass', s:cdBlue, {}, 'none', {})
	call s:hi('Structure', s:cdBlue, {}, 'none', {})
	call s:hi('Typedef', s:cdBlue, {}, 'none', {})

	call s:hi('Special', s:cdFront, {}, 'none', {})
	call s:hi('SpecialChar', s:cdFront, {}, 'none', {})
	call s:hi('Tag', s:cdFront, {}, 'none', {})
	call s:hi('Delimiter', s:cdFront, {}, 'none', {})
	call s:hi('SpecialComment', s:cdGreen, {}, 'none', {})
	call s:hi('Debug', s:cdFront, {}, 'none', {})

	call s:hi('Underlined', s:cdNone, {}, 'underline', {})
	call s:hi("Conceal", s:cdFront, s:cdBack, 'none', {})

	call s:hi('Ignore', s:cdFront, {}, 'none', {})

	call s:hi('Error', s:cdRed, {}, 'undercurl', s:cdRed)

	call s:hi('Todo', s:cdNone, s:cdLeftMid, 'none', {})

	" HTML:
	call s:hi('htmlTag', s:cdGray, {}, 'none', {})
	call s:hi('htmlEndTag', s:cdGray, {}, 'none', {})
	call s:hi('htmlTagName', s:cdBlue, {}, 'none', {})
	call s:hi('htmlSpecialTagName', s:cdBlue, {}, 'none', {})
	call s:hi('htmlArg', s:cdLightBlue, {}, 'none', {})

	" CSS:
	call s:hi('cssBraces', s:cdFront, {}, 'none', {})
	call s:hi('cssInclude', s:cdPink, {}, 'none', {})
	call s:hi('cssTagName', s:cdYellowOrange, {}, 'none', {})
	call s:hi('cssClassName', s:cdYellowOrange, {}, 'none', {})
	call s:hi('cssPseudoClass', s:cdYellowOrange, {}, 'none', {})
	call s:hi('cssPseudoClassId', s:cdYellowOrange, {}, 'none', {})
	call s:hi('cssPseudoClassLang', s:cdYellowOrange, {}, 'none', {})
	call s:hi('cssIdentifier', s:cdYellowOrange, {}, 'none', {})
	call s:hi('cssProp', s:cdLightBlue, {}, 'none', {})
	call s:hi('cssDefinition', s:cdLightBlue, {}, 'none', {})
	call s:hi('cssAttr', s:cdOrange, {}, 'none', {})
	call s:hi('cssAttrRegion', s:cdOrange, {}, 'none', {})
	call s:hi('cssColor', s:cdOrange, {}, 'none', {})
	call s:hi('cssFunction', s:cdOrange, {}, 'none', {})
	call s:hi('cssFunctionName', s:cdOrange, {}, 'none', {})
	call s:hi('cssVendor', s:cdOrange, {}, 'none', {})
	call s:hi('cssValueNumber', s:cdOrange, {}, 'none', {})
	call s:hi('cssValueLength', s:cdOrange, {}, 'none', {})
	call s:hi('cssUnitDecorators', s:cdOrange, {}, 'none', {})

	syntax on;
augroup END
