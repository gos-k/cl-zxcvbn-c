#|
  This file is a part of cl-zxcvbn-c project.
  Copyright (c) 2019 gos-k (mag4.elan@gmail.com)
|#

(defpackage #:cl-zxcvbn-c/tests
  (:use #:cl)
  (:import-from #:cl-zxcvbn-c/tests/cl-zxcvbn-c)
  (:import-from #:rove))
(in-package #:cl-zxcvbn-c/tests)

(defmethod asdf:perform :after ((op asdf:test-op)
                                (system (eql (asdf:find-system :cl-zxcvbn-c/tests))))
  (rove:run (asdf:find-system system)))