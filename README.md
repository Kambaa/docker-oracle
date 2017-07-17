# Docker Oracle database enviroment for development purposes.

Installation Instructions:
- Download oracle-xe-11.2.0-1.0.x86_64.rpm.zip From OTN (http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html)
- Put downloaded file into the 11.2.0.2 (Do not extract)
- begin installation command: sudo ./buildDockerImage.sh -x -v 11.2.0.2
- run container: sudo ./run-xe.sh
- set admin passwords: docker exec docker-oracle /u01/app/oracle/setPassword.sh <YOUR_NEW_ADMIN_PASSWORD>


This will create a new container named docker-oracle and system password will be set to 1234565.
Web port is setup 48080


## Todos:
- Fix readme
- Add server start/stop
- Add file cleanup
- add schema with credentials

More On: https://github.com/oracle/docker-images/tree/master/OracleDatabase
