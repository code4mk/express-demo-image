
docker build \
 --platform "linux/amd64" \
 --file dockerfiles/express.dockerfile \
 --tag "express_demo:1.0.1" .