class Node
{
  PImage node;
  
  boolean isBlue;
  boolean isDoubleSize;

  float posX;
  float posY;
  
  float speedX;
  float speedY;
    
  //this was getting confused because you 
  //had setup() which is a processing function
  Node(float PosX, float PosY, float SpeedX, float SpeedY)
  {
    isBlue = true;
    isDoubleSize = false;

    node = loadImage("cyanGlow.png");
    
    posX = PosX;
    posY = PosY;
    speedX = SpeedX;
    speedY = SpeedY;
  }
  
  void spawn()
  {
        image(node, posX, posY);
  }
  
  void wander()
  {
    
    if (posX < (width - (node.width / 2)) && posX > node.width / 2)
    {    
      posX += speedX;
    }
    else
    {    
      speedX *= -1;
      posX += speedX;
    }  
  
    if (posY < (height - (node.height / 2)) && posY > node.height / 2)
    { 
      posY += speedY;
    }
    else
    {
      speedY *= -1;
      posY += speedY;
    }
  }
  
  void changeColor()
  {
    if (isBlue == true)
    {
      isBlue = false;
      node = loadImage("pinkGlow.png");
      stroke(0,200,255);
    }
    else
    {
      isBlue = true;
      node = loadImage("cyanGlow.png");
      stroke(255,0,200);
    }
  }
 
  void changeSize()
  {
    if (isDoubleSize == true)
    {
      isDoubleSize = false;
      if (isBlue == true)
      {
        node = loadImage("cyanGlow.png");
      }
      else
      {
        node = loadImage("pinkGlow.png");
      }
    }
    else
    {
      isDoubleSize = true;
      if (isBlue == true)
      {
        node = loadImage("cyanGlowX2.png");
      }
      else
      {
        node = loadImage("pinkGlowX2.png");
      }
    }
  } 
}
