// Practice -- dynamic sketch, with variables.
// B.A.Martin

float x, y;                        // Zoog coordinates.
float dx, dy;                      // Zoog speed.

float horizon;
float xSun=0, dxSun=1, ySun=50;

// SETUP:  size & modes
void setup() {
  size( 640, 480 );
  smooth();
  horizon=  height/3;
  x=  200;
  y=  horizon-50;
  dx=  3;
  dy=  2;
}


// DRAW NEXT FRAME:  scene, house, Zoog
void draw() {
  scene();
  action();
  show();
  messages();
}

  
//// SCENE:  sky, grass, sun, house, creature
void scene(){

  background( 120,220,255 );              // Sky blue.
  fill( 180,255,200 );                    // Grass
  noStroke();
  rectMode( CORNERS );
  rect( 0,horizon, width,height ); 
  
  // Sun 
  fill( 255,220,0 );
  ellipse( xSun,ySun, 40,40 );
  xSun=  xSun + dxSun;
  if (xSun>width) {                      // Sunset
    xSun=  0;
    ySun=  random( 50, 150 );
  }

  // House
  fill( 255,0,0 );                      // Red
  rect( 100,horizon-100, 300,horizon );
  triangle( 100,horizon-100, 300,horizon-100, 200,horizon-150 );
  
}  

//// MESSAGES
void messages() {
  fill(0);
  text( "Click mouse to relocate Zoog (and change speed).", width/3,10 );
  text( "(Zoog goes home when 'h' key is pressed.)", width/2, horizon-10 );
  fill( 0,0,255 );
  text( "x1e-modular.  B.A.Martin", 10,height-10 );
}


//// ACTION:  Move the creature
void action() {
  x=  x + dx;
  y=  y + dy;
}
  
  
//// Show the creature at (x,y)
void show() {
  noStroke();
  rectMode( CENTER );
  // Body.
  fill( 0,0,255 );
  rect( x,y, 60,100 );
  // Head
  fill( 255,200,200 );
  ellipse( x, y-50-20,  40,40 );
  text( "Zoog", x,y );
  // Eyes
  fill(255);
  ellipse( x-10, y-50-25,  12,12 );
  ellipse( x+10, y-50-25,  12,12 );
  fill( 0,0,255 );
  ellipse( x-10, y-50-25,  6,6 );
  ellipse( x+10, y-50-25,  6,6 );
  // Mouth
  fill( 255,0,0 );
  rect( x, y-50-10,  20,4 );  
}


//// EVENT HANDLERS:  Mouse click
void mousePressed() {
  x=  mouseX;
  y=  mouseY;
  dx=  random( 1, 5 );
  dy=  random( 0.5, 3.5 );
}
void keyPressed() {
  if (key == 'q') {
    exit();
  }
  if (key == 'h') {
    x=  200;              // Back to house
    y=  horizon-50;
  }
}

