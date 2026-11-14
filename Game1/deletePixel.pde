void deletePixel() {
  if (mousePressed && mouseButton == RIGHT) {
    int mouseCol = floor(mouseX / w);
    int mouseRow = floor(mouseY / w);

    int matrix = 20;
    int radius = floor(matrix / 2);
    for (int i = -radius; i <= radius; i++) {
      for (int j = -radius; j <= radius; j++) {
        if (i * i + j * j <= radius * radius) {
          if (random(1) < 0.5) {
            int col = mouseCol + i;
            int row = mouseRow + j;
            if (col >= 0 && col < cols && row >= 0 && row < rows) {
              grid[col][row] = 0;
            }
          }
        }
      }
    }
  }
}