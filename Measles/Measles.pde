//Global Variables
PImage pic;
float imageX, imageY, imageWidth, imageHeight, imageLargerDimension, imageSmallerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0, picWidthAdjusted, picHeightAdjusted;
Boolean widthLarger=false, heightLarger=false;
float xFace, yFace, widthDiameterFace, heightDiameterFace, measleRange, xCenter, yCenter, smallerDimension;
//float
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter, eyeHeight, xLeftpupil, yLeftpupil, xRightpupil, yRightpupil, pupilDiameter, pupilHeight;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
int thack=50;
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, red=#FF0000, jetBlack=#212121, buttonFill;
color backgroundColour;
Boolean nightMode=false;
//float radius;
//
String title = "Quit";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
int titleSize;
//
void setup()
{
  //CANVAS will will be added to later
  size(800, 600); //Landscape
  //
  populatingVariables();
  //
}//End setup
//
void draw() {
shapeDraw();
//
quitButton();
//
fill(resetWhite);//Ink, hexidecimal copied from color
  textAlign( CENTER, CENTER ); //Align x and y see processing.org / reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 50; //change number until it fits
  textFont(titleFont, titleSize);
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetWhite);
  //End Quit Button
}
//
void keyPressed() {
  dayMode();
  nightMode();
}//End keyPressed
void mousePressed() {
  if ( mouseX>titleX && mouseX<titleX+titleWidth && mouseY>titleY && mouseY<titleY+titleHeight ) exit();
}//End mousePressed
//
//End MAIN Program
