#!/bin/sh

echo "
###########################################
# Testing List of users
###########################################"
./pi pingone list users

echo "
###########################################
# Testing List of groups
###########################################"
./pi pingone list groups

echo "
###########################################
# Testing List of populations
###########################################"
./pi pingone list populations

echo "
###########################################
# Testing population, group, user
###########################################"
echo "# add population"
./pi pingone add population "pi test pop"
echo "# add group"
./pi pingone add group "pi test pop" "pi test group"
echo "# add user"
./pi pingone add user "pi test pop" "pi-test-user@_example.com" pi-test-First pi-test-Last

echo "# add-user-group"
./pi pingone add-user-group "pi-test-user@_example.com" "pi test group"

echo "# get user"
./pi pingone get user "pi-test-user@_example.com"
echo "# get group"
./pi pingone get group "pi test group"


echo "# delete-user-group"
./pi pingone delete-user-group "pi-test-user@_example.com" "pi test group"

echo "# delete user"
./pi pingone delete user "pi-test-user@_example.com"
echo "# delete group"
./pi pingone delete group "pi test group"
echo "# delete population"
./pi pingone delete population "pi test pop"

  # pi pingone get [user | group ] {username | name}               # List object

  # pi pingone add user  {population} {username} {first} {last}    # Create user
  # pi pingone add group {population} {name}                       # Create group

  # pi pingone delete user  {username}                             # Delete user
  # pi pingone delete group {name}                                 # Delete group

  # pi pingone add-user-group {username} {group}                   # Add group to user
  # pi pingone delete-user-group {username} {group}                # Delete group from user

