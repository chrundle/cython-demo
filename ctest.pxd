# Importing definition of udata struct from test.h
cdef extern from "test.h":
    ctypedef struct udata:
        int n
        double x
    # Defining function prototypes 
    int test (udata *)
#    void pretest (double)

## Define python version of udata struct
#ctypedef udata* udata_ptr
#
## Define python version of udata struct
#cdef struct Py_udata:
#    cdef udata_ptr thisptr
