#!/bin/bash

# For all logged in users, show their real names and the time and date of their last login.

who -u | awk '{print $1, $3, $4}'
