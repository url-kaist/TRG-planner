# A script for building the docker image for the TRG project
echo "Building the TRG docker image..."
# get directory of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# change to the directory of the dockerfile
cd $DIR/ros1/noetic

docker build -t trg:noetic .
