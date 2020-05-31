%{ 
#include<stdio.h>
/* this pgm finds integer and ops */
int v=0,op=0,id=0,flag=0;
%}
%%
[0-9]+ { id++; printf("identifier:"); ECHO;}
[\+\*] { op++; printf("operator:"); ECHO;}
"(" {v++;}
")" {v--;}
";" {flag=1;}
.|\n {return 0;}
%%
void main() {
	printf("Enter the expresion");
	yylex();
	if((op+1) == id && v == 0 && flag==0){
		printf("Exp is valid\n");
		printf("number of identifiers=%d\n number of operators = %d\n",id,op);
	}
	else
		printf("exp is not valid");
}

