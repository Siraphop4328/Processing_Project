
void keyPressed(){
    if(key < keys.length){
        keys[key] = true;
    }

    if(keys['h'] || keys['H']){
    atoms.add(new Atom("H"));
    
    }

    else if(keys['o'] || keys['O']){
    atoms.add(new Atom("O"));
    }

    else if(keys['r'] || keys['R']){
        for (Atom a : atoms) {
            world.remove(a.body);
        }
        atoms.clear();
    }

    else if(){

    }
}

void keyReleased(){
    if (key < keys.length){
        keys[key] = false;
    }
}