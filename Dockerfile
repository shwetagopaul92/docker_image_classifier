# pull tensorflow base docker image
FROM tensorflow/tensorflow:1.5.0-py3

# maintainer details
MAINTAINER Shweta Gopal "sgopal@tacc.utexas.edu" 

# set working directory 
WORKDIR /usr/local/bin

# copy the python script into the working directory
COPY classify_image.py .

# set the command to display a help message on how to use this image
CMD echo "To use this image: docker run -v /hostdirectory_withimage:/data reshg/image_classifier:latest python ./classify_image.py --model_dir /model --image_file /data/imagename.jpg"









