%{

#include "y.tab.h"
extern int yylval;


%}

%%
[0-9]+ {yylval=atoi(yytext); return digit;}
[\t] ;
\n {}
. {return yytext[0];}





%%

/*..... .output.......


[root@localhost student]# yacc -d Harsh.y
[root@localhost student]# lex Harsh.l
[root@localhost student]# gcc lex.yy.c y.tab.c -ll
[root@localhost student]# ./a.out
12+10
=22

[root@localhost student]# yacc -d Harsh.y
[root@localhost student]# lex Harsh.l
[root@localhost student]# gcc lex.yy.c y.tab.c -ll
[root@localhost student]# ./a.out
20-10
=10

*/
