#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

void win() {
    printf("\nCongratulations! You reached win()!\n");
    exit(0);
}

void vulnerable() {
    char buffer[16];

    printf("Enter some data: \n");

    fgets(buffer, 200, stdin);  // intentionally oversized read

    printf("You entered: %s\n", buffer);
}

int main() {
    vulnerable();
    printf("Returning from main...\n");
    return 0;
}
