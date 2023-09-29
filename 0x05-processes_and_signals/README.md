===================================0x05-processes_and_signals===============================================

Task0. What is my PID
mandatory
Write a Bash script that displays its own PID.

Task1. List your processes
mandatory
Write a Bash script that displays a list of currently running processes.

Task2. Show your Bash PID
mandatory
Using your previous exercise command, write a Bash script that displays lines containing the bash word,
thus allowing you to easily get the PID of your Bash process.

Task3. Show your Bash PID made easy
mandatory
Write a Bash script that displays the PID, along with the process name,
of processes whose name contain the word bash.

Task4. To infinity and beyond
mandatory
Write a Bash script that displays To infinity and beyond indefinitely.

Task5. Don't stop me now!
mandatory
We stopped our 4-to_infinity_and_beyond process using ctrl+c in the previous task, there is actually another way to do this.

Task6. Stop me if you can
mandatory
Write a Bash script that stops 4-to_infinity_and_beyond process.

Task7. Highlander
mandatory
Write a Bash script that displays:

To infinity and beyond indefinitely
With a sleep 2 in between each iteration
I am invincible!!! when receiving a SIGTERM signal

Task8. Beheaded process
mandatory
Write a Bash script that kills the process 7-highlander.

Task9. Process and PID file
#advanced
Write a Bash script that:

Creates the file /var/run/myscript.pid containing its PID
Displays To infinity and beyond indefinitely
Displays I hate the kill command when receiving a SIGTERM signal
Displays Y U no love me?! when receiving a SIGINT signal
Deletes the file /var/run/myscript.pid and terminates itself when receiving a SIGQUIT or SIGTERM signal

Task10. Manage my process
Write Bash (init) script 101-manage_my_process that manages manage_my_process. (both files need to be pushed to git)

Task11. Zombie
Write a C program that creates 5 zombie processes.
