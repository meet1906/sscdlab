%{
#include<stdio.h>
#include<stdlib.h>
//int count=0;
%}
%token . A B
%%
//s: XB
//X: XA {++count;}
input:s'\n' {printf("Successful Grammar\n");exit(0);}
s: A s1 B| B s1: ; | A s1
//.|;
%%

main()
{
//	int n;
//	printf("Enter the value of n:\n");
//	scanf("%d",&n);
	printf("Enter a string:\n");
	yyparse();
	//if((count)==n)
	//	printf("Valid String\n");
	//else
	//	printf("Invalid String\n");
//return 0;
}
int yyerror()
{
	printf("Error \n");
	exit(0);
}
