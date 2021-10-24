#!/bin/sh
exec env \
	CERTFILE:void-docs.erico.dev=certs/cert2.pem KEYFILE:void-docs.erico.dev=certs/key2.pem \
	KEYFILE=certs/key.pem CERTFILE=certs/cert.pem \
	s6-tlsserver -k1 0.0.0.0 1965 \
	bwrap --ro-bind /usr /usr --symlink usr/lib /lib \
		--proc /proc --dev /dev \
		--ro-bind $PWD/gemini /gemini --ro-bind $PWD/lc19 /lc19 --unshare-pid \
	/lc19 --data-dir=/gemini
