## Érico's gemini place

### How to use

Create certs in `certs/` using with `generate.sh`, which requires
[x509cert(1)](https://x509cert.mforney.org/x509cert.1.html).

Copy [lc19](https://sr.ht/~thededem/lc19/) executable to directory, install
[s6-networking](https://skarnet.org/software/s6-networking/), and run
`host.sh`.

#### void-docs

If you want to use `void-docs.erico.dev` domain, it's necessary to generate
certs with `N=2` and `CN=void-docs.erico.dev`. Files should be generated from a
[void-docs](https://github.com/void-linux/void-docs) repository and copied
here:

```sh
$ cp -r book/gemini/* /path/to/ericonr-gemini/gemini/void-docs.erico.dev/1965/
```
