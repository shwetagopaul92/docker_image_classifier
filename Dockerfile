# pull tensorflow base docker image
FROM tensorflow/tensorflow:1.5.0-py3

# maintainer details
MAINTAINER Shweta Gopal "sgopal@tacc.utexas.edu" 

# set working directory as root directory
WORKDIR /

# copy the python script into root directory 
COPY classify_image.py .

# make the classification python script executable
RUN ["chmod", "+x", "classify_image.py"]

# set the command to display a help message on how to use this image
CMD echo "To use this image: docker run -v /hostdirectory_withimage:/data reshg/image_classifier:latest ./classify_image.py --model_dir /model --image_file /data/imagename.jpg"









