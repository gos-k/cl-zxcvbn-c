#|
  This file is a part of cl-zxcvbn-c project.
  Copyright (c) 2019 gos-k (mag4.elan@gmail.com)
|#

(defpackage #:cl-zxcvbn-c/tests/cl-zxcvbn-c
  (:use #:cl
        #:rove
        #:cffi
        #:cl-zxcvbn-c))
(in-package #:cl-zxcvbn-c/tests/cl-zxcvbn-c)

(deftest match-test
  (pprint
   (zxcvbn-match "cl-zxcvbn-c"
                 (null-pointer)
                 (null-pointer))))
