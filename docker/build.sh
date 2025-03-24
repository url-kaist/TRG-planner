# A script for building the docker image for the TRG project
echo "Building the TRG docker image..."
# get directory of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# receive argument --ros (noetic or humble)
while [[ "$#" -gt 0 ]]; do
  case $1 in
    --ros)
      ROS_VERSION_NAME="$2"
      shift 2
      ;;
    *)
      echo "Unknown parameter: $1"
      exit 1
      ;;
  esac
done

# change to the directory of the dockerfile depending on the distro
if [ "$ROS_VERSION_NAME" == "noetic" ]; then
    cd $DIR/../docker/ros1/noetic
elif [ "$ROS_VERSION_NAME" == "humble" ]; then
    cd $DIR/../docker/ros2/humble
else
    echo "Unknown ROS version: $ROS_VERSION_NAME"
    exit 1
fi

# build the docker image
docker build -t trg:$ROS_VERSION_NAME .
