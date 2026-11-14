
int w = 4;
int cols, rows;
int[][] grid = create2DArray(cols, rows);



void setup(){
    size(1200, 800);
    frameRate(60);
    
    cols = width / w;
    rows = height / w;

    grid = create2DArray(cols, rows);

    grid[20][20] = 1;

}

void draw(){
    background(0);

    update();
    nextGrid();
}
    
void mouseDragged() {
    int i = floor(mouseX / w);
    int j = floor(mouseY / w);
    if(i >= 0 && i < cols && j >= 0 && j < rows){

        grid[i][j] = 1;
    }
}
    
    

    


    




