#!/bin/bash - 
#===============================================================================
#
#          FILE: test.sh
# 
#         USAGE: ./test.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/03/2017 21:36
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
echo "Example that should have no hits"
fail2ban-regex no-block-example.log ~/Projects/fail2ban-wordpress-login/filter.d/nginx-wordpress-login.conf


echo "Example that should have one hit"
fail2ban-regex example.log ~/Projects/fail2ban-wordpress-login/filter.d/nginx-wordpress-login.conf

echo "Example with 500 should have one hit"
fail2ban-regex example500.log ~/Projects/fail2ban-wordpress-login/filter.d/nginx-wordpress-login.conf

echo "Example with xmlrpc should have one hit"

fail2ban-regex exampleXMLRPC.log ~/Projects/fail2ban-wordpress-login/filter.d/nginx-wordpress-login.conf


