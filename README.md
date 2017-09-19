docker-diagrams
===============

A Docker appliance to make it easy to use [diagrams](https://github.com/francoislaberge/diagrams) to build
useful UML diagrams.

To use it, just run `docker run --rm dathan/docker-diagrams` from the directory where your diagram source
files exist.

Development
-----------

If you update the dependencies, please generate a new lockfile by running `make update-packages`
and committing the updated lockfile.
