
int w = 4;
int cols, rows;
int[][] grid = create2DArray(cols, rows);



void setup(){
    size(1200, 800);
    frameRate(60);
    
    cols = width / w;
    rows = height / w;

    grid = create2DArray(cols, rows);

    

}

void draw(){
    background(0);

    update();
    nextGrid();
}
    
void mouseDragged() {
    int mouseCol = floor(mouseX / w);
    int mouseRow = floor(mouseY / w);

    int matrix = 20;
    int extent = floor(matrix / 2);
    for(int i = -extent; i <= extent; i++){
        for(int j = -extent; j <= extent; j++){
            if(random(1) < 0.1){

            int col = mouseCol + i;
            int row = mouseRow + j;
            if(i >= 0 && i < cols && j >= 0 && j < rows){
            grid[col][row] = 1;
            }
            }
        }
    }
}
    
    

    


    




