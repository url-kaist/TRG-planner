#!/bin/bash

# ===== Default values =====
DISPLAY_ID=":0"
PROJECT_NAME="base"

# ===== Parse arguments =====
while [[ "$#" -gt 0 ]]; do
  case $1 in
    --display)
      DISPLAY_ID=":$2"
      shift 2
      ;;
    --project)
      PROJECT_NAME="$2"
      shift 2
      ;;
    *)
      echo "Unknown parameter: $1"
      exit 1
      ;;
  esac
done
# ===== Setup env vars =====
export DISPLAY=$DISPLAY_ID
export XAUTHORITY=${XAUTHORITY:-$HOME/.Xauthority}
export PROJECT_NAME=$PROJECT_NAME

echo "[*] Using DISPLAY=$DISPLAY"
echo "[*] XAUTHORITY=$XAUTHORITY"

# ===== Allow safe local X11 access =====
xhost +local:docker

# ===== Run docker-compose =====
docker compose -f docker/ros1/noetic/docker-compose.yml -p "$PROJECT_NAME" up



# ===== Cleanup =====
xhost -local:docker
