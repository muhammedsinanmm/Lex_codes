%{
    #include<stdio.h>
%}

%%
    [0-9]+ {printf("%d \n",yytext);}
    . {}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Input: ");
    yylex();
    return 0;
}