// Practice x1b -- Scene + creature.
// B.A.Martin

//// SETUP:  size, mode, initialize variables.
{
  size( 600, 450 );
  smooth();
  ellipseMode( CENTER );
 } 

//// DRAW THE FRAME:  scene, house, Zoog  
  
//// SCENE:  sky, grass, sun, house, creature at (x,y)
{
  background( 150,200,255 );              // Sky blue.
  fill( 200,255,200 );                    // Grass
  noStroke();
  rectMode( CORNERS );
  rect( 0,150, width,height ); 
  
  // House on horizon (150).
  fill( 255,0,0 );                // Red
  rect( 100,50, 300,150 );
  triangle( 100,50, 300,50, 200,25 );
}

//// MESSAGES
{
  fill(0);
  text( "Practice x1b -- Scene + creature.", width/3,10 );
  text( "Zoog is at (200,300).", width/3,20 );
  fill( 0,0,255 );
  text( "x1b / B.A.Martin", 10,height-10 );
}  
  
//// Creature at (200,300)
{
  noStroke();
  rectMode( CENTER );
  // Body.
  fill( 0,0,255 );
  rect( 200,300, 60,100 );
  // Head
  fill( 255,200,200 );
  ellipse( 200, 300-50-20,  40,40 );
  text( "Zoog", 200,300 );
  // Eyes
  fill(255);
  ellipse( 200-10, 300-50-25,  12,12 );
  ellipse( 200+10, 300-50-25,  12,12 );
}  

