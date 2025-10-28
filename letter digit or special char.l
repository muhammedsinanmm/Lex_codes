%{
    #include<stdio.h>
%}

%%
    [a-zA-Z] {printf("%s is a Letter",yytext);}
    [0-9]  {printf("%s is a Number",yytext);}
    [\t\n] {}
    .       {printf("%s is a special charecter", yytext);}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("input: ");
    yylex();
    return 0;
}