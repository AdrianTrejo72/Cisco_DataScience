# Cisco_DataScience
Cisco DataScience workshop

image with python,pandas numpy and jupyter Lab

build the image:
> docker build -t ciscodata:v1 . 
'.' is my Dockerfile in the root directory
pyproject.toml - all Virtual environment dependencies

run the container, it needs port mapping to launch jupyter from the container to my host machine
> docker run -it --rm -p 8888:8888 --entrypoint=bash ciscodata:v1

Contianer should be running now, inside the container run Jupyter
> jupyter notebook --ip 0.0.0.0 --no-browser --allow-root

On host browser search for:
 http://127.0.0.1:8888/tree?token=****
 

    