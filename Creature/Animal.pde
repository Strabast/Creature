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
  }
 
  void draw(){
    ellipseMode(CENTER);
    rectMode(CENTER);
    imageMode(CENTER);
    image(animalCurrent, position.x, position.y);
  }
}
