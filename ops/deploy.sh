git clone git@github.com:MannySchneck/site.git
cd site/ops/nginx
docker build -f Dockerfile.nginx -t my-nginx .
cd ../..
docker run -p 80:80 -d -v $(pwd)/site/html:/www:ro my-nginx
