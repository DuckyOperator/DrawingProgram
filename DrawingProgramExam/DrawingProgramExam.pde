
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
boolean draw;

void setup() {
  fullScreen();
  population();
  quitButtonSetup();
  quitButtonDraw();


  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//

void draw() {
  if (draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight)
  {
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
}//

void mousePressed() {
  quitButtonMousePressed();
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) 
  {
    if (draw == false) 
    {
      draw = true;
    } else {
      draw = false;
    }
  }
}//

void keyPressed() {
}//
