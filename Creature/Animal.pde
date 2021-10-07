class Animal{
  PImage animalCurrent, animal01, animal02, animal03;
  PVector position, mousePos;
 
  Animal(float x, float y){
   position = new PVector(x, y);
   
   animal01 = loadImage("animal01.png");
   animal02 = loadImage("animal02.png");
   animal03 = loadImage("animal03.png");
   
   animalCurrent = animal01;
  }
  
  void update(){
    PVector mousePos = new PVector(mouseX, mouseY);
    
    if(mouseX +- 1 > position.x){
     animalCurrent = animal02;
     position = position.lerp(mousePos, 0.05);
    }
    
    else if(mouseX +- 1 < position.x){
     animalCurrent = animal03;
     position = position.lerp(mousePos, 0.05);
    }
    
    else if(mouseX +- 1 == position.x){
     animalCurrent = animal01;
     position = position.lerp(mousePos, 0.05);
    }

  }
 
  void draw(){
    ellipseMode(CENTER);
    rectMode(CENTER);
    imageMode(CENTER);
    image(animalCurrent, position.x, position.y);
  }
  void run(){
   update();
   draw();
  }
}
  
