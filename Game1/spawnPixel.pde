
void spawnPixel(int mX, int mY, int matrixSize, float chance){

  if (mousePressed && mouseButton == LEFT) {
    int mouseCol = floor(mX / w);
    int mouseRow = floor(mY / w);

    
    int radius = floor(matrixSize / 2);
    for (int i = -radius; i <= radius; i++) {
      for (int j = -radius; j <= radius; j++) {
        if (i * i + j * j <= radius * radius) {
          if (random(1) < chance) {
            int col = mouseCol + i;
            int row = mouseRow + j;
            if (col >= 0 && col < cols && row >= 0 && row < rows) {
              if(grid[col][row] == 0){

              grid[col][row] = hueValue;
              }
            }
          }
        }
      }
    }
  }
  
  if(hueValue > 360){
    for(int i = 360; i > 0; i--){

    hueValue = i;
    }
  }
  else{
    hueValue += random(-1, 3);
    if(hueValue < 0){
      hueValue = 0;
    }
  }
}




