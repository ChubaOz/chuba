%{
	#include <stdio.h>
	int n = 0;
%}

%%
"int"|"char"|"float"|"double"|"for"|"while"|"main"|"if"|"else"|"break"|"continue" {n++; printf("Keyword : %s\n", yytext);}
"+"|"-"|"="|"*"|"/"|"++"|"--"|"+="|"-="|"*="|"/="|"%" {n++;printf("operator: %s\n", yytext);}
[-]*[0-9]+ {n++;printf("Integer: %s\n", yytext);}
[a-zA-Z_][a-zA-Z_0-9]* {n++; printf("identifier: %s\n", yytext);}
[(){};,]  {n++; printf("separators: %s\n", yytext);}
[\t\n] {}
. {}
%%

int main()
{
	printf("Enter : ");
	yylex();
	printf("No of tokens: %d", n);
	return 0;
}

int yywrap()
{
	return 1;	
}
