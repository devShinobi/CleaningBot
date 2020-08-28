## For windows
1. Install Docker Desktop. 
2. Install XMING.
3. Install git bash(this is optional).
4. Clone the repo or Create a directory and move the docker file there.
6. Open a command prompt/ terminal and cd to the directory where Dockerfile is present.
7. On the terminal run `docker build ./ -t DevEnvmnt` here DevEnvmnt is the tag
8. To get IP Address of XMING start XMING by clicking on XLAUNCH. Go with the defaults and once it starts, go to taskpane and right click on the XMING icon. Open the log there you can find the IP address where XMING is pointing to. Note it down as we need it in the next step.
9. Setup the DISPLAY variable On the terminal `DISPLAY="<IP ADDRESS OF XMING>:0"` ( if you are using windows cmd then set DISPLAY="IP ADDRESS OF XMING:0") 
10. On the terminal run `docker image ls` (this command shows the images that have are available on your local) 
11. Note down the image id of the image with your tag  
12. On the command prompt run `docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY <ImageId from previos step>`

      -v /tmp/.X11-unix:/tmp/.X11-unix is for port forwarding so that we can run simulations to see what is happening with our bot

      -e DISPLAY=$DISPLAY will set the environment variable for the X11 port forwarding from docker to our machines(docker env has only terminal no GUI)

Your dev env is ready(you can also use this for linux as we are mostly using gitbash which is similar to terminal in linux)
