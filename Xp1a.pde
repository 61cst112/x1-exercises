//// Project #1 - scene only.
//// (Start with practice -- dynamic sketch, with variables.)
//// B.A.Martin

float x, y;                        // Zoog coordinates.
float dx, dy;                      // Zoog speed.

float horizon;
float sunX=0, sunDX=1, sunY=50;
float goldX=100, goldY=200;

boolean freeze=false;


// SETUP:  size & modes
void setup() {
  size( 640, 480 );
  smooth();
  horizon=  height/3;
  reset();
}
void reset() {
  x=  mouseX;
  y=  mouseY;
  dx=  random( 1, 5 );
  dy=  random( 0.5, 3.5 );
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
  ellipse( sunX,sunY, 40,40 );
  sunX=  sunX + sunDX;
  if (sunX>width) {                      // Sunset
    sunX=  0;
    sunY=  random( 50, 150 );
  }

  // House
  fill( 255,0,0 );                      // Red
  rect( width/8,horizon-100, 200+width/8,horizon );
  triangle( width/8,horizon-100, 
          200+width/8,horizon-100, 
          100+width/8,horizon-150 );
  
  // Tree
  fill( 127, 50, 0 );
  rectMode( CORNER );
  rect( width*3/4, horizon,  40, -70 );  // Brown trunk
  fill( 0,150,0 );
  ellipse( 20+width*3/4, horizon-70-40, 90,90 );
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
  if (freeze) return;
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
  
  // Gold
  fill( random(240,255), random(140,180), random(0,50) );
  ellipse( goldX, goldY, 60, 40 );
  fill( random(240,255), random(140,180), random(0,50) );
  ellipse( goldX, goldY, 50, 30 );
  fill( random(240,255), random(140,180), random(0,50) );
  ellipse( goldX, goldY, 40, 20 );
}


//// EVENT HANDLERS:  Mouse click
void mousePressed() {
  reset();
  goldX=  mouseX;
  goldY=  mouseY;
}
void keyPressed() {
  if (key == 'q') {
    exit();
  }
  if (key == 'r') {
    reset();
  }
  if (key == 'h') {
    x=  200;              // Back to house
    y=  horizon-50;
  }
  if (key == 'f') {
    freeze=  ! freeze;
  }
}

