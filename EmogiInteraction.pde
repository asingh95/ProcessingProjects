//Interactive design: Emogi windows

//This interaction is based on the mouse movements and 
//mouse clicks made by the user. The background color
//changes based on the movement, whereas different 
//emogis show up in a different location based on where
//the user clicks.

/*----------Global Variables----------*/

color c; //fill color value
int inc; //increment value that allows design to retain even if size is changed
         //however, window should ideally be square (x,x)
int flag = 0; //flag to determine which box is to be shown

void setup()
{
  size(800,800);
  inc = width/20;
}//setup()

void draw()
{
  background(0);
  
  c = color(mouseX, mouseY,100);
  noStroke();
  
  if (flag == 0)
  {
    fill(c);
    rect(inc,inc,8*inc, 8*inc);
    rect(11*inc,inc,8*inc,8*inc);
    rect(inc,11*inc,8*inc,8*inc);
    rect(11*inc,11*inc,8*inc,8*inc);
  }//when all emogis are hidden
  
  if (flag == 1)
  {
    KissieFace(c);
  }//if flag is 1
  
  if(flag == 2)
  {
    Smiley(c);
  }//if flag is 2
  
  if(flag == 3)
  {
    TongueOut(c);
  }//if flag is 3
  
  if(flag == 4)
  {
    ExcitedLaugh(c);
  }//if flag is 4
  
  
}//draw()

void KissieFace(color c)
{
  //This function will draw the kissing emogi
   fill(c); 
    rect(inc,inc,8*inc, 8*inc);
    
    //emogi face: kissie face
    fill(255,214,45);
    ellipse(5*inc,5*inc,6*inc,6*inc);
    //left eye
    fill(0);
    ellipse(4*inc,4*inc,inc,inc);
    //right eye, wink
    noFill();
    stroke(0);
    strokeWeight(7);
    arc(6*inc,4*inc,inc,inc,PI,TWO_PI);
    //kiss
    strokeWeight(5);
    line(4.25*inc,5.5*inc,5*inc,5.75*inc);
    line(5*inc,5.75*inc,4.5*inc,6*inc);
    line(4.5*inc,6*inc,5*inc,6.25*inc);
    line(5*inc,6.25*inc,4.25*inc,6.5*inc);
    //heart
    noStroke();
    fill(mouseY,100,mouseX);
    triangle(6*inc,7*inc,6.5*inc,6*inc,5.5*inc,6*inc);
    arc(5.75*inc,6*inc,.5*inc,.5*inc,PI,TWO_PI);
    arc(6.25*inc,6*inc,.5*inc,.5*inc,PI,TWO_PI);
    
    c = color(100,mouseY,mouseX);
    fill(c);
    rect(11*inc,inc,8*inc,8*inc);
    rect(inc,11*inc,8*inc,8*inc);
    rect(11*inc,11*inc,8*inc,8*inc);  
}//KissieFace()

void Smiley(color c)
{
    //This function will draw the smiling emogi
    fill(c); 
    rect(11*inc,inc,8*inc,8*inc);
    
    //emogi face: blushing smilie
    fill(255,214,45);
    ellipse(15*inc,5*inc,6*inc,6*inc);
    //left eye
    noFill();
    stroke(0);
    strokeWeight(7);
    arc(14*inc,4*inc,inc,inc,PI,TWO_PI);
    //right eye
    arc(16*inc,4*inc,inc,inc,PI,TWO_PI);
    //smile
    arc(15*inc,6*inc,2*inc,2*inc,0,PI);
    //blush
    noStroke();
    fill(mouseY,100,mouseX);
    ellipse(13.5*inc,5*inc,inc,inc);
    ellipse(16.5*inc,5*inc,inc,inc);
    
    c = color(100,mouseY,mouseX);
    fill(c);
    rect(inc,inc,8*inc, 8*inc);
    rect(inc,11*inc,8*inc,8*inc);
    rect(11*inc,11*inc,8*inc,8*inc);
}//Smiley()

void TongueOut(color c)
{
    //This function will draw the tongue sticking out emogi
    fill(c); 
    rect(inc,11*inc,8*inc,8*inc);
    
    //emogi face: tongue out 
    fill(255,214,45);
    ellipse(5*inc,15*inc,6*inc,6*inc);
    //left and right eyes
    noStroke();
    fill(0);
    ellipse(4*inc,14*inc,inc,inc);
    ellipse(6*inc,14*inc,inc,inc);
    //tounge
    fill(mouseY,100,mouseX);
    rect(4*inc,15*inc,2*inc,inc);
    arc(5*inc,16*inc,2*inc,2*inc,0,PI);
     stroke(0);
    strokeWeight(4);
    line(5*inc,15*inc,5*inc,16*inc);
    //mouth
    line(3*inc,15*inc,7*inc,15*inc);
    
    c = color(100,mouseY,mouseX);
    fill(c);
    rect(inc,inc,8*inc, 8*inc);
    rect(11*inc,inc,8*inc,8*inc);
    rect(11*inc,11*inc,8*inc,8*inc);
}//TongueOut()

void ExcitedLaugh(color c)
{
    //This function will draw the excited emogi
    fill(c); 
    rect(11*inc,11*inc,8*inc,8*inc);
    
    //emogi face: excited 
    fill(255,214,45);
    ellipse(15*inc,15*inc,6*inc,6*inc);
    //left eye
    stroke(0);
    strokeWeight(4);
    line(13.5*inc,13.5*inc,14.5*inc,14*inc);
    line(14.5*inc,14*inc,13.5*inc,14.5*inc);
    //right eye
    line(16.5*inc,13.5*inc,15.5*inc,14*inc);
    line(15.5*inc,14*inc,16.5*inc,14.5*inc);
    //mouth
    fill(mouseY,100,mouseX);
    arc(15*inc,15.5*inc,3*inc,3*inc,0,PI);
    line(13.5*inc,15.5*inc,16.5*inc,15.5*inc);
    //teeth
    fill(255);
    rect(14*inc,15.5*inc,2*inc,.5*inc);
    line(15*inc,15.5*inc,15*inc,16*inc);
    c = color(100,mouseY,mouseX);
    fill(c);
    rect(inc,inc,8*inc, 8*inc);
    rect(11*inc,inc,8*inc,8*inc);
    rect(inc,11*inc,8*inc,8*inc);
}//ExcitedLaugh()
void mouseClicked()
{
  //Here we create the pattern in which the emogis show up based on which box is clicked
  if (flag != 0)
  {
    flag = 0;
  }
  else
  {
    if((mouseX >= inc)&&(mouseX <= (8*inc))&&(mouseY >= inc)&&(mouseY <= (8*inc)))
    {
      flag = 2; 
      println("1->2"); /*DEBUG*/
    }//sqaure 1
    if((mouseX >= (11*inc))&&(mouseX <= (19*inc))&&(mouseY >= inc)&&(mouseY <= (8*inc)))
    {
      flag = 3;
      println("2->3"); /*DEBUG*/
    }//square 2
    if((mouseX >= inc)&&(mouseX <= (8*inc))&&(mouseY >= (11*inc))&&(mouseY <= (19*inc)))
    {
      flag = 4;
      println("3->4"); /*DEBUG*/
    }//square 3
    if((mouseX >= (11*inc))&&(mouseX <= (19*inc))&&(mouseY >= (11*inc))&&(mouseY <= (19*inc)))
    {
      flag = 1;
      println("4->1"); /*DEBUG*/
    }//square 4
  }
}//mouseClicked()