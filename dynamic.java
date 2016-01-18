            //// Example of a dynamic sketch.
            //// Creature follows the mouse, while sun moves across the sky.

            float x,y;              // Position of creature and sun.
            float sunX, sunY;

            //// SETUP:  Define screen size, set modes.
            void setup()
            {
                        size( 600, 400 );
                        sunX=  width/2;         // Start the sun half-way across the screen.
                        sunY=  50;
            }

            //// DRAW:  sky & sun plus creature
            void draw()
            {
                        background( 150, 200, 250 );                    // Blue sky
                        fill( 255, 255, 0 );
                        ellipse( sunX, sunY, 30,30 );                   // Yellow sun
                        sunX=  sunX + 1;
                        if (sunX > width) sunX=  0;

                        fill( 0,0,200 );
                        rect( mouseX, mouseY, 50, 80 );                 // Blue creature
                        ellipse( mouseX+25, mouseY-20, 40,40 );
            }
