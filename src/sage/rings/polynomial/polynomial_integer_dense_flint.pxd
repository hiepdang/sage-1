include "sage/ext/cdefs.pxi"
include "sage/libs/flint/fmpz.pxi"
include "sage/libs/flint/fmpz_poly.pxi"

from sage.libs.flint.ntl_interface cimport *

from sage.rings.polynomial.polynomial_element cimport Polynomial
from sage.rings.integer cimport Integer
from sage.structure.parent cimport Parent

cdef class Polynomial_integer_dense_flint(Polynomial):
    cdef fmpz_poly_t __poly

    cdef Polynomial_integer_dense_flint _new(self)
    cpdef bint is_zero(self)
    cpdef _unsafe_mutate(self, long n, value)
    cpdef Integer content(self)
