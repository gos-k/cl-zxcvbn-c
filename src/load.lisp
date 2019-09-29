#|
  This file is a part of cl-zxcvbn-c project.
  Copyright (c) 2019 gos-k (mag4.elan@gmail.com)
|#

(defpackage #:cl-zxcvbn-c/src/load
  (:use #:cl
        #:cffi))
(in-package #:cl-zxcvbn-c/src/load)

(eval-when (:load-toplevel)
  (define-foreign-library libzxcvbn-c
    (:unix (:or "libzxcvbn.so" "libzxcvbn.so.0"))
    (t (:default "libzxcvbn")))

  (unless (foreign-library-loaded-p 'libzxcvbn-c)
    (use-foreign-library libzxcvbn-c)))
