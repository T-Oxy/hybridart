float cx, cy, deg;
PImage im;

void setup() {
  size(800, 800);
  // center
  cx = width/6;
  cy = height/6;
  
  im = loadImage("1.png");

  imageMode(CENTER);
}

void draw() {
  background(0);


  for(int i=1;i<6;i++){
      pushMatrix();
      translate(cx*3, cy*3);
      rotate(frameCount*(i-1) / 1000.0);
      image(im, 0, 0, i*cx, i*cy);
      popMatrix();
  }

/*  pushMatrix();
  deg = deg + 3;
  translate(cx, cy);
  rotate(-radians(deg));
  popMatrix();*/
}
