# Cisco_DataScience
Cisco DataScience workshop

image with python,pandas numpy

build the image:
docker build -t ciscodata:v1 . # . is my Dockerfile in the root directory
    * python dependencies

run the container
docker run -it --rm --entrypoint=bash ciscodata:v1

or only execute the uv jupyter lab
    uv run jupyter lab
    