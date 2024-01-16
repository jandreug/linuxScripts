#!/bin/bash

# Change all words in a file that match the parameters.
# Example: replacewords.sh file.txt wordToReplace wordToBeReplacedWith

sed -i 's/wordToReplace/wordToBeReplacedWith/g' file.txt
