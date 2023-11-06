#!/bin/sh
#
# https://github.com/offlinehoster
#
# example: ./ssltest.sh domain.tld port


for CERT in \
  $1:$2
do
  echo |\
  openssl s_client -connect ${CERT} 2>/dev/null |\
  sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' |\
  openssl x509 -noout -subject -serial -dates -issuer
done
