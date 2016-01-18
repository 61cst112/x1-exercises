#           Procecessing Language.

## Syntax Rules

* Double-slash **//** begins a *comment*.  (The remainder of the line is ignored by compiler.)
* Semicolon **;** must end each statement.
* Each **BLOCK** of statements should be indented and surrounded by *curly-braces*:
````
            {
                        ...
            }
*         

* Blah blah
* 


* Double-slash **//** begins a *comment*.  (The remainder of the line is ignored by compiler.)
* ````
            // Always begin with a comment that says what you are trying to do!

* Semicolon **;** must end each statement.
````
            // Draw a red house, with roof.
            fill( 255, 0, 0 );                              // Red house
            rect( 100,100, 50,50 );
            triangle( 100,100, 150,100, 125,50 );           // Roof.
            
* Each **BLOCK** of statements should be indented and surrounded by *curly-braces*:
````
            //// SETUP:  Define screen size, set modes.
            {
                        size( 600, 400 );
                        rectMode( CORNER );
                        ellipseMode( CENTER );
            }

*         

* Blah blah

