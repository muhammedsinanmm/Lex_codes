%{
 #include<stdio.h>;
 int vowCount = 0, consCount = 0;
%}

%%
[aeiouAEIOU] {vowCount++};
[a-zA-Z] {consCount++}
%%

int yywrap{
    return 1;
}

int main()
{
    printf("Enter the words of your wish: ");
    yylex();
    return 0;
}