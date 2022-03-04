1. Run elevate.bat to open an elevated DOS window. This can be done from powershell with 'start elevate' if the directory is in your path. 

2. Run one of the batch files described below depending on goals.

Note: Any file creating a connection can use either host name or IP. 

---------------------------------------

Elevate.bat:
Opens an elevated DOS prompt. 


Remotedos.bat:
Establishes remote DOS session with machine. No other function.


Remotepol.bat:
Copies updatepol.bat to target, then opens remote DOS shell to target. 


Updatepol.bat:
Executes a series of cmdagent commands after finding the correct path. 
Needs to be copied to target machine first by either remotepol or polex. 


Polex.bat:
Copies updatepol.bat to host and executes in one move using Psexe. 
This should be able to replace both remotedos & updatepol if updating policies is all you want to do.


Remotedos.bat: