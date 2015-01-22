
#define FALSE 0
#define	TRUE 1

#include <stdlib.h>


int evenP (long n);

int oddP (long n) {
    return (n==0) ? FALSE : evenP(n-1);
}

int evenP (long n) {
    return (n==0) ? TRUE : oddP(n-1);
}

int main (int argc, char**argv) {
    long n= atol(argv[1]);
    exit (! evenP(n));
}
