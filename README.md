# Attitude Estimator with Neural Network

This repository allows you to build a Docker environment to run a neural network to estimate posture (Roll, Pitch) from camera images.

# Contents
* [Class Identifer CNN Attitude Estimator](https://github.com/Hibiki1020/cnn_attitude_estimator)
* [Num Regression DNN Attitude Estimator](https://github.com/Hibiki1020/num_regression_attitude_estimator) based on [Ryota Ozaki's paper](https://ozakiryota.github.io/about_me/papers/icra_2021.pdf)
* [Other Number Regression DNN Attitude Estimator](https://github.com/Hibiki1020/deep_visual_gravity_vector_detection_for_unmanned_aircraft_attitude_estimation) based on [Gary Ellingson's paper](https://ieeexplore.ieee.org/document/8206443)

# How to build

Config docker_run.sh and mound dataset folder in docker

```
cd /docker
docker build -t attitude_estimator_with_neural_network:docker .
./docker_run.sh

```


# Train and Infer Dataset Format
Train and Infer dataset must be below format. In my networks, *xyz and yaw data is not used*.

```
[0][1][2][3][4][5][6]

0: Image Path(.png)

1: Camera Place x
2: Camera Place y
3: Camera Place z

4: Camera Angle Roll
5: Camera Angle Pitch
6: Camera Angle Yaw

```

# How to Train and Infer?

First, you should do git pull command and update program.

**①Train**
First, config train_confing.yaml

```
cd /home/ros_catkin_ws/src/(any workspace)/pysrc/regression
python3 train.py

```

**②Infer**
First, config frame_infer_confing.yaml

```
cd /home/ros_catkin_ws/src/(any workspace)/pysrc/regression
python3 frame_infer.py

```
