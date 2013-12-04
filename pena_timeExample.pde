int oldTime = 0;
int currentTime = 0;
color c;
float x, y;
void setup(){
  background(0);
  size(500,500);
  colorMode(HSB, 360, 100, 100);
  c = color(random(360), 100, 100);
}

void draw(){
  background(0);
  if(currentTime - oldTime >= 2000){
    oldTime = currentTime;
    x = random(width);
    y = random(height);
    c = color(random(360), 100, 100);
  }
  fill(c);
  ellipse(x, y, 30, 30);
  currentTime = millis();
}
