%{
	#include <stdio.h>
	int wc=0, tc=0, sc=0, lc=0;
%}
%%
[\n] {lc++;}
[ ] {sc++;}
[\t] {tc++;}
[^\t\n ]+ {wc++;}
%%
int main()
{
	printf("Enter string:");
	yylex();
	printf("No of line: %d\n", lc);
	printf("No of tabs: %d\n", tc);
	printf("No of space: %d\n", sc);
	printf("No of words: %d\n", wc);
	
}
int yywrap()
{
	return 1;
}
