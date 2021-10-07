Animal animal;
void setup(){
  size(800, 600, P2D);
  animal = new Animal(width/2, height/2);
}

void draw(){
  background(100,50,255);
  animal.run();
}
