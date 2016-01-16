// Practice -- dynamic sketch, with variables.
// B.A.Martin

float x, y;
float horizon;

// SETUP:  size & modes
void setup() {
  size( 640, 480 );
  smooth();
  horizon=  height/3;
  x=  200;
  y=  horizon-50;
}


// DRAW NEXT FRAME:  scene, house, Zoog
void draw() {
  
  // SCENE:  sky, grass, sun, house, creature

  background( 150,200,255 );              // Sky blue.
  fill( 200,255,200 );                    // Grass
  noStroke();
  rectMode( CORNERS );
  rect( 0,horizon, width,height ); 
  
  // House
  fill( 255,0,0 );                // Red
  rect( 100,horizon-100, 300,horizon );
  triangle( 100,horizon-100, 300,horizon-100, 200,horizon-150 );
  
  fill(0);
  text( "Press any key to move Zoog!", width/3,10 );
  text( "Click mouse to relocate Zoog!", width/3,20 );
  fill( 0,0,255 );
  text( "My name is:  B.A.Martin", 10,height-10 );
  
  
  // Creature at (200,300)
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
}

void keyPressed() {
  x=  x+3;
  y=  y+2;
}
