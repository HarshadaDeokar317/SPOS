%{


%}

%%

"import"|"class"|"java"|"io"|"public"|"static"|"void"|"main"|"String" {printf("%s is a keyword",yytext);}
"Spos"|"System"|"out"|"println"|"It"|"is"|"a"|"java"|"program"|"args" {printf("%s is a identifier",yytext);}
"."|"*"|";"|"[]"|"("|")"|"{"|"}" {printf("%s is a special character",yytext);}
%%

main()
{
yyin=fopen("harsh.java","read");
yylex();

}

/* output

[root@localhost student]# flex ass1.l
[root@localhost student]# gcc lex.yy.c -ll
[root@localhost student]# ./a.out
import is a keyword java is a keyword. is a special characterio is a keyword. is a special character* is a special character; is a special character

class is a keyword Spos is a identifier
{ is a special character
public is a keyword static is a keyword void is a keyword main is a keyword( is a special characterString is a keyword args is a identifier[] is a special character) is a special character
{ is a special character

System is a identifier. is a special characterout is a identifier. is a special characterprintln is a identifier( is a special character"It is a identifier is is a identifier a is a identifier java is a keyword program is a identifier") is a special character; is a special character



} is a special character
} is a special character
*/
