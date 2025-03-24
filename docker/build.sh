# A script for building the docker image for the TRG project
echo "Building the TRG docker image..."
# get directory of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# receive argument --ros (noetic or humble)
while [[ "$#" -gt 0 ]]; do
  case $1 in
    --ros)
      ROS_DISTRO="$2"
      shift 2
      ;;
    *)
      echo "Unknown parameter: $1"
      exit 1
      ;;
  esac
done

# change to the directory of the dockerfile depending on the distro
if [ "$ROS_DISTRO" == "noetic" ]; then
    cd $DIR/../docker/ros1/noetic
elif [ "$ROS_DISTRO" == "humble" ]; then
    cd $DIR/../docker/ros2/humble
fi

# build the docker image
docker build -t trg:$ROS_DISTRO .
