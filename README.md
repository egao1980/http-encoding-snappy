# http-encoding-snappy

MIT. **`snappy`** Content-Encoding adapter for [`http-protocol`](https://github.com/egao1980/http-protocol).
Bytes go through [`compression-protocol`](https://github.com/egao1980/compression-protocol);
[`cl-stack-snappy`](https://github.com/egao1980/cl-stack-snappy) implements `:snappy`. Soft for
consumers — omit from `Accept-Encoding` when unavailable. Wire is **raw** Snappy (not framed).

```bash
# CI: canned cl-repository test-system.yml. Deps from ghcr.io/egao1980/cl-systems.
# Local: (asdf:test-system "http-encoding-snappy")
```

## Publish

```bash
gh workflow run publish-checkout.yml -R egao1980/http-encoding-snappy
```
