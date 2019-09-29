%module zxcvbn_c_cffi
%feature("intern_function","1");
%feature("export");
typedef uint64_t size_t;
%include "zxcvbn.h"
