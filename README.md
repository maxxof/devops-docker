## How to run part 1 application:

1. Clone an application to your computer:
https://github.com/miniprojektiryhmaviisi/miniprojekti

2. In root directory use this command to pull Dockerfile:
   
    `$ docker pull maxxof/miniprojekti-docker`

3. Build the docker image with command:

   `$ docker build -t miniprojekti-docker .`

4. Run container interactively:

   `$ docker run -it miniprojekti-docker`

[Link to the Dockerfile](https://hub.docker.com/r/maxxof/miniprojekti-docker)
