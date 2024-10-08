int sum=0;
void setup()
{
  size(400, 400);
  noLoop();
}
void draw()
{
  //your code here\
  background(255);
  for (int y = 0; y<400; y+=25) { 
    for (int x = 0; x<350; x+=25) { 
      Die bob = new Die(y, x);
      bob.show();
    }
  }
  text(sum, 200, 375);
}
void mousePressed()
{
  text(sum, 200, 375);
  sum =0;
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int myX, myY, face;


  Die(int x, int y) //constructor
  {
    //variable initializations here
    roll();
    myX= x;
    myY = y;
  }
  void roll()
  {
    //your code here
    face = (int)(Math.random()*6)+1;
  }
  void show()
  {
    //your code here
    fill(255);
    rect(myX, myY, 25, 25);
    fill(0);
    if (face == 6) { //6 dots
      for (int y = 7; y<=20; y= y+6) { 
        for (int x = 6; x<25; x= x+13) { 
          ellipse(myX+x, myY+y, 3, 3);
        }
      }
      sum=sum+face;
    } else if (face ==5) {//5 dots
      for (int y = 7; y<=20; y= y+12) {//first 4 dots 
        for (int x = 6; x<25; x= x+13) { 
          ellipse(myX+x, myY+y, 3, 3);
        }
      }    
      sum=sum+face;
      ellipse(myX+12.5, myY+12.5, 3, 3);//middle dot
    } else if (face==4) { //4dots
      for (int y = 7; y<=20; y= y+12) {
        for (int x = 6; x<25; x= x+13) { 
          ellipse(myX+x, myY+y, 3, 3);
        }
      }
      sum=sum+face;
    } else if (face==3) {//3 dots
      ellipse(myX+7, myY+7, 3, 3);//top left
      ellipse(myX+12.5, myY+12.5, 3, 3);//middle dot
      ellipse(myX+19, myY+19, 3, 3);//bottom right
      sum=sum+face;
    } else if (face==2) {//2 dots
      ellipse(myX+19, myY+19, 3, 3);//bottom right    
      ellipse(myX+7, myY+7, 3, 3);//top left
      sum=sum+face;
    } else {
      ellipse(myX+12.5, myY+12.5, 3, 3);//middle dot      
      sum=sum+face;
    }
    //text(sum,200,375);
  }
}
