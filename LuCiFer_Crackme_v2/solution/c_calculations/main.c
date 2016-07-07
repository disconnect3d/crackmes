#include <stdio.h>
#include <string.h>

int main() {
    char *name = "qwe";
    unsigned u = (0xFFFFFC90 * (0x875CD * strlen(name) / 0x64));

    printf("strlen = %d\n", strlen(name));
    printf("unsigned calc = 0x%x = %u\n", u, u);

    double d = u;
    printf("double = %lf\n", d);
    printf("double sizeof = %d\n", sizeof(double));
    printf("d bytes: ");

    for(int i=0; i<sizeof(double); ++i)
        printf("%02x ", *(((unsigned char*)(&d)) + i));
    printf("\n");

    int i = *((int*) &d);
    printf("%i-x019871\n", i);
}
