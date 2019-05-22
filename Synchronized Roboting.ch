#include <linkbot.h>
//Set Up
CLinkbotI one,two,three;
CLinkbotIGroup group;
group.addRobot(one);
group.addRobot(two);
group.addRobot(three);
group.setLEDColor("purple");
//stage 1
group.driveDistance(6,1.75);
group.setLEDColor("green");
group.turnLeft(300,1.75,3.69);
group.driveDistance(4,1.75);
group.delaySeconds(5);
//stage 2
group.setLEDColor("blue");
group.turnLeft(300,1.75,3.69);
group.driveDistance(6,1.75);
group.turnRight(120,1.75,3.69);
group.driveDistance(10,1.75);
group.turnLeft(60,1.75,3.69);
group.setLEDColor("red");
group.turnRight(540,1.75,3.69);
group.driveDistance(6,1.75);
group.delaySeconds(5);
//stage 3
group.setLEDColor("orange");
group.turnLeft(270,1.75,3.69);
group.setJointSpeed(JOINT3,175);
group.driveTime(6.5);
group.setJointSpeeds(90,NaN,90);
group.setLEDColor("yellow");
group.turnRight(90,1.75,3.69);
//group.turnLeft(90,1.75,3.69);
group.driveDistance(6,1.75);
group.setLEDColor("white");
group.turnRight(360,1.75,3.69);
group.delaySeconds(5);
