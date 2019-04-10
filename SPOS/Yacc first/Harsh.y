%{

#include "stdio.h"


%}

%token digit

%%
statement:exp {printf("=%d\n",$1);};

exp:digit '+' digit {$$=$1+$3;}
	|digit '-' digit {$$=$1-$3;}
	|digit  {$$=$1;}

%%

void main()

{
yyparse();

}

yyerror()

{

printf("error");

}
