#include <stdio.h>
#include "../Include/test.h"
#include "pretest.c"

int test (udata *A) {
#if 0
    /* Initialize variables */
    double a, b ;
    a = 7.5 ;
    b = 3.0 ;
#endif

#if 0
    /* Evaluate function f_value from A */
    A->f_value(a,b) ;
#endif

    printf ("Calling pretest\n") ;
    pretest(A->x) ;
#if 0
    printf ("Double is %lg\n", A->x) ;
#endif
    printf ("Int is %i\n", A->n) ;
    
    printf ("Exiting test and returning n\n") ;
    return A->n ;
}
