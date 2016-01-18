# x1-exercises
### Exercises (for the beginner)
---------------------------------

#### x1a.  Shapes & colors  
  * Draw various shapes:  point, line, triangle, rect, ellipse.   
  * Use different colors (red, green, etc.)

#### x1b.  Scene + "creature"
  * Make a scene (blue sky, green grass, red house)
  * Add a creature at (200,300).  
 
#### x1c:  Use variables for creature position (x,y)  
 * float x=200, y=300;

#### x1d:  Dynamic sketch -- Move the creature
````
    void setup( ) {
      // ...
    }
    ////// DRAW THE NEXT FRAME //////
    void draw( ) {
      // ...
      // Change the coordinates (x,y)
      x=  x + dx;
      y=  y + dy;
      // ...
    }
 ````

#### x1e:  Modularization
````
   // DRAW NEXT FRAME:  scene, house, Zoog
   void draw() {
      scene();
      action();
      show();
      messages();
   }
````
