void spawnPixel(int mX, int mY, int matrixSize, float chance){

  if (mouseButton == LEFT) {
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
              grid[col][row] = 1;
            }
          }
        }
      }
    }
  }
}
