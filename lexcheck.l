%{
	#include <stdio.h>
%}

%%
Hello {printf("hi");}
[0-9]* {printf("This is a number: ");}
.* {printf("invalid character");}
%%

int main()
{
	printf("Enter string: ");
	yylex();
	return 0;
}

int yywrap()
{
	return 1;
}
