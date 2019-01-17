# Docker Oracle database enviroment for development purposes.

Installation Instructions:
- Download oracle-xe-11.2.0-1.0.x86_64.rpm.zip From OTN (http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html)
- Put downloaded file into the 11.2.0.2 (Do not extract)
- begin installation command: sudo ./buildDockerImage.sh -x -v 11.2.0.2
    if timeouts occur while yum updates in this step, configure your docker daemon to use your computer's dns information.
    Get your computer's dns info with this command.
    ```
        $ nmcli dev show | grep 'IP4.DNS'
        IP4.DNS[1]:                             10.0.0.2
    ```
    And then create a file for the docker daemon.     
    
     ```
        $ sudo nano /etc/docker/daemon.json
        
        # Add these information and save the file
        {
            "dns": ["10.0.0.2", "8.8.8.8"]
        }
        
        # Last, restart docker service
        $ sudo service docker restart
    ```
    more info on : https://github.com/oracle/docker-images/issues/240#issuecomment-402456898

- run container: sudo ./run-xe.sh
- set admin passwords: docker exec docker-oracle /u01/app/oracle/setPassword.sh <YOUR_NEW_ADMIN_PASSWORD>


This will create a new container named docker-oracle and system password will be set to 1234565.
Web port is setup 48080 

Goto: http://localhost:48080/apex/apex_admin  (username: admin password: 1234565)
Create a workspace (remember your entered passwords) and create a user for sqldeveloper access
Connect using the passwords you've given.(SqlDeveloper etc.)

Alternative Method: 

```sql

CREATE USER <USERNAME> IDENTIFIED BY <PASSWORD>;
GRANT RESOURCE TO <USERNAME>;
GRANT CONNECT TO <USERNAME>;
GRANT CREATE VIEW TO <USERNAME>;
GRANT CREATE SESSION TO <USERNAME>;
GRANT UNLIMITED TABLESPACE TO <USERNAME>;  -- optional
GRANT DBA TO <USERNAME>; -- optional

```


## Todos:
- Add server start/stop
- Add file cleanup
+ add schema with credentials

More On: https://github.com/oracle/docker-images/tree/master/OracleDatabase
