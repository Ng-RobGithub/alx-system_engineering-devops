=========================Attack is the best defense========================

Task 0. ARP spoofing and sniffing unencrypted traffic
Any information that is not encrypted and sniffed by an attacker can be seen by the attacker - that could be your email password or credit card information. While today’s network security is much stronger than it used to be, there are still some legacy systems that are using unencrypted communication means. A popular one is telnet.

In this project, we will not go over ARP spoofing, but we’ll start by sniffing unencrypted traffic and getting information out of it.

Sendgrid offers is an emailing service that provides state of the art secure system to send emails, but also supports a legacy unsecured way: telnet. You can create an account for free, which is what I did, and send an email using telnet:

I wrote the script user_authenticating_into_server that performs the authentication steps that I just showed above. Your mission is to execute user_authenticating_into_server locally on your machine and, using tcpdump, sniff the network to find my password. Once you find it, paste the password in your answer file. This script will not work on a Docker container or Mac OS, use your Ubuntu vagrant machine or any other Linux machine.

Task 1. Dictionary attack

Password-based authentication systems can be easily broken by using a dictionary attack (you’ll have to find your own password dictionary). Let’s try it on an SSH account.

Install Docker on your machine Ubuntu
Pull and run the Docker image sylvainkalache/264-1 with the command docker run -p 2222:22 -d -ti sylvainkalache/264-1
Find a password dictionary (you might need multiple of them)
Install and use hydra to try to brute force the account sylvain via SSH on the Docker container
Because the Docker container is running locally, hydra should access the SSH account via IP 127.0.0.1 and port 2222
Hint: the password is 11 characters long
Once you found the password, share it in your answer file.
