## devops_docker_implementation
Docker file for automating the web development tasks 



Commands from your system's terminal to run the docker : 


1. cd /path-to-your-dockerfile/

2. docker build -t utsav-container-image .

3. docker run -d -p 9000:80 utsav-container-image ( Map Port 9000 to port 80 in the container )

# To Verify from the CLI : 

 curl http://localhost:9000/site/index.html



