#!/bin/sh
brssl skey -gen ec -rawpem key${N}.pem
x509cert -d 10y key${N}.pem "CN=${CN:-erico.dev}" > cert${N}.pem
