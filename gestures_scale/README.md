# USING THE GESTUREDETECTOR FOR MOVING AND SCALING

Here, The GestureDetector child is a Stack that shows the image and a gesture status bar display.

To apply the moving and scaling of the image, we use the Transform widget. 

To show different ways to apply changes to a widget, you make use of three different Transform constructors: default, scale and translate.

The Transform widget has four different constructors.

➤ Transform: Default constructor taking a Matrix4 for the transform argument.

➤ Transform.rotate: Constructor to rotate a child widget around the center by using anangle. 
The angle argument rotates clockwise by radians. To rotate counterclockwise, pass a negative radian.

➤ Transform.scale: Constructor to evenly scale a child widget on the x-axis and y-axis.
The widget is scaled by its center alignment. 
The scale argument value of 1.0 is the original widget size. 
Any values above 1.0 scale the widget larger and values below 1.0 scale the widget smaller. A value of 0.0 makes the widget invisible.

➤ Transform.translate: Constructor to move/position a child widget by using a translation, an offset. 
The offset argument takes the Offset(double dx, double dy) class by positioning the widget on the x-axis and y-axis.

*minor runtime error present*
