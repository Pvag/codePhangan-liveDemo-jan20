// This Processing sketch draws a moving white rectangle without borders on a red background.
// The rectangle bounces back and forth after "hitting" the vertical edges of the canvas.
//
// Developed by: Paolo Vagnini, during the Free Demo for the course "Code Phangan #1" @ Green Gallery, Koh Phangan, Thailand
// Contact: codephangan@gmail.com
// Creation Date: Jan 7th 2020
//
// The code is provided for the students and all the people interested in starting to code using Processing as a learning tool.
// Please contact me for further informations, private lessons and mentoring about freelancing/working as a Developer.

// declare some variables
int x, speed, side;

void setup() {
  // the next line creates a canvas 600 pixels wide and 200 pixels tall
  size(400, 200); // these 2 values get stored in the variables called width, height
  x = 0; // initial value for the x coordinate of the rectangle
  speed = 4;
  side = 20; // size of the side of the square
  noStroke(); // don't draw the border of the square
}

void draw() {
  // drawing the background is used as a refresh for the whole canvas
  background(255, 0, 0); // RGB coordinates range from 0 to 255
  rect(x, 50, side, side); // x and y coordinates of the top-left corner of the square, width, height
  
  x = x + speed; // change the x position
  
  // invert speed whenever you "hit" a vertical edge of the canvas
  // note: I consider (width - side) as right edge and 0 as left edge, since the x coordinate of the rect refers to its top-left corner
  //       (make a drawing with pen and paper if you want to visualize this and actually understand it better, if needed)
  if ( (x > width - side) || (x < 0) ) { // note: the symbol || means or
    speed = -speed; // actually invert the speed, changing its sign
  }
}
