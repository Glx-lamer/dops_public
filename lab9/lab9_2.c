#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <locale.h>

void print_binary(unsigned int num) {
    printf("Двоичный: ");
    for (int i = 15; i >= 0; i--) {
        printf("%d", (num >> i) & 1);
    }
    printf("\n");
}

void print_char(unsigned int crc) {
    char chars[3] = {0};
    
    chars[0] = (char)((crc >> 8) & 0xFF);
    chars[1] = (char)(crc & 0xFF);
    
    printf("Символьный: %s\n", chars);
}

int bTd(char* str) {
    int dec = 0;
    for (int i = 0; i < 16; i++) {
        if (str[i] == '1') {
            dec |= (1 << (15 - i));
        }
    }
    return dec;
}

int main() {
    setlocale(LC_ALL, "ru_RU.UTF-8");

    FILE* input;
    unsigned char* text = NULL;
    char* textB = NULL;
    char byte[9] = { 0 };
    unsigned char sbl[2] = { 0 };
    unsigned char crcF[17] = { 0 };
    unsigned int sblCount = 0;
    unsigned int textlen = 1024;
    unsigned int textBlen = 0;

    text = (unsigned char*)malloc(textlen);
    memset(text, 0x00, textlen);

    input = fopen("test.txt", "rb");

    while (fread(sbl, sizeof(unsigned char), 1, input)) {
        if (sblCount >= textlen) {
            textlen += 1024;
            unsigned char* temp = (unsigned char*)realloc(text, textlen);
            text = temp;
            memset(text + sblCount, 0x00, 1024);
        }
        text[sblCount++] = sbl[0];
    }

    fclose(input);

    textBlen = sblCount * 8 + 16;
    textB = (char*)malloc(textBlen + 1);
    memset(textB, 0x00, textBlen + 1);

    for (unsigned int i = 0; i < sblCount; i++) {
        for (int j = 0; j < 8; j++) {
            byte[j] = (text[i] & (1 << (7 - j))) ? '1' : '0';
        }
        memcpy(textB + i * 8, byte, 8);
    }

    memset(textB + sblCount * 8, '0', 16);

    unsigned int poly = 0x1021;
    unsigned int crc_in = 0;
    for (unsigned int i = 0; i < sblCount; i++) {
        crc_in ^= (text[i] << 8);
        for (int j = 0; j < 8; j++) {
            if (crc_in & 0x8000) {
                crc_in = (crc_in << 1) ^ poly;
            } else {
                crc_in <<= 1;
            }
        }
    }
    crc_in &= 0xFFFF;
    sprintf((char*)crcF, "%04X", crc_in);

    printf("CRC для заданного файла:\n--------------------------------\n");

    printf("Шестнадцатеричный: 0x%s\n", crcF);

    print_binary(crc_in);

    print_char(crc_in);

    free(textB);
    free(text);
    return 0;
}