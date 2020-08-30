
# CleaningBot

I am trying to make a robot to clean and sweep houses, if possible expand it to industrial scale.
The plan is to 
1.  Create a software which can map an house/indoor location(This in in-progress now)
2.  Create a software which can detect obstacles that the bot will encounter and classify them into use full and stuff and stuff that can be cleaned 
3.  Integrate the hardware with the developed software

## Dev environment
1.  ROS2- ROS2 has packages for Navigation, SLAM and can be installed on multiple platforms
2.  Docker(I currently have a windows machine and i need a free and light weight OS to be available on the bot's hardware)
3.  I want to use neural networks already trained in object detection like Imagenet/ObjectNet/YOLO for object identification

### For setup please follow the instructions [dev-environment-setup.md](./dev-environment-setup.md)
