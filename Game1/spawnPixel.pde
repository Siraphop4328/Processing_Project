
void spawnPixel(int mX, int mY, int matrixSize, float chance){

  boolean spawning = mousePressed && mouseButton == LEFT;

  if (spawning) {

    int mouseCol = floor(mX / w);
    int mouseRow = floor(mY / w);
    int radius = floor(matrixSize / 2);

    int prevCol = wasSpawning ? floor(pmouseX / w) : mouseCol;
    int prevRow = wasSpawning ? floor(pmouseY / w) : mouseRow;


    float dist = dist(prevCol, prevRow, mouseCol, mouseRow);
    float stepSize = max(1, radius / 2.0);
    int steps = max(1, ceil(dist / stepSize));

    for (int s = 0; s<= steps; s++){
      float t = s / (float) steps;
      int col = round(lerp(prevCol, mouseCol, t));
      int row = round(lerp(prevRow, mouseRow, t));
      stampBrush(col, row, radius, chance);
    }
/*
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
*/


    
  }
  wasSpawning = spawning;
  

  
}



void stampBrush(int mouseCol, int mouseRow, int radius, float chance) {
  for (int i = -radius; i <= radius; i++) {
    for (int j = -radius; j <= radius; j++) {
      if (i * i + j * j <= radius * radius) {
        if (random(1) < chance) {
          int col = mouseCol + i;
          int row = mouseRow + j;
          if (col >= 0 && col < cols && row >= 0 && row < rows) {
            if (grid[col][row] == 0) {
              
              float offset = 0;
              offset += random(-hueJitter, hueJitter);

              float h = hueValue + offset;
              h = ((h % 360) + 360) % 360;
              if (h < 1) h = 1;

              grid[col][row] = h;
            }
          }
        }
      }
    }
  }
}


