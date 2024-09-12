#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <locale.h>

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
    unsigned char* msg = NULL;
    char* msgbit = NULL;
    char byte[9] = { 0 };
    unsigned char symbol[2] = { 0 };
    unsigned char crcFinal[17] = { 0 };
    unsigned int symbcou = 0;
    unsigned int msglen = 1024;
    unsigned int msgbitlen = 0;
    char input1[] = "test.txt";

    msg = (unsigned char*)malloc(msglen);
    memset(msg, 0x00, msglen);

    input = fopen(input1, "rb");

    while (fread(symbol, sizeof(unsigned char), 1, input)) {
        if (symbcou >= msglen) {
            msglen += 1024;
            unsigned char* temp = (unsigned char*)realloc(msg, msglen);
            msg = temp;
            memset(msg + symbcou, 0x00, 1024);
        }
        msg[symbcou++] = symbol[0];
    }

    fclose(input);

    msgbitlen = symbcou * 8 + 16;
    msgbit = (char*)malloc(msgbitlen + 1);
    memset(msgbit, 0x00, msgbitlen + 1);

    for (unsigned int i = 0; i < symbcou; i++) {
        for (int j = 0; j < 8; j++) {
            byte[j] = (msg[i] & (1 << (7 - j))) ? '1' : '0';
        }
        memcpy(msgbit + i * 8, byte, 8);
    }

    memset(msgbit + symbcou * 8, '0', 16);

    unsigned int poly = 0x11021;
    unsigned int crc_in = 0;
    for (unsigned int i = 0; i < symbcou; i++) {
        crc_in ^= (msg[i] << 8);
        for (int j = 0; j < 8; j++) {
            if (crc_in & 0x8000) {
                crc_in = (crc_in << 1) ^ poly;
            } else {
                crc_in <<= 1;
            }
        }
    }
    crc_in &= 0xFFFF;
    sprintf((char*)crcFinal, "%04X", crc_in);

    printf("CRC для заданного файла:\n--------------------------------\n");

    printf("Шестнадцатеричный: 0x%s\n", crcFinal);

    free(msgbit);
    free(msg);
    return 0;
}
