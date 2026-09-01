(defpackage #:http-encoding-snappy
  (:use #:cl #:http-protocol)
  (:export #:+codings+))
(in-package #:http-encoding-snappy)

(defparameter +codings+ '(:snappy)
  "Codings this backend implements.")
