 int x ,y, youX, youY, mahFace;
 pizzza []bimbo;
 boolean eaten;
 void setup()   
 {
  frameRate(15);
  size(600,600);
  background(255);
  strokeWeight(0);
  bimbo = new pizzza[10];
  for(int i = 0; i < bimbo.length;i++)
  {
    bimbo[i] = new pizzza();
  }
  
} 
void plshelpme()
{
  bimbo = new pizzza[10];
  for(int i = 0; i < bimbo.length;i++)
  {
    bimbo[i] = new pizzza();
  }
}
 void draw()   
 {
   background(255);
   for(int i = 0; i < bimbo.length;i++)
  {
    bimbo[i].move();
    bimbo[i].show();
  }
  pizzzaEater me = new pizzzaEater();
  me.show();
  fill(0);
  text("These Pizzzas are based on the pizzas my middle school gave us,",20,20);
  text(" so the pepperoni placement is 1000% accurate",20,37);
 if( mousePressed)
{
  eaten = false;
  plshelpme();
}
}
 class pizzza    
 {
   int x, y, mahFace, ppX, ppY, ppX1, ppY1, ppX2, ppY2;
   boolean eaten = false;
   pizzza ()
   {
    x = (int)(Math.random()*500+50);
    y = (int)(Math.random()*500+50);
    ppX= x +(int)(Math.random()*18-9); 
    ppY= y +(int)(Math.random()*18-9);
    ppX1= x +(int)(Math.random()*18-9); 
    ppY1= y +(int)(Math.random()*18-9);
    ppX2= x +(int)(Math.random()*18-8); 
    ppY2= y +(int)(Math.random()*18-9);
   }
   void move()
   {
     int change= ((int)((Math.random()*10)-5));
       x= x + change;
       ppX= ppX + change;
       ppX1= ppX1 + change;
       ppX2= ppX2 + change;
     
       y= y + change; 
       ppY= ppY + change;
       ppY1= ppY1 + change;
       ppY2= ppY2 + change;
   }
   void show()
   {
     if (dist(mouseX,mouseY,x,y)<=45){
       eaten = true;
     }
     if (eaten == false){
     mahFace= color(242,173,35);
     fill(mahFace);
     ellipse(x, y, 50,50);
     mahFace= color(240,20,20);
     fill(mahFace);
     ellipse(x, y, 46,46);
     mahFace= color(245,240,150);
     fill(mahFace);
     ellipse(x, y, 43,43);
     mahFace= color(250,85,5);
     fill(mahFace);
     ellipse(ppX, ppY, 10,10);
     ellipse(ppX1, ppY1, 10,10);
     ellipse(ppX2, ppY2, 10,10);
     }
   }
 }  
 class pizzzaEater
 {
   int youX;
   int youY;
   int bigBoi=55;
   pizzzaEater()
   {
     youX = mouseX;
     youY = mouseY;
   }
   void show()
   {
   fill(255);
   ellipse( youX,youY, bigBoi , bigBoi);
   }
 }
