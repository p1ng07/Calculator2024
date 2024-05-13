grammar Calculator;

options {
    language = CSharp;
}

/*
** Syntax Rules 
*/

computation : assignment
            | expression
            ;

assignment  : IDENTIFIER '=' expression
            ;

expression  : expression '+' term | expression '-' term | term 
            ;
term        : term '*' factor | term '/' factor | factor 
            ;
factor      : value | '-' value 
            ;
value       : '(' expression ')' | NUMBER | IDENTIFIER
            ;

/*
** Lexer Rules
*/

NUMBER     : DIGIT+
           ;

IDENTIFIER : LETTER ( LETTER | DIGIT )*
           ;

LETTER     : [a-zA-Z]
           ; 

DIGIT      : [0-9]
           ; 

WHITESPACE : [ \t\r\n]+ -> skip // skip spaces, tabs, newlines
           ;
