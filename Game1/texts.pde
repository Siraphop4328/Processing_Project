

void fpsText(){
  if (millis() - lastFpsUpdate > updateInterval){
    displayedFps = frameRate;
    lastFpsUpdate = millis();
  }
  textSize(16);
  text(displayedFps, 1, 15);
}

