# my-dockerfile-templates
Just my collection of Dockerfile templates for various language environments

This README assumes you have installed Docker for your platform through their suggested instructions.

# Building images

Each language environment's Dockerfile is in its own directory in this repo. To start working with that environment, you should `cd` into its directory

To build the image, run the following command:

`docker build -t my-dockerfile-template .`

This will build an image with the tag `my-dockerfile-template` and store it in your local Docker registry. This image could be pushed up to a public registry such as Docker Hub or GitHub Container Registry if you wished.

# Running images

Assuming you used the tag name above, you can simply run the following command to run the image that was created:

`docker build -t my-dockerfile-template`