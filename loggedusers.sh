#!/bin/bash

# For all logged in users, show their real names and the time and date of their last login.

who | cut -d ' ' -f 1,10,11
