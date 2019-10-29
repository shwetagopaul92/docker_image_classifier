# pull tensorflow base docker image
FROM tensorflow/tensorflow:1.5.0-py3

# maintainer details
MAINTAINER Shweta Gopal "sgopal@tacc.utexas.edu"

# create a demo directory to store test images 
RUN mkdir /demo

# copy a cat image into the demo directory 
COPY egyptian_cat.jpg /demo 

# set working directory 
WORKDIR /usr/local/bin

# copy the python script into the working directory
COPY classify_image.py . 

# Set the command to allow for default settings of the docker image
CMD ["python", "./classify_image.py", "--image_file", "/demo/egyptian_cat.jpg"]










