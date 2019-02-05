Node[] nodes;
Splash splash;

color backgroundColor;


void setup()
{
  
  nodes = new Node[75];
  splash = new Splash();
  
  stroke(255,0,200);
  strokeWeight(2);
  //size(720, 720);
  fullScreen();
  backgroundColor = color(0);
  
  for (int i = 0; i < nodes.length; i++)
  {
   //a little repetitive but we need to create a new Node  
   //for each in the array
   nodes[i] = new Node(random(100,width - 100), random(100,height - 100), random(-7,7), random(-5,5));
  }
}


void draw()
{
  background(backgroundColor);
  
  int nodeLength = nodes.length;
  
  for (int i = 0; i < nodeLength; i++)
  {
    nodes[i].wander(); //<>//

    if (i == 0) //first node
    {
      for (int j = 0; j < nodeLength; j++)
      {
        if (isNear(nodes[i], nodes[j]))
        {
          line(nodes[i].posX, nodes[i].posY, nodes[j].posX, nodes[j].posY);
        }
      }
    }
    else if (i < (nodeLength - 1) && i > 0)  //all nodes but first and last
    {
      if (isNear(nodes[i],nodes[i + 1]))
      {
        line(nodes[i].posX, nodes[i].posY, nodes[i + 1].posX, nodes[i + 1].posY);
      }
      if (isNear(nodes[i],nodes[i - 1]))
      {
        line(nodes[i].posX, nodes[i].posY, nodes[i - 1].posX, nodes[i - 1].posY);
      }
    }
    else if (i == nodeLength)  //last node
    {
      for (int j = nodeLength - 1; i > 0; i--)
      {
        if (isNear(nodes[i], nodes[j]))
        {
          line(nodes[i].posX, nodes[i].posY, nodes[j].posX, nodes[j].posY);
        }
      }
    }
    
    nodes[i].spawn();
  }
}


void mouseClicked()
{   
  splash.explode();
}


void keyPressed()
{
    if (key == ENTER)
    {
      for (int i = 0; i < nodes.length; i++)
        nodes[i].changeSize();  
    }
    else
    {
      for (int i = 0; i < nodes.length; i++)
        nodes[i].changeColor();
    }
}

boolean isNear(Node node1, Node node2)
{
  if (dist(node1.posX, node1.posY, node2.posX, node2.posY) <= 500)
    return true;
  else
    return false;
}
