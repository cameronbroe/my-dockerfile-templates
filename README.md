# my-dockerfile-templates ![](https://github.com/cameronbroe/my-dockerfile-templates/actions/workflows/test.yml/badge.svg?branch=main) [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](code_of_conduct.md) 
Just my collection of Dockerfile templates for various language environments. There is a particular emphasis in simplicity with these Dockerfiles. Each one should be a simple "Hello, world!" for that given language's environment. They should be able to be copied over to your project with minimal changes needed to get you up and running.

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
* [Raku/Perl6](raku/Dockerfile)
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

# Running tests

The tests are entirely contained within `run_tests.sh`. As on as Docker is set up on your system and in your PATH, just run the tests with the command:

`./run_tests.sh`

These tests are also ran on PRs to `main` as well as pushes to `main` through GitHub Actions.

# Contributing

I am open to contributions with improvements and new languages/environments. New languages/environments should be automatically tested by `run_tests.sh` and pass in CI before I will merge them in. In general, please strive to keep these templates as simple as possible. However, if the language is one with build artifacts (e.g C++, Rust, Golang), I do think a multi-stage build approach is appropriate. If you are unfamiliar with multi-stage builds, refer to [Docker's documentation](https://docs.docker.com/develop/develop-images/multistage-build/).