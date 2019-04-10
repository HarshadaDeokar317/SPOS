%{
#include<stdio.h>
int nl=0;
int nw=0;
int nc=0;
int ni=0;

%}
%%
\n {nl++,nw++ ;}
[\t|" "] {nw++ ;}
[A-Za-z] {nc++ ;}
[0-9]* {ni++ ;}
%%
main()
{

yyin=fopen("Lexnl.txt","r");
yylex();
printf(" \n no of lines %d",nl);
printf("\n no of words %d",nw);
printf("\n no of char is %d",nc);
printf("\n no of int %d",ni);

}


OUTPUT:
[student@localhost ~]$ su
Password: 
[root@localhost student]# lex no1.l
[root@localhost student]# gcc lex.yy.c -ll
[root@localhost student]# ./a.out
:...:. 
 no of lines 4
 no of words 11
 no of char is 47
 no of int 1[root@localhost student]# 


