int w = 4;

int cols, rows;
float[][] grid = create2DArray(cols, rows);

float displayedFps = 0;
int lastFpsUpdate = 0;
int updateInterval = 100;

int brushSize = 25;
float spawnChance = 0.25;
float deleteChance = 0.8;

float hueValue = 57;
float hueSpread = 10;
float hueJitter = 10;

boolean wasSpawning = false;

float saturationValue = 94.35;




void setup() {
  fullScreen();
  frameRate(90);
  colorMode(HSB, 360, 255, 255);

  cols = width / w;
  rows = height / w;

  grid = create2DArray(cols, rows);
}

void draw() {
  background(0);

  update();
  nextGrid();
  deletePixel(brushSize, 0.2);
  spawnPixel(mouseX, mouseY, brushSize, spawnChance);
  fpsText();
  
  
  
}


    
  



