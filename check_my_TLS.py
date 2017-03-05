#!/usr/bin/env python

import sys
import urllib2


url = sys.argv[1]

if url.find('http')<0:
	# not found
	url = 'https://' + url

print url, 
try:
	response = urllib2.urlopen(url, timeout=3)
	print "OK"
except:
	print "Not OK"

