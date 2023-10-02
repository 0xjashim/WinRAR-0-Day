#!/bin/bash

# Define the input string
input="=Q*************Yi5iUzQFNMt0Y0IE*************w1WZ0x1c39GZul2dcpzY"

# Replace "*************" with "X"
result=$(echo "$input" | sed 's/\*\*\*\*\*\*\*\*\*\*\*\*\*/X/g')

# Reverse the output string
reversed_result=$(echo "$result" | rev)

# Base64 encode the reversed result and decode it
decoded_result=$(echo "$reversed_result" | base64 -d)

# Print the decoded result
echo "$decoded_result"
