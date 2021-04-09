#!/bin/sh

banner()
{
  echo "
###########################################
# ${@}
###########################################"

}
banner "Testing List of users"
./pi pingone list users

banner "Testing List of groups"
./pi pingone list groups

banner "Testing List of populations"
./pi pingone list populations

banner "add population"
./pi pingone add population "pi test pop"

banner "add group"
./pi pingone add group "pi test pop" "pi test group"

banner "add user"
./pi pingone add user "pi test pop" "pi-test-user@_example.com" pi-test-First pi-test-Last

banner "add-user-group"
./pi pingone add-user-group "pi-test-user@_example.com" "pi test group"

banner "get user"
./pi pingone get user "pi-test-user@_example.com"

banner "get group"
./pi pingone get group "pi test group"


banner "delete-user-group"
./pi pingone delete-user-group "pi-test-user@_example.com" "pi test group"

banner "delete user"
./pi pingone delete user "pi-test-user@_example.com"

banner "delete group"
./pi pingone delete group "pi test group"

banner "delete population"
./pi pingone delete population "pi test pop"