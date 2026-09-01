(in-package #:http-encoding-snappy)

(defmethod decode-content-coding ((coding (eql :snappy)) (input stream) &key)
  (cl-stack-snappy:make-decompressing-stream input))

(defmethod decode-content-coding ((coding (eql :snappy)) input &key)
  (cl-stack-snappy:decompress (coerce-to-octets input)))

(defmethod encode-content-coding ((coding (eql :snappy)) (input stream) &key level quality)
  (declare (ignore quality))
  (cl-stack-snappy:make-compressing-stream input :level level))

(defmethod encode-content-coding ((coding (eql :snappy)) input &key level quality)
  (declare (ignore quality))
  (cl-stack-snappy:compress (coerce-to-octets input) :level level))
