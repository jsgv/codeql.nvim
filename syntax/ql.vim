if exists("b:current_syntax")
    finish
endif

" https://codeql.github.com/docs/ql-language-reference/ql-language-specification/#keywords
" https://github.com/github/vscode-codeql/blob/main/extensions/ql-vscode/syntaxes/ql.tmLanguage.yml

syntax keyword qlKeyword               and any as asc avg boolean by class concat count date desc extends float forall forex from implies in instanceof int max min module none not or order predicate private rank result select strictconcat strictcount strictsum string sum super this where
syntax keyword qlConditional           else if then
syntax keyword qlFunction              exists
syntax keyword qlInclude               import
syntax keyword qlBoolean               false true
syntax region  qlString                start=+"+ end=+"+
syntax match   qlInteger               "\s\d\+"
syntax match   qlFloat                 "\d\+\.\d\+"
syntax match   qlOperator              "[!=<>*+-/%]"
syntax match   qlTag                   /@\S\+/ contained
syntax match   qlCommentSingleline     /\/\/.*/
syntax region  qlCommentMultiline      start="/\*" end="\*/"
syntax region  qlCommentMultilineQLDoc start="/\*\*" end="\*/" contains=qlTag

highlight default link qlKeyword               Keyword
highlight default link qlConditional           Conditional
highlight default link qlFunction              Function
highlight default link qlInclude               Include
highlight default link qlBoolean               Boolean
highlight default link qlString                String
highlight default link qlInteger               Number
highlight default link qlFloat                 Float
highlight default link qlOperator              Operator
highlight default link qlOperator              Operator
highlight default link qlTag                   Keyword
highlight default link qlCommentSingleLine     Comment
highlight default link qlCommentMultiline      Comment
highlight default link qlCommentMultilineQLDoc Comment

let b:current_syntax = "ql"
