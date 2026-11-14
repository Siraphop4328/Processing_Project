int w = 5;

int cols, rows;
int[][] grid = create2DArray(cols, rows);

float displayedFps = 0;
int lastFpsUpdate = 0;
int updateInterval = 100;

int brushSize = 15;
float spawnChance = 0.1;
float deleteChance = 0.5;




void setup() {
  fullScreen();
  frameRate(60);

  cols = width / w;
  rows = height / w;

  grid = create2DArray(cols, rows);
}

void draw() {
  background(0);

  update();
  nextGrid();
  deletePixel(brushSize, 0.2);
  fpsText();
  
  
  
}

void mouseDragged() {
    spawnPixel(mouseX, mouseY, brushSize, spawnChance);
  }



