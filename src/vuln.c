#include <stdio.h>
#include <string.h>

void win() {
    printf("\nCongratulations! You reached win()!\n");
}

void vulnerable(char *input) {
    char buffer[16];

    printf("Address of buffer: %p\n", buffer);
    strcpy(buffer, input);

    printf("You entered: %s\n", buffer);
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: %s <input>\n", argv[0]);
        return 1;
    }

    vulnerable(argv[1]);

    printf("Returning from main...\n");
    return 0;
}
