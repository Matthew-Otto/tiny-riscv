#define TOHOST 0x10000000
volatile int* tohost = (int*) TOHOST;

void main() {
    int x = 0;
    for (int i = 0; i < 10; i++) {
        x++;
    }

    if (x == 10)
        *tohost = 1;  // Signal end of program (1 = success)
    else
        *tohost = 0;  // (0 = fail)

    while(1);
}
