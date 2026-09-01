(in-package #:http-encoding-snappy/tests)

(defun run-conformance ()
  (http-protocol/conformance:run-for-codings http-encoding-snappy:+codings+))
