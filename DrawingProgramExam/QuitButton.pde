String quitButton = "quit";
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, green=#A5FF00, black=#000000;
int reset=1;

void quitButtonSetup() 
{
  quitButtonX = width*18/20;
  quitButtonY = height*0;
  quitButtonWidth = width*2/20;
  quitButtonHeight = height*1/20;{}}


void quitButtonDraw() 
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColour=black;
  } else {
    quitButtonColour=green;
  }
  fill(quitButtonColour);
  noStroke();
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  textCode(quitButton, 20, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //stroke(reset);
}

void quitButtonMousePressed() 
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}
