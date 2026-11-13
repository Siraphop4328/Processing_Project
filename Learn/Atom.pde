

class Atom{
  
  String type;
  float temp;
  FCircle body;
  

  Atom(String type){
    
    if (type.equals("H")){

    body = new FCircle(30);
    body.setPosition(mouseX, mouseY);
    body.setDamping(0);
    body.setAngularDamping(0);
    body.setRestitution(0.99);
    body.setFriction(0.01);
    body.setRotatable(true);
    ballImage = loadImage("H.png");
    ballImage.resize(30, 30);
    body.attachImage(ballImage);
    world.add(body);
    }
    else if (type.equals("O")){
    body = new FCircle(50);
    body.setPosition(mouseX, mouseY);
    body.setDamping(0);
    body.setAngularDamping(0);
    body.setRestitution(0.99);
    body.setFriction(0.01);
    body.setRotatable(true);
    ballImage = loadImage("O.png");
    ballImage.resize(50, 50);
    body.attachImage(ballImage);
    world.add(body);
    


  }
  }
}








