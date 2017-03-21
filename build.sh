set -ex

# docker hub username
USERNAME=sungardas
# image name
IMAGE=oauth2_proxy

docker build -t $USERNAME/$IMAGE:latest .

