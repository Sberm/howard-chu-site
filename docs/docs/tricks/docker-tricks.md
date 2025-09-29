# Docker Tricks
Pass --rm to remove the container once it exits
~~~bash
docker run --rm
~~~

~~~bash
docker container prune
~~~
works as well

~~~bash
docker -d
~~~

is detach mode

~~~bash
pip --no-cache-dir
~~~
makes the image smaller

~~~bash
docker --name foo
~~~
set the name of the container

~~~bash
docker container ls
~~~
`docker ls` seems to be broken

~~~bash
docker logs es
~~~
can print the logs

COPY is the same as ADD

~~~bash
docker run -it --rm yourusername/foodtrucks-web bash
~~~
this starts the container by running a bash (since bash overwrites the CMD)