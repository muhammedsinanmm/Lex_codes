%{
    #include<stdio.h>
    int space =0, tab =0, newln = 0;
%}

%%
    [ ]  {space++ ;}
    [\t] {tab++ ;}
    [\n]  {newln++ ;}
    .   {}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Input : ");
    yylex();
    printf("Count of white space = %d \n Count of Tab = %d \n Count of New lines = %d \n",space,tab,newln);
    return 0;
}