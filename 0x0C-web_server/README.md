=============================0x0C-web_server=============================
Task 0. Transfer a file to your server
mandatory
Write a Bash script that transfers a file from our client to a server:

Task 1. Install nginx web server
write a Bash script that configures a new Ubuntu machine to respect above requirements
(this script will be run on the server itself)

Task2 2. Setup a domain name
mandatory
.TECH Domains is one of the top domain providers. They are known for the stability and quality of their DNS hosting solution. We partnered with .TECH Domains so that you can learn about DNS.

YOU can have a free .tech domain for 1 year by following these steps:

Access the tools space
Unlock the GitHub student pack: WARNING - this invitation link is unique to you and can’t be reclaimed! If you have any issue, please contact GitHub education support

Task 3. Redirection
mandatory
Readme:

Replace a line with multiple lines with sed
Configure your Nginx server so that /redirect_me is redirecting to another page.

Task 4. Not found page 404
mandatory
Configure your Nginx server to have a custom 404 page that contains the string Ceci n'est pas une page.

Task 5. Install Nginx web server (w/ Puppet)
#advanced
Time to practice configuring your server with Puppet! Just as you did before, we’d like you to install and configure an Nginx server using Puppet instead of Bash. To save time and effort, you should also include resources in your manifest to perform a 301 redirect when querying /redirect_me.
