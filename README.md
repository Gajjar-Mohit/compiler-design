# LEX
## LEX - A Lexical Analyzer Generator

Lex helps write programs whose control flow is directed by instances of regular expressions in the input stream. It is well suited for editor-script type transformations and for segmenting input in preparation for a parsing routine.
Lex source is a table of regular expressions and corresponding program fragments. The table is translated to a program which reads an input stream, copying it to an output stream and partitioning the input into strings which match the given expressions. As each such string is recognized the corresponding program fragment is executed. The recognition of the expressions is performed by a deterministic finite automaton generated by Lex. The program fragments written by the user are executed in the order in which the corresponding regular expressions occur in the input stream.
 
### install flex - Fast Lexical Analyser Generator  
### Linux : sudo apt-get install flex
### Mac : brew install flex

## Compile And Run Your LEX Program
```
    lex example.l
    gcc -o example lex.yy.c -ll
    ./example

```

# YACC
### YACC: Yet Another Compiler-Compiler

Yacc provides a general tool for describing the input to a computer program. The Yacc user specifies the structures of his input, together with code to be invoked as each such structure is recognized. Yacc turns such a specification into a subroutine that handles the input process; frequently, it is convenient and appropriate to have most of the flow of control in the user's application handled by this subroutine.

The input subroutine produced by Yacc calls a user-supplied routine to return the next basic input item. Thus, the user can specify his input in terms of individual input characters, or in terms of higher level constructs such as names and numbers. The user-supplied routine may also handle idiomatic features such as comment and continuation conventions, which typically defy easy grammatical specification.

### install YACC 
### Linux: sudo apt-get install bison
### Mac: brew install bison

## Compile And Run Your YACC Program
```
    yacc example.y
    gcc y.tab.c -ly -o example
    ./example
```



## Compile  And Run LEX and YACC programs together
```
    lex example.l
    yacc example.y
    gcc lex.yy.c y.tab.c -ll -ly -o example
    ./example
```
