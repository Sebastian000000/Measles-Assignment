//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace;
float xRightEye, yRightEye, xLeftEye, yLeftEye, eyeDiameter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xMeasle, yMeasle, measleDiameter;
//
void setup() 
{
  //CANVAS will be added to later
  size(800, 600); // Landscape
  //
  //Poppulation
  float xCenter = width/2;
  float yCenter = height/2;
  xFace = width/2;
  yFace = height/2;
  float smallerDimension;
  if ( width>= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimesion choice  
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = xCenter - width*3/16;
  yLeftEye = yCenter - height*3/16;
  xRightEye = xCenter + width*2/16;
  yRightEye = yCenter + height*-1/16;
  eyeDiameter = smallerDimension*1/8;
  //xLeftMouth = ;
  //yLeftMouth = ;
  //xRightMouth = ;
  //yRightMouth = ;
  xNoseBridge = xCenter- width*1/32;
  yNoseBridge = yCenter - height*1/32;
  xLeftNostril = xCenter - width*3/32;
  yLeftNostril = yCenter - height*3/32;
  xRightNostril = xCenter + width*3/32;
  yRightNostril = yCenter + height*3/32;
  
}//End setup
//
void draw() 
{
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  //
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
//
