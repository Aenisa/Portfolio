//Linkbot moves along a grid according to the specifications of the user
#include <linkbot.h>
//declare
double x,y;
CLinkbotI robot; 
//set up
robot.turnRight(90,1.75,3.69); 
robot.driveDistance(48,1.75);
robot.turnLeft(90,1.75,3.69);
robot.driveDistance(26,1.75); // This code manuevers the robot into the correct position to begin in
//initialize
printf("What is the x coordinate?\n"); // Asks user x coordinate
scanf("%lf",&x); // receives input and stores it in x
printf("What is the y coordinate?\n"); // Asks for y coordinate
scanf("%lf",&y); // stores input in y
if ( x > 0 ){
    robot.turnRight(90,1.75,3.69);
    robot.driveDistance(x, 1.75); // If x is postive turns right and drives forward to coordinate
    if (y > 0){
        robot.turnLeft(90,1.75,3.69);
        robot.driveDistance(y,1.75);
    }else{
        robot.turnRight(90,1.75,3.69);
        robot.driveDistance(y,1.75); // Turns right or left according to specifications and drives to coordinate
    }
}else{
    robot.turnLeft(90,1.75,3.69);
    robot.driveDistance(x, 1.75); // If y is positive turns left and drives to coordinate
    if (y > 0){
        robot.turnRight(90,1.75,3.69);
        robot.driveDistance(y,1.75);
    }else{
        robot.turnLeft(90,1.75,3.69);
        robot.driveDistance(y,1.75); // Goes to negative or positive y coordinate
    }
}

