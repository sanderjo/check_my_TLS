lynx --dump 'http://www.alexa.com/topsites' | grep siteinfo | awk -F/ '{ print $NF }' | grep '\.' | sort -u | awk -F/ '{ print "./check_my_TLS.py www."  $NF }' | /bin/sh > alexa-top50-results.txt

