#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>

void print_binary(unsigned short crc) {
    printf("Двоичный: ");
    for (int i = 15; i >= 0; i--) {
        printf("%d", (crc >> i) & 1);
    }
    printf("\n");
}

void print_char(unsigned short crc) {
    char chars[3] = {0};
    chars[0] = (char)((crc >> 8) & 0xFF);
    chars[1] = (char)(crc & 0xFF);
    printf("Символьный: %s\n", chars);
}

unsigned short advcrc(unsigned char* str, unsigned int len) {
    unsigned short reg = 0x00;
    unsigned short poly = 0x1021;
    unsigned char sbl = '\0';
    int flag = 0;
    int j = 0;

    for (int i = 0; i < 16 && len > 0; i++) {
        if (i == 0 || i == 8) {
            sbl = str[j++];
            len--;
        }
        if (sbl & 0x80) {
            reg <<= 1;
            reg |= 1;
        } else {
            reg <<= 1;
        }
        sbl <<= 1;
    }

    while (len > 0) {
        sbl = str[j++];
        for (int i = 0; i < 8; i++) {
            flag = (reg & 0x8000) != 0;
            reg <<= 1;
            if (sbl & 0x80) {
                reg |= 1;
            }
            if (flag) {
                reg ^= poly;
            }
            sbl <<= 1;
        }
        len--;
    }
    return reg;
}

int main() {
    setlocale(LC_ALL, "ru_RU.UTF-8");

    FILE* input;
    unsigned char* text = NULL;
    unsigned int textlen = 1024;
    unsigned int sblCount = 0;
    unsigned short crc = 0;
    char crcF[17] = {0};
    unsigned char sbl[2] = {0};

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

    crc = advcrc(text, sblCount);

    sprintf(crcF, "%04X", crc);
    printf("CRC для заданного файла:\n--------------------------------\n");
    printf("Шестнадцатеричный: 0x%s\n", crcF);
    print_binary(crc);
    print_char(crc);

    free(text);
    return 0;
}