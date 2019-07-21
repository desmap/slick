" Slick
" Vim/Neovim Truecolor Colortheme
"
" @desmap forked from @cseelus
"
" colors
" --------------------------
:let _white       = '#ebebff'
:let _d_white     = '#bdbde8'
:let _gray_light  = '#8383af'
:let _gray        = '#616181'
:let _gray_dark   = '#50506b'
:let _lightblack  = '#3a3a58'
:let _semiblack   = '#222234'
:let _black       = '#181827'
:let _aubergine   = '#c59dc5'
:let _turquoise   = '#1fffd2'
:let _d_turquoise = '#007d64'
:let _l_sky       = '#9fd4ff'
:let _sky         = '#6cbeff'
:let _sap         = '#ebff00'
:let _poison      = '#7eb72f'
:let _l_poison    = '#AFFC41'

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "slick"
let colorgroup = {}

" Interface
" ----------------------------------------------------------------------
let colorgroup['Normal']       = {"GUIFG": _white,     "GUIBG":  _black}
" ------------------------
let colorgroup['Darker']       = {"GUIFG": _gray,      "GUIBG":  _black}
let colorgroup['ColorColumn']  = {"GUIFG": _black, "GUIBG":  _semiblack}
let colorgroup['Conceal']      = {"GUIFG": _sap,        "GUI": "bold"}
let colorgroup['Cursor']       = {"GUIFG": _black, "GUIBG":  _lightblack}
let colorgroup['iCursor']      = {"GUIFG": _black, "GUIBG":  _lightblack}
let colorgroup['CursorLine']   = {"GUIBG":  _semiblack}
let colorgroup['CursorColumn'] = {"GUIBG":  _semiblack}
let colorgroup['CursorLineNr'] = {"GUIFG": _gray_dark, "GUIBG":  _black}
let colorgroup['Directory']    = {"GUIFG": _turquoise,   "GUIBG":  _black}
let colorgroup['ErrorMsg']     = {"GUIFG": _black, "GUIBG":  _aubergine}
let colorgroup['FoldColumn']   = {                     "GUIBG":  _black}
let colorgroup['Folded']       = {"GUIFG": _white,     "GUIBG":  _semiblack}
let colorgroup['LineNr']       = {"GUIFG": _lightblack, "GUIBG":  _black}
if &background == "light"
  let colorgroup['LineNr']     = {"GUIFG": _gray, "GUIBG":  _black}
endif
let colorgroup['MatchParen']   = {"GUIFG": _turquoise, "GUIBG":  _black}
let colorgroup['ModeMsg']      = {"GUIFG": _black, "GUIBG":  _turquoise}
let colorgroup['Pmenu']        = {"GUIFG": _white,     "GUIBG":  _gray_dark}
let colorgroup['PmenuSel']     = {"GUIFG": _black, "GUIBG":  _turquoise}
let colorgroup['PmenuSbar']    = {       "GUIBG":  _black}
let colorgroup['Search']       = {"GUIBG":  _gray_dark, "GUI": "underline"}
let colorgroup['SignColumn']   = {                     "GUIBG":  _black}
let colorgroup['StatusLine']   = {"GUIBG": _turquoise,      "GUIFG":  _black}
let colorgroup['StatusLineNC'] = {"GUIFG": _gray_dark, "GUIBG":  _black}
let colorgroup['Title']        = {"GUIFG": _turquoise, "GUI": "bold"}
let colorgroup['Todo']         = {"GUIFG": _gray_dark, "GUIBG":  _sky}
let colorgroup['VertSplit']    = {"GUIFG": _black,      "GUIBG":  _black}
let colorgroup['EndOfBuffer']    = {"GUIFG": _black,      "GUIBG":  _black}
let colorgroup['NonText']    = {"GUIFG": _lightblack,      "GUIBG":  _black}
let colorgroup['Visual']       = {"GUIFG": _black, "GUIBG":  _sap}
if &background == "light"
  let colorgroup['Visual']       = {"GUIFG": _white,     "GUIBG":  _sap}
endif
let colorgroup['WarningMsg']   = {"GUIFG": _black, "GUIBG":  _sky}

let colorgroup['EasyMotion2']   = {"GUIFG": _turquoise, "GUIBG":  _d_turquoise}



" Syntax
" ----------------------------------------------------------------------

" There are nine primary highlighting groups which Vim uses:

" Group Name  Description
" Comment     Comments within a program
" Constant    Program constants, such as numbers, quoted strings, or true/false
" Identifier  Variable identifier names
" Statement   A programming language statement, usually a keyword like "if" or "while"
" PreProc     A preprocessor, such as "#include" in C
" Type        A variable datatype, such as "int"
" Special     A special symbol, usually used for special characters like "\n" in strings
" Underlined  Text that should be underlined
" Error       Text which contains a programming language error
let colorgroup['Comment']      = {"GUIFG": _gray_light, "GUI": "italic"}
let colorgroup['Constant']     = {"GUIFG": _turquoise, "GUI": "bold"}
let colorgroup['Identifier']   = {"GUIFG": _aubergine}
let colorgroup['Statement']    = {"GUIFG": _l_sky}
let colorgroup['PreProc']      = {"GUIFG": _d_white}
let colorgroup['Type']         = {"GUIFG": _d_white}
let colorgroup['Special']      = {"GUIFG": _sap}
let colorgroup['Underlined']   = {"GUIFG": _turquoise, "GUI": "underline"}
let colorgroup['Error']        = {"GUIFG": _white, "GUIBG": _aubergine}

" Other highlighting groups
let colorgroup['Access']       = {"GUIFG": _turquoise, "GUI": "bold"}
let colorgroup['Character']     = {"GUIFG": _sky}
let colorgroup['Define']       = {"GUIFG": _gray_light}
let colorgroup['Function']     = {"GUIFG": _sky, "GUI": "bold"}
let colorgroup['Label']        = {"GUIFG": _d_turquoise}
let colorgroup['Module']       = {"GUIFG": _aubergine, "GUI": "underline"}
let colorgroup['String']       = {"GUIFG": _turquoise}
let colorgroup['Structure']    = {"GUIFG": _gray}
" Own highlighting groups
let colorgroup['UnderlinedBold']   = {"GUIFG": _turquoise, "GUI": "underline,bold"}
let colorgroup['AccentPrimary'] = {"GUIFG": _l_poison}
let colorgroup['AccentSecondary'] = {"GUIFG": _poison}
" ------------------------
hi link Boolean               Number
hi link Class                 Constant
hi link ErrorMsg              Error
hi link Delimiter             Define
hi link Debug                 Special
hi link Conditional           Define
hi link Exception             PreProc
hi link Float                 Number
hi link Include               PreProc
hi link Macro                 PreProc
hi link Number                Character
hi link Operator              PreProc
hi link PreCondit             PreProc
hi link Repeat                Statement
hi link SpecialChar           Special
hi link SpecialComment        Special
hi link SpecialKey            Define
hi link StorageClass          Identifier
hi link Symbol                PreProc
hi link Tag                   Statement
hi link Typedef               Type


" Plugins
" ----------------------------------------------------------------------

" quick-scope
hi link QuickScopePrimary AccentPrimary
hi link QuickScopeSecondary AccentSecondary

" coc.vim
hi CocErrorFloat guifg=#ff0000
hi CocWarningFloat guifg=#ffff00

hi CocWarningSign guifg=#ffff00
hi CocErrorSign guifg=#ff3333

hi CocFloating guibg=#3a3a58

" sneak
hi link Sneak WarningMsg

" EasyMotion

hi link EasyMotionTarget StatusLine
hi link EasyMotionTarget2First StatusLine
hi link EasyMotionTarget2Second EasyMotion2
hi link EasyMotionShade PreProc
hi link EasyMotionIncSearch String
hi link EasyMotionMoveHL StatusLine

" CtrlP
hi link CtrlPMatch             Character

" Git commit
hi link gitcommitBranch        Constant
hi link gitcommitSelectedFile  Statement
hi link gitcommitDiscardedFile Structure
hi link gitcommitUntrackedFile Structure
hi link gitcommitSummary       String

" GitGutter
hi link GitGutterAdd          Darker
hi link GitGutterChange       Darker
hi link GitGutterDelete       Darker
hi link GitGutterChangeDelete Darker

" NERDtree
hi link NerdTreeCWD           Character
hi link NerdTreeHelpKey       Character
hi link NerdTreeHelpTitle     Statement
hi link NerdTreeOpenable      NerdTreeCWD
hi link NerdTreeClosable      Statement
hi link NerdTreeDir           Normal
hi link NerdTreeDirSlash      NerdTreeDir

" PlainTasks (.todo)
hi link ptCompleteTask        Number
hi link ptContext             Type
hi link ptSection             Title
hi link ptTask                Normal

" VimPlug
hi link plugName              Character

" Startify
hi link StartifyNumber        Character
hi link StartifyBracket       StartifyNumber
hi link StartifySection       Title
hi link StartifyPath          Define
hi link StartifySlash         StartifyPath
hi link StartifyFile          Normal


" Languages/Tools
" ----------------------------------------------------------------------

" highlight clear ALEErrorSign
hi link ALEErrorSign          Type
hi link ALEWarningSign        Special

" Apache
hi link apacheDeclaration     PreProc

" CoffeeScript
hi link coffeeExtendedOp      Character
hi link coffeeObject          Statement
hi link coffeeObjAssign       Character
hi link coffeeParen           Character

" CSS
hi link cssAttr               String
hi link cssColor              Normal
hi link cssClassName          PreProc
hi link cssProp               Define
hi link cssPseudoClass        Identifier
hi link cssPseudoClassId      cssPseudoClass
hi link cssSelectorOp         Identifier
hi link cssTagName            Tag

" GraphQL
hi link graphqlName           Function

" HAML
hi link hamlTag               Character

" HTML
" hi link htmlArg               Statement
hi link javaScript            Normal
hi link htmlTag               Delimiter
hi link htmlEndTag            Delimiter
hi link htmlTagName           Tag
" hi link htmlEndTag            Function

" JavaScript
hi link javascriptFuncArg     Character
hi link javascriptFuncComma   Character
hi link javascriptFuncDef     Statement
hi link javascriptFuncKeyword Statement
hi link javascriptOpSymbols   Type
hi link javascriptParens      Character
hi link javascriptEndcolons   Character

" Javascript (pangloss/vim-javascript)
hi link jsArrowFuncArgs       Identifier
hi link jsArrowFunction       Character
hi link jsBraces              PreProc
hi link jsBrackets            Delimiter
hi link jsClassBraces         PreProc
hi link jsClassDefinition     Class
hi link jsClassFuncName       Function
hi link jsClassKeyword        Label
hi link jsDecorator           Normal
hi link jsDestructuringBraces PreProc
hi link jsExtendsKeyword      jsClassKeyword
" hi link jsExport              Statement
" hi link jsImport              Include
hi link jsFrom                jsImport
" hi link jsFuncBraces          Delimiter
hi link jsFuncCall            Character
hi link jsFuncBraces          Delimiter
hi link jsFuncParens          Delimiter
hi link jsFunctionKey         Function
hi link jsGlobalObjects       Identifier
hi link jsGlobalNodeObjects   Identifier
hi link jsIfElseBraces        Delimiter
hi link jsModuleBraces        Normal
hi link jsModuleKeyword       Tag
hi link jsNoise               Delimiter
hi link jsObjectBraces        PreProc
hi link jsObjectKey           Define
hi link jsObjectValue         PreProc
hi link jsParens              Delimiter
hi link jsReturn              Identifier
hi link jsSpreadOperator      Character
hi link jsThis                Identifier

" JSON
hi link jsonKeyword           Normal
hi link jsonKeywordMatch      Delimiter
hi link jsonNoise             Delimiter
hi link jsonQuote             Delimiter

" LaTeX
hi link texInputFile          PreProc
hi link texDocType            Constant
hi link texDocTypeArgs        Character
hi link texInputFile          Symbol
hi link texInputFileOpt       String
hi link texMathMatcher        Statement
hi link texMathSymbol         Symbol
hi link texMathZoneX          Symbol
hi link texSection            Title
hi link texStatement          Character
hi link texTypeSize           Symbol
hi link texTypeStyle          Symbol
" hi link texSpecialChar        Special

" Markdown
hi link mkdBlockquote         Symbol
hi link mkdCode               Character
hi link mkdIndentCode         Identifier
hi link mkdLineBreak          Statement

" MatchTagAlways
hi link MatchTag              Identifier

" PHP
hi link phpParent             Normal
hi link phpRegion             Comment
hi link phpVarSelector        Identifier

" Ruby
hi link rubyAccess            Access
hi link rubyBlockParameterList PreProc
hi link rubyCallback          Character
hi link rubyClass             Label
hi link rubyClassName         UnderlinedBold
hi link rubyControl           Statement
hi link rubyConstant          Constant
hi link rubyEntity            Character
hi link rubyInclude           Include
hi link rubyInterpolation     Identifier
hi link rubyMacro             Character
hi link rubyModule            Module
hi link rubyStringDelimiter   rubyString
hi link rubySymbol            Symbol
hi link rubyRoute             Type

" SASS
hi link sassClassChar         Character
hi link sassClass             Character
hi link sassIdChar            Character
hi link sassId                Character
hi link sassProperty          CSSProp

" Slim
hi link slimBegin             Normal
hi link slimClass             Character
hi link slimClassChar         Character
hi link slimId                Character
hi link slimIdChar            Character
hi link rubyKeyword           PreProc
hi link slimText              Normal

" TypeScript
hi link typescriptBOM                 Normal
hi link typescriptBraces              Delimiter
hi link typescriptCall                Define
hi link typescriptClassExtends        Label
hi link typescriptClassHeritage       Constant
hi link typescriptClassKeyword        Label
hi link typescriptClassName           Constant
hi link typescriptDefault             Identifier
hi link typescriptExport              PreProc
hi link typescriptIdentifier          Identifier
hi link typescriptIdentifierName      Character
hi link typescriptImport              PreProc
hi link typescriptMember              Define
hi link typescriptObjectKey           Define
hi link typescriptObjectLabel         Define
hi link typescriptParens              Delimiter
hi link typescriptParenExp            Delimiter
hi link typescriptProp                PreProc
hi link typescriptReserved            PreProc
hi link typescriptTypeReference       Define
hi link tsxTagName                    Statement

" VimL
hi link vimCmdSep             Character

" YAML
hi link yamlBlockMappingKey   Normal
hi link yamlDocumentStart     Comment
hi link yamlKeyValueDelimiter Delimiter
hi link yamlPlainScalar       Character

" XML
" hi link xmlAttrib             Normal
hi link xmlTag                Delimiter
hi link xmlTagName            Tag
hi link xmlEndTag             Tag


" Expand colorgroups
" ----------------------------------------------------------------------

let s:colors = {}
" http://choorucode.com/2011/07/29/vim-chart-of-color-names/
let valid_cterm_colors =
      \ [
      \     'Black', 'DarkBlue', 'DarkGreen', 'DarkCyan',
      \     'DarkRed', 'DarkMagenta', 'Brown', 'DarkYellow',
      \     'LightGray', 'LightGrey', 'Gray', 'Grey',
      \     'DarkGray', 'DarkGrey', 'Blue', 'LightBlue',
      \     'Green', 'LightGreen', 'Cyan', 'LightCyan',
      \     'Red', 'LightRed', 'Magenta', 'LightMagenta',
      \     'Yellow', 'LightYellow', 'White',
      \ ]
for key in keys(colorgroup)
  let s:colors = colorgroup[key]
  if has_key(s:colors, 'TERM')
    let term = s:colors['TERM']
  else
    let term = 'NONE'
  endif
  if has_key(s:colors, 'GUI')
    let gui = s:colors['GUI']
  else
    let gui='NONE'
  endif
  if has_key(s:colors, 'GUIFG')
    let guifg = s:colors['GUIFG']
  else
    let guifg='NONE'
  endif
  if has_key(s:colors, 'GUIBG')
    let guibg = s:colors['GUIBG']
  else
    let guibg='NONE'
  endif
  if has_key(s:colors, 'CTERM')
    let cterm = s:colors['CTERM']
  else
    let cterm=gui
  endif
  if has_key(s:colors, 'CTERMFG')
    let ctermfg = s:colors['CTERMFG']
  else
    if index(valid_cterm_colors, guifg) != -1
      let ctermfg=guifg
    else
      let ctermfg='Blue'
    endif
  endif
  if has_key(s:colors, 'CTERMBG')
    let ctermbg = s:colors['CTERMBG']
  else
    if index(valid_cterm_colors, guibg) != -1
      let ctermbg=guibg
    else
      let ctermbg='NONE'
    endif
  endif
  if has_key(s:colors, 'GUISP')
    let guisp = s:colors['GUISP']
  else
    let guisp='NONE'
  endif

  if key =~ '^\k*$'
    execute "hi ".key." term=".term." cterm=".cterm." gui=".gui." ctermfg=".ctermfg." guifg=".guifg." ctermbg=".ctermbg." guibg=".guibg." guisp=".guisp
  endif
endfor
