double sum = 0;

void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  for(int y=10; y<= 400; y+= 60)
    for(int x=10; x<=450; x+= 60){
      Die bob = new Die(x,y);
      bob.show();
    }
}
void mousePressed()
{
  redraw(); 
  sum = 0;
}

class Die
{
  int num = 0;
  int myX,myY;
  int r,g,b;
  
  Die(int x, int y)
  {
    roll();
    sum = sum + num;
    myX=x;
    myY=y;
  }
  void roll()
  {
    num = (int)(Math.random()*6)+1;
      r = (int)(Math.random()*256)+1;
      g = (int)(Math.random()*256)+1;
      b = (int)(Math.random()*256)+1;
  }
  void show()
  {
    fill(255);
    rect(myX,myY,50,50);
    fill(100);
    rect(10,435,470,50);
    fill(r,g,b);
    if(num == 1)
      ellipse(myX+25,myY+25,10,10);
    else if(num == 2){
      ellipse(myX+35,myY+35,10,10);
      ellipse(myX+15,myY+15,10,10);
    }
    else if(num == 3){
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+38,myY+38,10,10);
      ellipse(myX+12,myY+12,10,10);
    }
    else if(num == 4){
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+15,myY+35,10,10);
      ellipse(myX+35,myY+15,10,10);
      ellipse(myX+35,myY+35,  10,10);
    }
    else if(num == 5){
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+12,myY+12,10,10);
      ellipse(myX+12,myY+38,10,10);
      ellipse(myX+38,myY+12,10,10);
      ellipse(myX+38,myY+38,10,10);
    }
    else if(num == 6){
      ellipse(myX+15,myY+10,10,10);
      ellipse(myX+15,myY+25,10,10);
      ellipse(myX+15,myY+40,10,10);
      ellipse(myX+35,myY+10,10,10);
      ellipse(myX+35,myY+25,10,10);
      ellipse(myX+35,myY+40,10,10);
    }
    fill(255);
    text("Sum = "+(sum),100,465);
    text("Average = "+(sum/56),270,465);
  }
}
