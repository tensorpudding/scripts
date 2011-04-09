#!/bin/sh
# Make Chrome fake a Safari User-Agent string
# Fuck you CBS, for blocking Google browsers on Hulu!
USER_AGENT="Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/534.8 (KHTML, like Gecko) Chrome/7.0.521.0 Safari/534.8"
google-chrome %U --user-agent=$USER_AGENT
