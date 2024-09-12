#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <locale.h>

int main(void) {
    setlocale(LC_ALL, "ru_RU.UTF-8");
    
    FILE *in = fopen("C:\\dops_public\\lab9\\test.txt", "r");

    long data_summarized = 0;
    char ch;
    
    while((ch = fgetc(in)) != EOF) {
        data_summarized += (int)ch;
    }
    
    printf("Контрольная сумма по формуле C = T %% (M + 1): %d", data_summarized%256);
    
    fclose(in);
    
    return 0;
}