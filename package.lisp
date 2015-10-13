;;;; package.lisp

(defpackage #:dynamic-environments
  (:use #:cl)
  (:export #:dynamic-environment
           #:make-dynamic-env
           #:resume-env
           #:with-dynamic-env))
