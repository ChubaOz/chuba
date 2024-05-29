%{
	#include <stdio.h>
%}

%%
[0-9]+ { int m = atoi(yytext);
	if(m % 2 == 0)
		printf("Even");
	else
		printf("odd");
	}

.* {printf("Invalid Input");}
%%

int main()
{
	printf("Enter a number: ");
	yylex();
	return 0;
}

int yywrap()
{
	return 1;
}
