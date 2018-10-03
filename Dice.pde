int total = 0;
void setup()
{
  size(300,300);
  noLoop();
}
void draw()
{
  total = 0;
  background(0);
  for(int x = 0; x < 300; x = x + 50)
  {
    Die a = new Die(x,0);
    a.show();
    a.roll();
    Die b = new Die(x,50);
    b.show();
    b.roll();
    Die c = new Die(x,100);
    c.show();
    c.roll();
    Die d = new Die(x,150);
    d.show();
    d.roll();
    Die e = new Die(x,200);
    e.show();
    e.roll();
  }
  fill(255);
  text("Total: " + total, 125, 275);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, dots;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    total = total+dots;
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50, 7);
    fill(0);
    dots = ((int)(Math.random()*6)+1);
    if (dots == 1)
      ellipse(myX+25,myY+25,5,5);
    if (dots == 2)
      {
        ellipse(myX+15,myY+15,5,5);
        ellipse(myX+35,myY+35,5,5);
      }
    if (dots == 3)
      {
        ellipse(myX+25,myY+25,5,5);
        ellipse(myX+15,myY+15,5,5);
        ellipse(myX+35,myY+35,5,5);
      }
    if (dots == 4)
      {
        ellipse(myX+15,myY+15,5,5);
        ellipse(myX+35,myY+35,5,5);
        ellipse(myX+15,myY+35,5,5);
        ellipse(myX+35,myY+15,5,5);
      }
    if (dots == 5)
      {
        ellipse(myX+15,myY+15,5,5);
        ellipse(myX+35,myY+35,5,5);
        ellipse(myX+15,myY+35,5,5);
        ellipse(myX+35,myY+15,5,5);
        ellipse(myX+25,myY+25,5,5);
      }
    if (dots == 6)
      {
        ellipse(myX+15,myY+15,5,5);
        ellipse(myX+35,myY+35,5,5);
        ellipse(myX+15,myY+35,5,5);
        ellipse(myX+35,myY+15,5,5);
        ellipse(myX+15,myY+25,5,5);
        ellipse(myX+35,myY+25,5,5);
      }
  }
}