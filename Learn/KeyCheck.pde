
void keyPressed(){
    if(key < keys.length){
        keys[key] = true;
    }
}

void keyReleased(){
    if (key < keys.length){
        keys[key] = false;
    }
}