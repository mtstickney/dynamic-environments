;;;; package.lisp

(defpackage #:dynamic-environments
  (:use #:cl)
  (:export #:dynamic-environment
           #:capture-env
           #:resume-env
           #:with-dynamic-env))
