void populatingVariables() {
//Population
  xCenter = width/2;
  yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = xCenter-smallerDimension*1/4;
  yLeftEye = yCenter-smallerDimension*1/8;
  xRightEye = xCenter+smallerDimension*1/4;
  yRightEye = yCenter-smallerDimension*1/8;
  eyeDiameter = smallerDimension*3/32;
  eyeHeight = smallerDimension*1/7;
  xLeftpupil = xCenter-smallerDimension*7/32;
  yLeftpupil = yCenter-smallerDimension*1/8;
  xRightpupil = xCenter+smallerDimension*9/32;
  yRightpupil = yCenter-smallerDimension*1/8;
  pupilDiameter = smallerDimension*1/32;
  pupilHeight = smallerDimension*1/16;
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter+smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
  measleRange = smallerDimension/2.8;
  imageX = width*1/4;
  imageY = height*17/32;
  imageWidth = (width-1)*1/2; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  imageHeight = (height-1)*1/2;
  titleX = width*0;
  titleY = height*1/10;
  titleWidth = width*3/20;
  titleHeight = height*1/10;
  //
  String[] fontList = PFont.list();
printArray(fontList);
titleFont = createFont("Harrington", 48);
//
  backgroundColour = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
  background( backgroundColour );
  //rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension); //measle spawn positions visual
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
}//End populatingVariables
