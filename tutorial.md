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


* Semicolon **;** must end each statement.
* Double-slash **//** begins a *comment*.  (The remainder of the line is ignored by compiler.)
````
            // This is an example of some Processing statements, with comments.
            // (Always begin with a comment that says what you are trying to do!)

            // Draw a red house, with roof.
            fill( 255, 0, 0 );                              // Red house
            rect( 100,100, 50,50 );
            triangle( 100,100, 150,100, 125,50 );           // Roof.
            

* Each **BLOCK** of statements should be indented and surrounded by *curly-braces*:
````
            {
            size( 600, 400 );
            rectMode( CENTER );

                        ...
            }
*         

* Blah blah

