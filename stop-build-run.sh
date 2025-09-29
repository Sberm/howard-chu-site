docker stop homepage
docker rm homepage
docker build -t sberm/howard-chu-site .
# use --restart unless-stopped to keep it running after a reboot
docker run -p 80:80 -d --restart unless-stopped --name homepage sberm/howard-chu-site