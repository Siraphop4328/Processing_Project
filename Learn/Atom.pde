

class Atom{
  
  String type;
  

  Atom(String type){
    
    if (type == "H"){

    FCircle atom = new FCircle(30);
    atom.setPosition(mouseX, mouseY);
    atom.setDamping(0);
    atom.setAngularDamping(0);
    atom.setRestitution(0.999);
    atom.setFriction(0.01);
    atom.setRotatable(true);
    ballImage = loadImage("H.png");
    ballImage.resize(30, 30);
    atom.attachImage(ballImage);
    world.add(atom);
    }
    else if (type == "O"){
    FCircle atom = new FCircle(50);
    atom.setPosition(mouseX, mouseY);
    atom.setDamping(0);
    atom.setAngularDamping(0);
    atom.setRestitution(0.999);
    atom.setFriction(0.01);
    atom.setRotatable(true);
    ballImage = loadImage("O.png");
    ballImage.resize(50, 50);
    atom.attachImage(ballImage);
    world.add(atom);
    


  }
  }
}








