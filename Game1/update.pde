void update(){
    
    for(int i = 0; i < cols; i++){
        for(int j = 0; j < rows; j++){
            noStroke();
            
            if (grid[i][j] == 1){
                fill(255);
                int x = i * w;
                int y = j * w;
                square(x, y, w);
            }
            
        }
    }
}