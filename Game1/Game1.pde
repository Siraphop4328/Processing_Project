
int w = 4;
int cols, rows;
int[][] grid = create2DArray(cols, rows);

void setup() {
  size(1200, 800);
  frameRate(60);

  cols = width / w;
  rows = height / w;

  grid = create2DArray(cols, rows);
}

void draw() {
  background(0);

  update();
  nextGrid();
  deletePixel();
}

void mouseDragged() {
  if (mouseButton == LEFT) {
    int mouseCol = floor(mouseX / w);
    int mouseRow = floor(mouseY / w);

    int matrix = 20;
    int radius = floor(matrix / 2);
    for (int i = -radius; i <= radius; i++) {
      for (int j = -radius; j <= radius; j++) {
        if (i * i + j * j <= radius * radius) {
          if (random(1) < 0.05) {
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
