# Default settings
CUDA="on"
IMAGE_NAME="autoware/autoware"
TAG_PREFIX="1.13.0-melodic-cuda"
ROS_DISTRO="melodic"
BASE_ONLY="false"
PRE_RELEASE="off"
PROJECT_NAME="CarlaPoc_AutoPF_UE4"
AUTOWARE_HOST_DIR=""
USER_ID="$(id -u)"

CREDENTIAL="https://jiangmin3737:Conrade37@github.com"

echo "build docker image begin ..."
docker pull autoware/autoware:1.13.0-melodic-cuda

BASE=$IMAGE_NAME:$TAG_PREFIX

docker build \
    --rm=true \
    --tag $IMAGE_NAME:$PROJECT_NAME \
    --build-arg FROM_ARG=$BASE\
    --build-arg CREDENTIAL_ARG=$CREDENTIAL \
    --file Dockerfile.carlaautoware .

