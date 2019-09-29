#|
  This file is a part of cl-zxcvbn-c project.
  Copyright (c) 2019 gos-k (mag4.elan@gmail.com)
|#

#-asdf3.1 (error "cl-zxcvbn-c requires ASDF 3.1 or later.")
(defsystem :cl-zxcvbn-c
  :name "cl-zxcvbn-c"
  :version "0.1"
  :author "gos-k"
  :license ""
  :description "Common Lisp bindings for zxcvbn-c"

  :class :package-inferred-system
  :depends-on ("cffi"
               "cffi-libffi"
               "cl-zxcvbn-c/src/load"
               "cl-zxcvbn-c/src/all")
  :in-order-to ((test-op (test-op "cl-zxcvbn-c/tests"))))
