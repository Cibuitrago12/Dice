int sums = 0;
void setup()
{
  noLoop();
  size(500, 500);
}
void draw()
{
  int sums = 0;
  background(0);
  for(int x = 20; x < 390; x+= 180){
    Die dieRowOne = new Die(x, 70);
    dieRowOne.show();
    sums += dieRowOne.numDots;
  }
  for(int x2 = 20; x2 < 390; x2 += 180){
    Die dieRowTwo = new Die(x2, 200);
    dieRowTwo.show();
    sums += dieRowTwo.numDots;
  }
  for(int x3 = 20; x3 < 390; x3 += 180){
    Die dieRowThree = new Die(x3, 330);
    dieRowThree.show();
    sums += dieRowThree.numDots;
  }
  
  textSize(16);
  fill(255);
  text("Total dots: " + sums, 200, 475);
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int dieX, dieY;
  int numDots;
  
  Die(int x, int y) //constructor
  {
    dieX = x;
    dieY = y;
  }
  void roll()
  {
    numDots = (int)(Math.random() * 6) + 1;
    
  }
  void show()
  {
    fill(255);
    numDots = (int)(Math.random() * 6) + 1;
    rect(dieX, dieY, 95, 95, 17);
    if(numDots == 1){
      fill(0);
      ellipse(dieX + 48, dieY + 48, 15, 15);
    } 
    else if (numDots == 2){
       fill(0);
       ellipse(dieX + 25, dieY + 25, 15, 15);
       ellipse(dieX + 70, dieY + 70, 15, 15);
    }
    else if (numDots == 3){
       fill(0);
       ellipse(dieX + 25, dieY + 25, 15, 15 );
       ellipse(dieX + 70, dieY + 70, 15, 15);
       ellipse(dieX + 48, dieY + 48, 15, 15);
    }
    else if (numDots == 4){
       fill(0);
       ellipse(dieX + 25, dieY + 25, 15, 15);
       ellipse(dieX + 70, dieY + 70, 15, 15);
       ellipse(dieX + 25, dieY + 70, 15, 15);
       ellipse(dieX + 70, dieY + 25, 15, 15);
    }
      else if (numDots == 5){
       fill(0);
       ellipse(dieX + 25, dieY + 25, 15, 15);
       ellipse(dieX + 70, dieY + 70, 15, 15);
       ellipse(dieX + 25, dieY + 70, 15, 15);
       ellipse(dieX + 70, dieY + 25, 15, 15);
       ellipse(dieX + 48, dieY + 48, 15, 15);
    }
    else if (numDots == 6){
       fill(0);
       ellipse(dieX + 25, dieY + 25, 15, 15);
       ellipse(dieX + 70, dieY + 70, 15, 15);
       ellipse(dieX + 25, dieY + 70, 15, 15);
       ellipse(dieX + 70, dieY + 25, 15, 15);
       ellipse(dieX + 25, dieY + 48, 15, 15);
       ellipse(dieX + 70, dieY + 48, 15, 15);
    }
  }
}