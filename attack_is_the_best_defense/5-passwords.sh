#!/bin/bash
openssl enc -aes-256-cbc -salt -in /tmp/my_passwords.txt -out /tmp/my_passwords.txt.enc
