
#!/bin/bash
docker kill $(docker ps -q)
sh rm-containers-stopped.sh
