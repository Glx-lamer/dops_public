#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {

    srand(time(NULL));
    FILE *file = fopen("random.bin", "wb");

    long file_size = 1024 * 1024 * 3;
    unsigned char *buffer = (unsigned char *)malloc(file_size);

    for (long i = 0; i < file_size; i++) {
        buffer[i] = rand() % 256;
    }

    fwrite(buffer, sizeof(unsigned char), file_size, file);
    fclose(file);
    free(buffer);

    return 0;
}