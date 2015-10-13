;;;; dynamic-environments.lisp

(in-package #:dynamic-environments)

(defstruct (dynamic-environment (:constructor %make-dynamic-environment))
  (variables)
  (values))

(defun make-dynamic-env (&rest vars)
  (%make-dynamic-environment
   :variables vars
   :values (mapcar #'symbol-value vars)))

(defun resume-env (env thunk &rest args)
  (check-type env dynamic-environment)
  (progv
      (dynamic-environment-variables env)
      (dynamic-environment-values env)
    (apply #'funcall thunk args)))

(defmacro with-dynamic-env ((env) &body body)
  `(call-with-dynamic-environment ,env (lambda () ,@body)))
