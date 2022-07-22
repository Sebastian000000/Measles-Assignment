void shapeDraw() {
  fill(jetBlack);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeHeight);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeHeight);
  fill(resetWhite);
  //
  ellipse(xLeftpupil, yLeftpupil,  pupilDiameter, pupilHeight);
  ellipse(xRightpupil, yRightpupil, pupilDiameter, pupilHeight);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  //rect(titleX1, titleY, titleWidth1, titleHeight1);//For Button
  //
  pic = loadImage("Images/mustache.png"); //Dimensions: width 255, height 197
  int picWidth = 255;
  int picHeight = 197;
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension = picWidth;
    imageSmallerDimension = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    imageLargerDimension = picHeight;
    imageSmallerDimension = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //Verify variables details
  if ( widthLarger == true ) imageWidthRatio = imageLargerDimension / imageLargerDimension;
  if ( widthLarger == true ) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageHeightRatio = imageLargerDimension / imageLargerDimension;
  //
  picWidthAdjusted = imageWidth * imageWidthRatio;
  picHeightAdjusted = imageHeight * imageHeightRatio/1.8;
  println(imageX, imageY, picWidthAdjusted, picHeightAdjusted);
  //
  image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
  //
  xMeasle = random(xCenter-measleRange, xCenter+measleRange);
  yMeasle = random(yCenter-measleRange, yCenter+measleRange); //if zero is first, then default
 

  fill(red);
  noStroke();
  measleDiameter = random(smallerDimension*1/75, smallerDimension*1/25); //smallerDimension*1/50;
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset default
  fill(resetWhite);
}//End shapeDraw
