;;; This file was automatically generated by SWIG (http://www.swig.org).
;;; Version 3.0.12
;;;
;;; Do not make changes to this file unless you know what you are doing--modify
;;; the SWIG interface file instead.

#|
  This file is a part of cl-zxcvbn-c project.
  Copyright (c) 2019 gos-k (mag4.elan@gmail.com)
|#

(defpackage #:cl-zxcvbn-c/src/zxcvbn-c-cffi
  (:use #:cl))
(in-package #:cl-zxcvbn-c/src/zxcvbn-c-cffi)

;;;SWIG wrapper code starts here

(cl:defmacro defanonenum (cl:&body enums)
   "Converts anonymous enums to defconstants."
  `(cl:progn ,@(cl:loop for value in enums
                        for index = 0 then (cl:1+ index)
                        when (cl:listp value) do (cl:setf index (cl:second value)
                                                          value (cl:first value))
                        collect `(cl:defconstant ,value ,index))))

(cl:eval-when (:compile-toplevel :load-toplevel)
  (cl:unless (cl:fboundp 'swig-lispify)
    (cl:defun swig-lispify (name flag cl:&optional (package cl:*package*))
      (cl:labels ((helper (lst last rest cl:&aux (c (cl:car lst)))
                    (cl:cond
                      ((cl:null lst)
                       rest)
                      ((cl:upper-case-p c)
                       (helper (cl:cdr lst) 'upper
                               (cl:case last
                                 ((lower digit) (cl:list* c #\- rest))
                                 (cl:t (cl:cons c rest)))))
                      ((cl:lower-case-p c)
                       (helper (cl:cdr lst) 'lower (cl:cons (cl:char-upcase c) rest)))
                      ((cl:digit-char-p c)
                       (helper (cl:cdr lst) 'digit 
                               (cl:case last
                                 ((upper lower) (cl:list* c #\- rest))
                                 (cl:t (cl:cons c rest)))))
                      ((cl:char-equal c #\_)
                       (helper (cl:cdr lst) '_ (cl:cons #\- rest)))
                      (cl:t
                       (cl:error "Invalid character: ~A" c)))))
        (cl:let ((fix (cl:case flag
                        ((constant enumvalue) "+")
                        (variable "*")
                        (cl:t ""))))
          (cl:intern
           (cl:concatenate
            'cl:string
            fix
            (cl:nreverse (helper (cl:concatenate 'cl:list name) cl:nil cl:nil))
            fix)
           package))))))

;;;SWIG wrapper code ends here


(cffi:defcenum #.(swig-lispify "idtype_t" 'enumname)
	#.(swig-lispify "P_ALL" 'enumvalue :keyword)
	#.(swig-lispify "P_PID" 'enumvalue :keyword)
	#.(swig-lispify "P_PGID" 'enumvalue :keyword))

(cl:export '#.(swig-lispify "idtype_t" 'enumname))

(cffi:defcenum #.(swig-lispify "ZxcTypeMatch_t" 'enumname)
	#.(swig-lispify "NON_MATCH" 'enumvalue :keyword)
	#.(swig-lispify "BRUTE_MATCH" 'enumvalue :keyword)
	#.(swig-lispify "DICTIONARY_MATCH" 'enumvalue :keyword)
	#.(swig-lispify "DICT_LEET_MATCH" 'enumvalue :keyword)
	#.(swig-lispify "USER_MATCH" 'enumvalue :keyword)
	#.(swig-lispify "USER_LEET_MATCH" 'enumvalue :keyword)
	#.(swig-lispify "REPEATS_MATCH" 'enumvalue :keyword)
	#.(swig-lispify "SEQUENCE_MATCH" 'enumvalue :keyword)
	#.(swig-lispify "SPATIAL_MATCH" 'enumvalue :keyword)
	#.(swig-lispify "DATE_MATCH" 'enumvalue :keyword)
	#.(swig-lispify "YEAR_MATCH" 'enumvalue :keyword)
	(#.(swig-lispify "MULTIPLE_MATCH" 'enumvalue :keyword) #.32))

(cl:export '#.(swig-lispify "ZxcTypeMatch_t" 'enumname))

(cffi:defcstruct #.(swig-lispify "ZxcMatch" 'classname)
	(#.(swig-lispify "Begin" 'slotname) :int)
	(#.(swig-lispify "Length" 'slotname) :int)
	(#.(swig-lispify "Entrpy" 'slotname) :double)
	(#.(swig-lispify "MltEnpy" 'slotname) :double)
	(#.(swig-lispify "Type" 'slotname) #.(swig-lispify "ZxcTypeMatch_t" 'enumname))
	(#.(swig-lispify "Next" 'slotname) :pointer))

(cl:export '#.(swig-lispify "ZxcMatch" 'classname))

(cl:export '#.(swig-lispify "Begin" 'slotname))

(cl:export '#.(swig-lispify "Length" 'slotname))

(cl:export '#.(swig-lispify "Entrpy" 'slotname))

(cl:export '#.(swig-lispify "MltEnpy" 'slotname))

(cl:export '#.(swig-lispify "Type" 'slotname))

(cl:export '#.(swig-lispify "Next" 'slotname))

(cffi:defcfun ("ZxcvbnMatch" #.(swig-lispify "ZxcvbnMatch" 'function)) :double
  (Passwd :string)
  (UserDict :pointer)
  (Info :pointer))

(cl:export '#.(swig-lispify "ZxcvbnMatch" 'function))

(cffi:defcfun ("ZxcvbnFreeInfo" #.(swig-lispify "ZxcvbnFreeInfo" 'function)) :void
  (Info :pointer))

(cl:export '#.(swig-lispify "ZxcvbnFreeInfo" 'function))


