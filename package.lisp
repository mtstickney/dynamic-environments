;;;; package.lisp

(defpackage #:dynamic-environments
  (:use #:cl)
  (:nicknames #:d-env)
  (:export #:dynamic-environment
           #:capture-env
           #:resume-env
           #:with-dynamic-env))
