================================================================================                   
          Enterprise Session Monitor (ESM) AGENT, version 1.*
================================================================================ 

Starting and Stopping the ESM Agent on Linux / UNIX:

----------------------------------------------------------------
To start the ESM Agent, execute this command:
 bin/esm-agent.sh start


----------------------------------------------------------------
To stop the ESM Agent, execute this command:
 bin/esm-agent.sh stop

================================================================================

Changing ESM Agent settings
---------------------------------------
The ESM Agent settings file is located in the 'conf/' 
sub-directory where the ESM Agent is installed. The file is named 'esmconfig.sh'.
You can change server address or port number of server.
More details are available in this file.

================================================================================

Reading the ESM Agent Log Files
---------------------------------------
The ESM Agent log files are located in the 'logs/' 
sub-directory where the ESM Agent is installed. The log file is named 'esmAgent.log'.
The log is a text file and can be opened and read with any text viewer or editor.