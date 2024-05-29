%{
	#include <stdio.h>
%}

%%
[aeiou] {printf("Character is a vowel");}
[bcdfghjklmnpqrstvwxyz] {printf("Character is a consonant");}
.* {printf("Invalid character");}
%%

int main()
{
	printf("Enter character: ");
	yylex();
	return 0;
}
int yywrap()
{
	return 1;
}
