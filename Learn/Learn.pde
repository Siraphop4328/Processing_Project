
import fisica.*;

FWorld world;
PImage ballImage;
ArrayList<Atom> atoms = new ArrayList<Atom>();
boolean[] keys = new boolean[128];





void setup(){
    fullScreen();
    frameRate(165);
    
    Fisica.init(this);
    world = new FWorld();
    world.setGravity(0, 1000);
    world.setEdges();

    
}


void draw(){
    background(0);
    
    world.step(1/165.0);
    world.draw();
    
    textSize(16);
    text(int(frameRate), 10, 20);
    
  

}






    
    