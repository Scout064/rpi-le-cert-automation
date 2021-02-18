#!/bin/bash
  # send mails via external-mail-server that supports smpt-authentication via password
  # behind -xu needs to be the username that is used to smpt-login to the server, in this case it is equal to sender's mail address, but does not necessarily need to be the same!
sendemail -o tls=yes -s yourmx.server.com -f recipient@domain.com -t sender@domain.com -u "E-mail subject" -xu smtpuser@domain.com -xp "YourPassword" -m "E-Mail body" -a /Path/to/cert/cert.p12
