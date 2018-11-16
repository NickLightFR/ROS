#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy,random
from turtlesim.msg import Pose,Color
from turtlesim.srv import SetPen
from std_msgs.msg import String
from geometry_msgs.msg import Twist

class Turtle():
    '''
    Classe de notre turtlesim et de ses methodes
    '''
    turtle_collision_en_approche=False
    bord_min= 1.5
    bord_max=9.5 # L'espace du tutrtlesim est un carré donc les extremums en x et Y sont identiques
    color=SetPen()
    current_color=0
    def __init__(self):
        rospy.init_node('turtle_cmd_color_radar_mng1')
        self.position_subscriber=rospy.Subscriber("/turtle1/pose", Pose, self.pose_callback)
        self.mon_service_prochaine_couleur=rospy.Service('service_couleur',couleur, self.color_selector_service)
        
        self.call_color_srv= rospy.ServiceProxy('/turtle1/set_pen', SetPen)
        self.velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
        rospy.loginfo("subscriber et publisher ok \n")
        self.color_init()
        #rospy.spin()

    def color_init(self):
	self.switch_to_orange()
   
    def switch_to_orange(self):
	self.color.r=255
	self.color.g=69
	self.color.b=0
	self.color.width=10
	self.color.off=0
	self.current_color=0
	self.call_color_srv(self.color.r,self.color.g,self.color.b,self.color.width,self.color.off)
	
    def switch_to_green(self):
   	self.color.r=0
	self.color.g=255
	self.color.b=0
	self.color.width=10
	self.color.off=0
	self.current_color=1
	#self.color_publisher.publish(self.color)
	self.call_color_srv(self.color.r,self.color.g,self.color.b,self.color.width,self.color.off)
	
    def switch_to_red(self):
 	self.color.r=255
	self.color.g=0
	self.color.b=0
	self.color.width=10
	self.color.off=0
	self.current_color=2
	#self.color_publisher.publish(self.color)
	self.call_color_srv(self.color.r,self.color.g,self.color.b,self.color.width,self.color.off)
	
    def color_selector(self):
	if(self.current_color==0):
	  self.switch_to_green()
	elif(self.current_color==1):
	  self.switch_to_red()
	elif(self.current_color==2):
	  self.switch_to_orange()
  
    def color_selector_service(self,couleur_voulue)
      if(couleur_voulue==1)
	color.r=255
	color.g=69
	color.b=0
	return (color.r,color.g,color.b)
      elif(couleur_voulue==2)
	return
      elif(couleur_voulue==3)
	  
	  
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
	    if turtle.position_x<1 or turtle.position_y<1 or turtle.position_x>10 or turtle.position_y>10: #donne une impulsion et une rotation rapide si tres pres du bord
	      commande_msg.angular.z=random.uniform(10,11)
	      commande_msg.linear.x = 6
	    else:
	      commande_msg.angular.z=random.uniform(3,4)
	      commande_msg.linear.x = 2
	      commande_msg.linear.y =0
        turtle.velocity_publisher.publish(commande_msg)
        turtle.color_selector()
        
        #turtle.turtle.mon_service_prochaine_couleur
        rate.sleep()