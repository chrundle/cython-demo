# distutils: sources = Source/test.c 
# distutils: include_dirs = Include/

# NOTE: Compilation fails if you include unnecessary source 
# files (i.e., files containing functions that you do not 
# explicitly call from cython code). For example it fails 
# if you include the source "Source/pretest.c" in the distutils 
# list of sources at the beginning of this file.

# Import definitions from ctest.pxd file
cimport ctest

#        cdef class udata:
#            cdef ctest.udata _c_udata
#        
#            # Initialize variables in c struct 
#            def __cinit__(self):
#                # If c code has function for initializing this is where to call it
#                self._c_udata.n = 0
#                self._c_udata.x = 1

def test():
    # Initialize data structure to provide to C function
    cdef ctest.udata A ;

    # Fill data structure with values from python
    A.n = 0
    A.x = 1.5

    # Call C function with struct
    return ctest.test(&A)

## Importing definition of test function from test.c
#cdef extern from "test.c":
#    int test(udata *A)
#
## Python definition of test function
#def test_func(udata_ptr A):
#    return test(A)
