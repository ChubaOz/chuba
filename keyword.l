%{
	#include <stdio.h>
%}

%%
"int"|"char"|"float"|"double"|"for"|"while"|"main"|"if"|"else"|"break"|"continue" {printf("Keyword");}
"+"|"-"|"="|"*"|"/"|"++"|"--"|"+="|"-="|"*="|"/="|"%" {printf("operator");}
[-]*[0-9]+ {printf("Integer");}
^[a-zA-Z_][a-zA-Z_0-9]* {printf("variable");}
.* {printf("Invalid input");}
%%

int main()
{
	printf("Enter : ");
	yylex();
}

int yywrap()
{
	return 1;	
}
