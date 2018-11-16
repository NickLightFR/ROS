#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy,random
from turtlesim.msg import Pose
from std_msgs.msg import String
from geometry_msgs.msg import Twist

class Turtle():
    '''
    Classe de notre turtlesim et de ses methodes
    '''
    turtle_collision_en_approche=False
    bord_min= 1.5
    bord_max=9.5 # L'espace du tutrtlesim est un carré donc les extremums en x et Y sont identiques
    def __init__(self):
        rospy.init_node('turtle_cmd_mng')
        #self.position_subscriber=rospy.Subscriber("/turtle1/pose", Pose, self.pose_callback)
        self.position_subscriber=rospy.Subscriber("/clerc/pose", Pose, self.pose_callback)
        self.velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
        rospy.loginfo("subscriber et publisher ok \n")
        #rospy.spin()

    def pose_callback(self,pose):
	self.position_x=pose.x
	self.position_y=pose.y
        if pose.x<self.bord_min or pose.y<self.bord_min or pose.x>self.bord_max or pose.y>self.bord_max :
	  self.turtle_collision_en_approche=True
	  rospy.loginfo("Bord \n")
        else:
          self.turtle_collision_en_approche=False
          rospy.loginfo("Pas Bord \n")
          



if __name__ == "__main__":
    turtle=Turtle()
    rate=rospy.Rate(5)
    commande_msg=Twist()
    while not rospy.is_shutdown():
        if (turtle.turtle_collision_en_approche is False):
	  commande_msg.linear.x=2
	  commande_msg.linear.y =0
	  commande_msg.linear.z = 0
	  commande_msg.angular.z= 0
	else: #on est proche d'une bordure
	    #commande_msg.angular.z = random.uniform(3,4)#le turtlesim va tourner
	    if turtle.position_x<1 or turtle.position_y<1 or turtle.position_x>10 or turtle.position_y>10: #donne une impulsion et une rotation rapide si tres pres du bord
	      commande_msg.angular.z=random.uniform(10,11)
	      commande_msg.linear.x = 6
	    else:
	      commande_msg.angular.z=random.uniform(3,4)
	      commande_msg.linear.x = 2
	      commande_msg.linear.y =0
        turtle.velocity_publisher.publish(commande_msg)
        rate.sleep()