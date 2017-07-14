# Docker Oracle database enviroment for development purposes.

Installation Instructions:
- Download oracle-xe-11.2.0-1.0.x86_64.rpm.zip From OTN
- Put downloaded file into the 11.2.0.2 (Do not extract)
- begin installation command: sudo ./buildDockerImage.sh -x -v 11.2.0.2
- run container: sudo ./run-xe.sh


This will create a new container named docker-oracle and system password will be set to 1234565.
Web port is setup 48080


## Todos:
- Fix readme
- Add server start/stop
- Add file cleanup