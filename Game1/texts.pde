

void fpsText(){
  if (millis() - lastFpsUpdate > updateInterval){
    displayedFps = frameRate;
    lastFpsUpdate = millis();
  }
  fill(360);
  textSize(16);
  text(displayedFps, 1, 15);
}

