// Practice with different shapes and colors.
// B.A.Martin

// SETUP:  size & modes
size( 400, 300 );
smooth();


// DRAW:  shapes and colors

text( "x1a.  Shapes & colors", 10,10 );
text( "My name is:  B.A.Martin", 10,height-10 );

point( 20,20 );
point( 25,25 );
point( 30,30 );
line( 100,20, 200,20 );
line( 200,30, 250,50 );

// Rectangles
rect( 50,50, 80,60 );
fill( 255,0,0 );                // Red
rect( 80,80, 60,90 );


// Ellipses
fill( 0,255,0 );                // Green
ellipse( 200,100, 90,90 );
stroke( 255,0,0 );              // Red border
fill( 255,255,0 );              // Yellow fill
ellipse( 250,150, 90,60 );

// Lines between centers.
stroke( 255,0,255 );
line(50,50, 80,80 );
line(200,100, 250,150 );

// Triangles.
fill( 0,255,255,255 );
stroke( 255,127,0 );
strokeWeight(4);
triangle( 300,50, 300,90, 350,60 );
triangle( 330,100, 390,160, 390,100 );
strokeWeight(1);
triangle( 320,140, 360,180, 320,180 );

