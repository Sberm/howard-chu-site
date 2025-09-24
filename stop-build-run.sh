docker stop homepage
docker build -t sberm/howard-chu-site .
docker run --rm -it -p 80:80 -d --name homepage sberm/howard-chu-site