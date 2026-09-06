(defsystem "http-encoding-snappy"
  :version "0.1.1"
  :description "snappy Content-Encoding adapter over compression-protocol"
  :author "egao1980"
  :license "MIT"
  :depends-on ("http-protocol" "compression-protocol" "cl-stack-snappy")

  :serial t
  :pathname "src"
  :components ((:file "package")
               (:file "backend"))
  :in-order-to ((test-op (test-op "http-encoding-snappy/tests"))))

(defsystem "http-encoding-snappy/tests"
  :depends-on ("http-encoding-snappy" "http-protocol/conformance" "rove")
  :pathname "tests"
  :serial t
  :components ((:file "package")
               (:file "conformance"))
  :perform (test-op (o c)
             (unless (symbol-call :http-encoding-snappy/tests :run-conformance)
               (error "http-protocol/conformance failed for snappy"))))
