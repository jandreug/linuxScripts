#!/bin/bash

# Gather all users in the system. Show only the first 5 users alphabetically.
# The last one logged in has to be removed.
# Print the name of the user removed and the date he logged last.

echo "Todos los usuarios (sin el último): $(cut -d: -f1 /etc/passwd | sort | head -n -1 | head -n 5 | tr '\n' ' ')" && \
echo -n "Último usuario removido: $(cut -d: -f1 /etc/passwd | sort | tail -n 1) " && \
last -n 1 $(cut -d: -f1 /etc/passwd | sort | tail -n 1) | awk 'NR==1{print $1, $4, $5, $6, $7}'
