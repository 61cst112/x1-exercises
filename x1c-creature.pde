// Practice -- Use variables for creature.
// B.A.Martin

float x, y;
float horizon;

//// SETUP:  size, mode, initialize variables.
  size( 640, 480 );
  smooth();
  ellipseMode( CENTER );
  horizon=  height/3;
  x=  200;
  y=  horizon-50;
  

//// DRAW THE FRAME:  scene, house, Zoog  
  
  // SCENE:  sky, grass, sun, house, creature at (x,y)

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
  text( "Zoog is in the house!", width/3,10 );
  fill( 0,0,255 );
  text( "My name is:  B.A.Martin", 10,height-10 );
  
  
  // Creature at (x,y)
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
  

