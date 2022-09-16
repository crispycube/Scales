void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean offset = false;
  for(int y = -30; y < 500; y += 20){
    for(int x = 0; x < 600; x += 15){
      if(offset){
        scale(x, y);
      } else {
        scale(x + 20, y);
      }
    }
    
    if(offset){
      offset = false;
    } else if(!offset){
      offset = true;
    }
  }
}
void scale(int x, int y) {
  fill(255, 0, 0);
  if(Math.random() < 0.27){
    fill(0, 0, 255);
  }
  beginShape();
  vertex(x, y);
  vertex(x + 20, y + 30);
  vertex(x, y + 60);
  vertex(x - 20, y + 30);
  endShape(CLOSE);
  
  fill(255);
  beginShape();
  vertex(x, y+10);
  vertex(x+10, y+30);
  vertex(x, y+50);
  vertex(x-10, y+30);
  endShape(CLOSE);
}
