# my-dockerfile-templates
Just my collection of Dockerfile templates for various language environments. There is a particular emphasis in simplicity with these Dockerfiles. They should be able to be copied over to your project with minimal changes needed to get you up and running.

This README assumes you have installed Docker for your platform through their suggested instructions.

# Languages

* [C](c-cmake/Dockerfile)
* [C++](cpp-cmake/Dockerfile)
* [C#/.NET](dotnet/Dockerfile)
* [Crystal](crystal/Dockerfile)
* [Go](golang/Dockerfile)
* [Java](java/Dockerfile)
* [JavaScript](nodejs/Dockerfile)
* [Python](python/Dockerfile)
* [Ruby](ruby/Dockerfile)
* [Rust](rust/Dockerfile)
* [Swift](swift/Dockerfile)

# Building images

Each language environment's Dockerfile is in its own directory in this repo. To start working with that environment, you should `cd` into its directory

To build the image, run the following command:

`docker build -t my-dockerfile-template .`

This will build an image with the tag `my-dockerfile-template` and store it in your local Docker registry. This image could be pushed up to a public registry such as Docker Hub or GitHub Container Registry if you wished.

# Running images

Assuming you used the tag name above, you can simply run the following command to run the image that was created:

`docker run --rm -t my-dockerfile-template`
