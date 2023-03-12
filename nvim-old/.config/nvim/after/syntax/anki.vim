if exists("b:current_syntax")
    finish
endif

syntax match ankiComment "\v#.*$"
highlight link ankiComment Comment

syntax match ankiOperator "\v;"
syntax match ankiOperator "\v<"
syntax match ankiOperator "\v>"
syntax match ankiOperator "\v\\"
highlight link ankiOperator Operator

syntax match ankiNumber "\v\d+"
highlight link ankiNumber Number

let b:current_syntax = "anki"
