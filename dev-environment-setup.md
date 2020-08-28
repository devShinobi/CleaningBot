## For windows
1. Install Docker Desktop 
2. Install XMING
3. Install git bash(this is optional)
4. Clone the repo or Create a directory and move the docker file there
5. Open a command prompt and cd to the directory where Dockerfile is present
6. Open a command prompt/ teminal and cd to the directory where Dockerfile is present
7. On the terminal run `docker build ./ -t DevEnvmnt`
8. setup the DISPLAY variable On the terminal `DISPLAY="<IP ADDRESS OF XMING>:0>"` ( if you are windows cmd the set DISPLAY="<IP ADDRESS OF XMING>:0")
9. To get IP Address of XMING start XMING by clicking on XLAUNCH go with the defaults and once it starts go to taskpane and right click on the XMING icon and open the log there you can find the IP address where XMING is pointing to note it down we need it in the next step
10. On the termibal run docker image ls (this command with show the images that have are avaialble on your local) 
11. Note down the image id of the image with your tag  
12. On the command prompt run `docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY <ImageId from previos step>`

      -v /tmp/.X11-unix:/tmp/.X11-unix is for port foorwarding so that we can run simulations to see what is happening with our bot

      -e DISPLAY=$DISPLAY will set the environment variable for the X11 port forwarding from docker to our machines  

Your dev env is ready(you can also use this for linux as we are mostly using gitbash which is similar to terminal in linux)
