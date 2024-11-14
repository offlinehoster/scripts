#!/bin/bash 
# offlinehoster

# $1 mailserver
# $2 port
# $3 recipient
# $4 sender
# $5 message


(echo "ehlo $1"
sleep 2
echo "mail from: $4"
sleep 2
echo "rcpt to: $3"
sleep 2
echo "data"
sleep 2
echo "From: Sender <$4>"
sleep 2
echo "Content-Type: text/plain; charset="utf-8""
sleep 2
echo "To: Recipient <$3>"
sleep 2
echo "Subject: Testmail from $4. AÄÖÜ . EOM"
sleep 2
echo "Hello, this is just a testmail. For questions ask $4. $5"
sleep 1
echo "."
sleep 1
echo "quit"
sleep 1
) | telnet $1 $2
