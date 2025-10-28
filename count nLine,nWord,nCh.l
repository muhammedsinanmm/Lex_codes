%{
    #include<stdio.h>
    int nLine =0, nWord = 0, nChar = 0;
%}

%%
    [a-zA-Z0-9]+   {nWord++, nChar += yyleng ;}
    /n    {nLine++ ;}
    .     {nChar++ ;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen(demo.txt,r);
    yylex();
    printf("words: %d \n Lines: %d \n Charecter: %d " , nWord,nLine,nChar);
    return 0;
}