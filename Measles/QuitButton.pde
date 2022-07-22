void quitButton() {
fill(resetWhite);
  textAlign( CENTER, CENTER );
  titleSize = 20;
  textFont(titleFont, titleSize);
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetWhite);
  //
  if ( mouseX>titleX && mouseX<titleX+titleWidth && mouseY>titleY && mouseY<titleY+titleHeight ) {
    buttonFill = red;
  } else {
    buttonFill = jetBlack;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect(titleX, titleY, titleWidth, titleHeight);//For Button
  fill(resetWhite);
}
