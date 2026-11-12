
import fisica.*;

FWorld world;
PImage ballImage;
Atom atoms;
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
    
    
}


void mousePressed(){
    if(keys['h'] || keys['H']){
    atoms = new Atom("H");
    }

    else if(keys['o'] || keys['O']){
    atoms = new Atom("O");
    }
    
}