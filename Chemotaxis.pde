Bacteria[] bacteriaArray;



 void setup()   
 {     
  size(500,500);
  bacteriaArray = new Bacteria[100];
  for (int i = 0;i < bacteriaArray.length;i++) {
    bacteriaArray[i] = new Bacteria();
 }
 } 
 void draw()   
 {    
   background(0);
   for (int i = 0; i < bacteriaArray.length;i++) {
     
   bacteriaArray[i].show();
   bacteriaArray[i].move();
   }
   //move and show the bacteria   
 }  
 class Bacteria    
 {     
   int Bacteriax;
   int Bacteriay;
 
   Bacteria() {
   Bacteriax = 0;
   Bacteriay =  Bacteriay + ((int)(Math.random() * 3)-1);
 }
   void show()
   {
     fill(50,84,232);
   ellipse(Bacteriax,Bacteriay,5,5);
   }
 
  void move() {
 
   if (mouseX > Bacteriax && mouseY > Bacteriay)
  {
    Bacteriax = Bacteriax + (int)(Math.random() * 12);
    Bacteriay = Bacteriay + (int)(Math.random() * 12);
    
  }
 else if(mouseX <Bacteriax && mouseY < Bacteriay)
{
  Bacteriax = Bacteriax - (int)(Math.random() * 12);
  Bacteriay = Bacteriay - (int)(Math.random() * 12);
}
else if(mouseX < Bacteriax && mouseY > Bacteriay)
{
  Bacteriax = Bacteriax - (int)(Math.random() * 12);
  Bacteriay = Bacteriay + (int)(Math.random() * 12);
}
else if(mouseX > Bacteriax && mouseY < Bacteriay)
{
  Bacteriax = Bacteriax + (int)(Math.random() * 12);
  Bacteriay = Bacteriay - (int)(Math.random() * 12);
}
else
{
  Bacteriax = Bacteriax + (int)(Math.random() * 12);
  Bacteriay = Bacteriax + (int)(Math.random() * 12);
  Bacteriax = Bacteriax - (int)(Math.random() * 12);
  Bacteriay = Bacteriax - (int)(Math.random() * 12);
}
 }
 }
