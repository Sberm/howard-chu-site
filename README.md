# Howard Chu's personal website

> Thanks Docusaurus!

Development
~~~bash
sh dev.sh
~~~

Deployment
~~~bash
docker build -t sberm/howard-chu-site .
docker run --rm -it -p 80:80 -d --name homepage sberm/howard-chu-site
~~~

Stop
~~~bash
docker stop homepage
~~~