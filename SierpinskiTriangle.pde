// blackpink :)))
int test = 0;
public void setup()
{
  size(600,600);
  strokeWeight(3);
  background(51);
  noLoop();
}
public void draw()
{
  background(31);
  sierpinski(20,550,test);
  fill(255);
  
}
public void mouseDragged()//optional
{
  test = mouseX;
  if (test>800){
    test = 0;
  }
  redraw();
}
public void sierpinski(int x, int y, int len) 
{
  
  int randCol = (int)(Math.random()*2);
    if (randCol==0){
      stroke(255,190,190);
    } else {
      stroke(255,140,140);
    }
  if(len <= 20) {
    triangle(x, y, x+len, y, x+(len/2), y-len);
  }
  else {
  sierpinski(x,y,len/2);
  sierpinski(x+(len/2),y,len/2);
  sierpinski(x+(len/4),y-(len/2),len/2);
  
  }
}
