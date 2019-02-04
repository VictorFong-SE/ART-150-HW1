class Splash //<>//
{
  PImage[] splashes;
  
  float staticMouseX;
  float staticMouseY;

  Splash()
  {
    staticMouseX = mouseX;
    staticMouseY = mouseY;
    
    splashes = new PImage[15];
  
    splashes[0] = loadImage("lightingN-0.png");
    splashes[1] = loadImage("lightingN-1.png");
    splashes[2] = loadImage("lightingN-2.png");
    splashes[3] = loadImage("lightingN-3.png");
    splashes[4] = loadImage("lightingN-4.png");
    splashes[5] = loadImage("lightingN-5.png");
    splashes[6] = loadImage("lightingN-6.png");
    splashes[7] = loadImage("lightingN-7.png");
    splashes[8] = loadImage("lightingN-8.png");
    splashes[9] = loadImage("lightingN-9.png");
    splashes[10] = loadImage("lightingN-10.png");
    splashes[11] = loadImage("lightingN-11.png");
    splashes[12] = loadImage("lightingN-12.png");
    splashes[13] = loadImage("lightingN-13.png");
    splashes[14] = loadImage("lightingN-14.png");
      
   
  }
 
  void explode()
  {
    staticMouseX = mouseX;
    staticMouseY = mouseY;    
    
    imageMode(CENTER);
    image(splashes[0],staticMouseX,staticMouseY);
    image(splashes[1],staticMouseX,staticMouseY);
    image(splashes[2],staticMouseX,staticMouseY);
    image(splashes[3],staticMouseX,staticMouseY);
    image(splashes[4],staticMouseX,staticMouseY);
    image(splashes[5],staticMouseX,staticMouseY);
    image(splashes[6],staticMouseX,staticMouseY);
    image(splashes[7],staticMouseX,staticMouseY);
    image(splashes[8],staticMouseX,staticMouseY);
    image(splashes[9],staticMouseX,staticMouseY);
    image(splashes[10],staticMouseX,staticMouseY);
    image(splashes[11], staticMouseX,staticMouseY);
    image(splashes[12],staticMouseX,staticMouseY);
    image(splashes[13],staticMouseX,staticMouseY);
    image(splashes[14],staticMouseX,staticMouseY);
   }  
}
