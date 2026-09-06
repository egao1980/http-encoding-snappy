(in-package #:http-encoding-snappy)

(defmethod decode-content-coding ((coding (eql :snappy)) (input stream) &key)
  (compression-protocol:make-decompressing-stream input :algorithm :snappy))

(defmethod decode-content-coding ((coding (eql :snappy)) input &key)
  (compression-protocol:decompress (coerce-to-octets input) :algorithm :snappy))

(defmethod encode-content-coding ((coding (eql :snappy)) (input stream) &key level quality)
  (declare (ignore quality))
  (make-octet-input-stream
   (compression-protocol:compress input :algorithm :snappy :level level)))

(defmethod encode-content-coding ((coding (eql :snappy)) input &key level quality)
  (declare (ignore quality))
  (compression-protocol:compress (coerce-to-octets input) :algorithm :snappy
                                 :level level))
