# http-encoding-snappy

MIT. **`snappy`** Content-Encoding backend for [`http-protocol`](https://github.com/egao1980/http-protocol).

Depends on [`cl-stack-snappy`](https://github.com/egao1980/cl-stack-snappy) (native overlay). Soft for consumers — omit from `Accept-Encoding` when unavailable. Wire is **raw** Snappy (not framed).

```bash
# siblings: http-protocol/ cl-stack-snappy/ http-encoding-snappy/
# natives: cl-stack-snappy/lib/<os>-<arch>/
ros -e '(asdf:test-system "http-encoding-snappy")'
```
