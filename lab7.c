#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <locale.h>

struct dict {
    char *key;
    int value;
    struct dict *prev;
};

struct dict *Insert(struct dict *dict, char *key, int value) {
    struct dict *node = (struct dict *)malloc(sizeof(struct dict));
    node->key = (char *)malloc(strlen(key) + 1);
    strcpy(node->key, key);
    node->value = value;
    node->prev = dict;
    return node;
}

int Search(struct dict *dict, char *key) {
    struct dict *current = dict;
    while (current != NULL) {
        if (strcmp(current->key, key) == 0) {
            return current->value;
        }
        current = current->prev;
    }
    return -1;
}

char *Get(struct dict *dict, int value) {
    struct dict *current = dict;
    while (current != NULL) {
        if (current->value == value) {
            return current->key;
        }
        current = current->prev;
    }
    return NULL;
}

struct dict *ASCII(struct dict *dict) {
    for (int i = 0; i < 256; i++) {
        char temp[2] = {(char)i, '\0'};
        dict = Insert(dict, temp, i);
    }
    return dict;
}

void LZW_encode(FILE *in, FILE *out) {
    struct dict *dict = NULL;
    dict = ASCII(dict);
    int next_code = 256;

    char *curr_seq = (char *)malloc(sizeof(char));
    curr_seq[0] = '\0';

    char ch;
    int prev_code = -1;

    while ((ch = fgetc(in)) != EOF) {
        char *temp_seq;
        int curr_len = strlen(curr_seq);

        temp_seq = realloc(curr_seq, sizeof(char) * (curr_len + 2));
        curr_seq = temp_seq;
        curr_seq[curr_len] = ch;
        curr_seq[curr_len + 1] = '\0';

        int code = Search(dict, curr_seq);

        if (code == -1) {
            if (prev_code != -1) {
                fprintf(out, "%d ", prev_code);
            }

            dict = Insert(dict, curr_seq, next_code++);
            curr_seq[0] = ch;
            curr_seq[1] = '\0';
            prev_code = Search(dict, curr_seq);
        } else {
            prev_code = code;
        }
    }

    if (prev_code != -1) {
        fprintf(out, "%d", prev_code);
    }

    while (dict != NULL) {
        struct dict *temp = dict;
        dict = dict->prev;
        free(temp->key);
        free(temp);
    }

    free(curr_seq);

    fseek(in, 0, SEEK_END);
    fseek(out, 0, SEEK_END);

    long inSize = ftell(in);
    long outSize = ftell(out);

    printf("Размер исходного файла: %ld байт\n", inSize);
    printf("Размер закодированного файла: %ld байт\n", outSize);
    printf("Коэффициент сжатия алгоритма LZW: %.2f\n", (double)inSize / outSize);

    fclose(in);
    fclose(out);
}

void LZW_decode(FILE *in, FILE *out) {
    struct dict *dict = NULL;
    dict = ASCII(dict);
    int next_code = 256;

    int prev_code;
    int curr_code;
    char *prev_seq;
    char *curr_seq;

    fscanf(in, "%d", &prev_code);

    prev_seq = Get(dict, prev_code);
    fprintf(out, "%s", prev_seq);

    while (fscanf(in, "%d", &curr_code) == 1) {
        curr_seq = Get(dict, curr_code);

        if (curr_seq == NULL) {
            char temp[2] = {prev_seq[0], '\0'};
            curr_seq = (char *)malloc(sizeof(char) * (strlen(prev_seq) + 2));
            strcpy(curr_seq, prev_seq);
            strcat(curr_seq, temp);
        }

        fprintf(out, "%s", curr_seq);

        char *new_entry = (char *)malloc(sizeof(char) * (strlen(prev_seq) + 2));
        strcpy(new_entry, prev_seq);
        new_entry[strlen(prev_seq)] = curr_seq[0];
        new_entry[strlen(prev_seq) + 1] = '\0';
        dict = Insert(dict, new_entry, next_code++);

        prev_seq = curr_seq;
    }

    while (dict != NULL) {
        struct dict *temp = dict;
        dict = dict->prev;
        free(temp->key);
        free(temp);
    }

    fseek(in, 0, SEEK_END);
    fseek(out, 0, SEEK_END);

    long inSize = ftell(in);
    long outSize = ftell(out);

    printf("Размер закодированного файла: %ld байт\n", inSize);
    printf("Размер декодированного файла: %ld байт\n", outSize);
    printf("Коэффициент сжатия алгоритма LZW: %.2f\n", (double)outSize / inSize);

    fclose(in);
    fclose(out);
}

struct symbol {
    char key;
    int freq;
    char *value;
};

int compare(const void *a, const void *b) {
    struct symbol *symbolA = (struct symbol *)a;
    struct symbol *symbolB = (struct symbol *)b;
    return symbolB->freq - symbolA->freq;
}

void FanoAlgo(struct symbol *Symbols, int start, int end, char *seq) {
    if (start == end) {
        Symbols[start].value = (char *)malloc(strlen(seq) + 1);
        strcpy(Symbols[start].value, seq);
        return;
    }

    int total_freq = 0;
    for (int i = start; i <= end; i++) {
        total_freq += Symbols[i].freq;
    }

    int freq = 0;
    int split = start;
    for (int i = start; i < end; i++) {
        freq += Symbols[i].freq;
        if (freq >= total_freq / 2) {
            split = i;
            break;
        }
    }

    char left_prefix[16], right_prefix[16];
    strcpy(left_prefix, seq);
    strcpy(right_prefix, seq);
    strcat(left_prefix, "0");
    strcat(right_prefix, "1");

    FanoAlgo(Symbols, start, split, left_prefix);
    FanoAlgo(Symbols, split + 1, end, right_prefix);
}

void FullBytes(char *bits, FILE *stream) {
    while (strlen(bits) >= 8) {
        unsigned char byte = 0;
        for (int i = 0; i < 8; i++) {
            byte |= (bits[i] - '0') << (7 - i);
        }
        fwrite(&byte, sizeof(unsigned char), 1, stream);
        strcpy(bits, bits + 8);
    }
}

void InvBytes(char *bits, FILE *stream) {
    unsigned char byte = 0;
    unsigned char len = strlen(bits);
    if (len > 0) {
        for (int i = 0; i < len; i++) {
            byte |= (bits[i] - '0') << (7 - i);
        }
        // byte <<= (8 - len);
    }
    fwrite(&byte, sizeof(unsigned char), 1, stream);
    fwrite(&len, sizeof(unsigned char), 1, stream);
}

void Fano_encode(FILE *in, FILE *alp, FILE *out) {
    struct symbol Symbols[5];
    char ch;
    int curr_ind = 0;

    while ((ch = fgetc(in)) != EOF) {
        int found = 0;
        for (int i = 0; i < curr_ind; i++) {
            if (Symbols[i].key == ch) {
                Symbols[i].freq++;
                found = 1;
                break;
            }
        }
        if (found == 0) {
            Symbols[curr_ind].key = ch;
            Symbols[curr_ind].freq = 1;
            curr_ind++;
        }
    }

    qsort(Symbols, curr_ind, sizeof(struct symbol), compare);

    FanoAlgo(Symbols, 0, curr_ind - 1, "");

    for (int i = 0; i < curr_ind; i++) {
        fprintf(alp, "%c:%s\n", Symbols[i].key, Symbols[i].value);
    }

    fseek(in, 0, SEEK_SET);

    char buff[16];
    buff[0] = '\0';

    while ((ch = fgetc(in)) != EOF) {
        for(int i = 0; i < curr_ind; i++) {
            if (ch == Symbols[i].key) {
                strcat(buff, Symbols[i].value);
                FullBytes(buff, out);
                break;
            }
        }
    }

    InvBytes(buff, out);

    for (int i = 0; i < curr_ind; i++) {
        free(Symbols[i].value);
    }

    fseek(in, 0, SEEK_END);
    fseek(out, 0, SEEK_END);

    long inSize = ftell(in);
    long outSize = ftell(out);

    printf("Размер исходного файла: %ld байт\n", inSize);
    printf("Размер закодированного файла: %ld байт\n", outSize);
    printf("Коэффициент сжатия алгоритма Фано: %.2f\n", (double)inSize / outSize);


    fclose(alp);
    fclose(in);
    fclose(out);
}
void dtb(int dec, char *bin){
    bin[8] = '\0';
    int i = 7;

    while (dec > 0 && i >= 0) {
        bin[i--] = (dec % 2) + '0';
        dec /= 2;
    }

    while (i >= 0) {
        bin[i--] = '0';
    }
}

void Fano_decode(FILE *alp, FILE *in, FILE *out) {
    struct symbol Symbols[5];
    char key;
    char code[16] = {0};
    int curr_ind = 0;

    // Чтение алфавита
    while (fscanf(alp, "%c:%s\n", &key, code) != EOF) {
        Symbols[curr_ind].key = key;
        Symbols[curr_ind].value = (char *)malloc(sizeof(char) * (strlen(code) + 1));
        strcpy(Symbols[curr_ind].value, code);
        curr_ind++;
    }

    unsigned char byte;
    unsigned char last_byte = 0;
    unsigned char len = 0;
    long part = 0;

    // Определяем размер последнего неполного байта
    fseek(in, -1, SEEK_END);
    part = ftell(in);
    fread(&len, sizeof(unsigned char), 1, in);

    // Если последний байт неполный, читаем его
    if (len > 0) {
        fseek(in, -2, SEEK_END);
        part = ftell(in);
        fread(&last_byte, sizeof(unsigned char), 1, in);
    }

    fseek(in, 0, SEEK_SET); // Возвращаем указатель в начало файла

    char bin[9] = {0};  // Буфер для битов
    char buff[16] = {0}; // Временный буфер для декодирования

    // Чтение и декодирование основных байтов
    while (fread(&byte, sizeof(unsigned char), 1, in) && ftell(in) <= part) {
        dtb((int)byte, bin);  // Преобразование байта в строку бит
        strcat(buff, bin);
        while (strlen(buff) > 0) {
            for (int i = 0; i < curr_ind; i++) {
                if (strncmp(buff, Symbols[i].value, strlen(Symbols[i].value)) == 0) {
                    fputc(Symbols[i].key, out);
                    strcpy(buff, buff + strlen(Symbols[i].value));
                    break;
                }
            }
        }
    }

    // Обработка последнего неполного байта, если он существует
    if (len > 0) {
        dtb(last_byte, bin);  // Преобразование последнего байта в строку бит
        bin[len] = '\0';      // Обрезаем строку до длины последнего байта
        strcat(buff, bin);    // Добавляем в буфер

        // Декодируем последний фрагмент бит
        while (len > 0) {
            for (int i = 0; i < curr_ind; i++) {
                if (strncmp(buff, Symbols[i].value, strlen(Symbols[i].value)) == 0) {
                    fputc(Symbols[i].key, out);
                    strcpy(buff, buff + strlen(Symbols[i].value));
                    len -= strlen(Symbols[i].value);
                    break;
                }
            }
        }
    }

    // Освобождение памяти для алфавита
    for (int i = 0; i < curr_ind; i++) {
        free(Symbols[i].value);
    }

    // Вывод информации о размерах файлов
    fseek(in, 0, SEEK_END);
    fseek(out, 0, SEEK_END);

    long inSize = ftell(in);
    long outSize = ftell(out);

    printf("Размер закодированного файла: %ld байт\n", inSize);
    printf("Размер декодированного файла: %ld байт\n", outSize);
    printf("Коэффициент сжатия алгоритма Фано: %.2f\n", (double)outSize / inSize);

    fclose(alp);
    fclose(in);
    fclose(out);
}

void LZW(char mode, char *input_file, char *output_file) {
    if (mode == 'e') {
        FILE *in = fopen(input_file, "r");
        FILE *out = fopen(output_file, "w");
        clock_t start_time = clock();
        LZW_encode(in, out);
        clock_t end_time = clock();
        double duration = (double)(end_time - start_time) / CLOCKS_PER_SEC;
        printf("Длительность выполнения кодирования алгоритмом LZW: %.6f секунд\n", duration);
    }
    
    else if (mode == 'd') {
        FILE *in = fopen(input_file, "r");
        FILE *out = fopen(output_file, "w");
        clock_t start_time = clock();
        LZW_decode(in, out);
        clock_t end_time = clock();
        double duration = (double)(end_time - start_time) / CLOCKS_PER_SEC;
        printf("Длительность выполнения декодирования алгоритмом LZW: %.6f секунд\n", duration);
    }
    
    else {
        printf("Неверный режим. Используйте 'e' для кодирования и 'd' для декодирования.\n");
    }
}

void Fano(char mode, char *input_file, char *output_file, char *alphabet_file) {
    if (mode == 'e') {
        FILE *in = fopen(input_file, "r");
        FILE *out = fopen(output_file, "wb");
        FILE *alp = fopen(alphabet_file, "w");
        clock_t start_time = clock();
        Fano_encode(in, alp, out);
        clock_t end_time = clock();
        double duration = (double)(end_time - start_time) / CLOCKS_PER_SEC;
        printf("Длительность выполнения декодирования алгоритмом Фано: %.6f секунд\n", duration);
    }

    else if (mode == 'd') {
        FILE *in = fopen(input_file, "rb");
        FILE *out = fopen(output_file, "w");
        FILE *alp = fopen(alphabet_file, "r");
        clock_t start_time = clock();
        Fano_decode(alp, in, out);
        clock_t end_time = clock();
        double duration = (double)(end_time - start_time) / CLOCKS_PER_SEC;
        printf("Длительность выполнения декодирования алгоритмом Фано: %.6f секунд\n", duration);
    }

    else {
        printf("Неверный режим. Используйте 'e' для кодирования и 'd' для декодирования.\n");
    }
}

int main(int argc, char *argv[]) {

    int argc = 6;


    setlocale(LC_ALL, "ru_RU.UTF-8");

    if (argc < 5) {
        printf("Usage: %s <algorithm> <mode> <input_file> <output_file> [alphabet_file]\nalgorithm: LZW or Fano\nmode: e (encode) or d (decode)\ninput_file: path to input file\noutput_file: path to output file\n[alphabet_file]: required for Fano decoding/encoding\n", argv[0]);
        return 1;
    }

    char *algorithm = argv[1];
    char *mode = argv[2];
    char *input_file = argv[3];
    char *output_file = argv[4];
    char *alphabet_file = NULL;

    // char *algorithm = "Fano";
    // char *mode = "d";
    // char *input_file = "text_enc.bin";
    // char *output_file = "text_dec.txt";
    // char *alphabet_file = "text_alp.txt";
    
    // char *algorithm = "Fano";
    // char *mode = "e";
    // char *input_file = "text.txt";
    // char *output_file = "text_enc.bin";
    // char *alphabet_file = "text_alp.txt";

    if (strcmp(algorithm, "LZW") == 0) {
        LZW(mode[0], input_file, output_file);
    }
    
    else if (strcmp(algorithm, "Fano") == 0) {
        // alphabet_file = argv[5];
        Fano(mode[0], input_file, output_file, alphabet_file);
    }
    else {
        printf("Неверный алгоритм. Используйте LZW или Fano.\n");
        return 1;
    }

    return 0;
}
