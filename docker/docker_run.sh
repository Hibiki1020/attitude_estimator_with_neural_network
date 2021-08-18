#!/bin/bash

image_name="attitude_estimator_with_neural_network"
tag_name="docker"
root_path=$(pwd)

# /media/amsl/96fde31e-3b9b-4160-8d8a-a4b913579ca21
# is ssd path in author's environment

xhost +
docker run -it --rm \
	--gpus all \
	--privileged \
	--env="DISPLAY" \
	--env="QT_X11_NO_MITSHM=1" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --net=host \
    -v /home/kawai/airsim_dataset:/home/ssd_dir \
	-v /home/kawai/num_regression_attitude_estimator_log:/home/num_regression_attitude_estimator_log \
	-v /home/kawai/deep_visual_gravity_vector_detection_for_unmanned_aircraft_attitude_estimation_log:/home/deep_visual_gravity_vector_detection_for_unmanned_aircraft_attitude_estimation_log \
	$image_name:$tag_name