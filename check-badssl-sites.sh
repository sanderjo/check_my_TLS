lynx --dump https://badssl.com/ | awk '{ print "./check_my_TLS.py " $2 }' | grep https: | /bin/sh > badssl-results.txt

