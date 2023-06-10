// Define variables for line positions, student info and text to display
int xLinePosition = calculateCellSizeX(16); // For diagonal lines
int yLinePosition = calculateCellSizeY(9); // For diagonal lines

String fullName = "Ruslan Zhabskyi";
String studentNumber = "20104105";

String text = "light will win over darkness";


void setup() {
  // Create canvas and set background color
  size(1280, 720);
  surface.setLocation(0, 0);
  background(#072B59);

  // Draw diagonal lines using while loop
  float q=0;
  while (q<16) {
    stroke(#8C6B07);
    line(0, 0, xLinePosition, height);
    xLinePosition = xLinePosition+80;
    q++;
  }
  // Draw diagonal lines using for loop
  int numLines = 8;
  for (float i=0; i<numLines; numLines--) {
    stroke(#3370A6);
    line(0, 0, width, yLinePosition);
    yLinePosition +=80;
  }
 
  noStroke();

  /* Draw chessboard pattern using nested for loops with random sizes of squares
   This is a top half (main color blue) */
  for (int i=10; i < 20; i++)
  {
    for (int j=0; j < 40; j++)
    {
      if ((i + j + 1) % 2 == 0) {
        // if (i + j + 1) % 2 == 0, draw using drawShapeA function
        drawShapeA(40*j, 40*i, random(5)-i);
      } else
      {
        // else, draw using drawShapeB function
        drawShapeB(40*j, 40*i, random(40)-i);
      }
    }
  }

  /* Draw chessboard pattern using nested for loops with random sizes of squares
   This is the bottom half, main color yellow */

  for (int i=0; i < 10; i++)
  {
    for (int j=0; j < 40; j++)
    {
      if ((i + j + 1) % 2 != 0) {
        // if (i + j + 1) % 2 != 0, draw using drawShapeA function
        drawShapeA(40*j, 40*i, random(30));
      } else
      {
        // else, draw using drawShapeB function
        drawShapeB(40*j, 40*i, random(5));
      }
    }
  }
}

void draw() {
  // Display student info
  printStudentInfo();
}

// Mouse methods
void mousePressed() {
  // if left mouse button is pressed, display text and
  if (mouseButton==LEFT) {
    textSize(70);
    text(text.toUpperCase(), 130, 400);
  }

  // if right mouse button is pressed, save canvas as a PNG file
  if (mouseButton==RIGHT) {
    save(fullName.toLowerCase()+"_"+studentNumber+".png");
  }
}

//  Mouse methods
void mouseDragged() {
  drawSquare(5, 10);
}

//  Mouse methods
void mouseReleased() {
  background(#072B59);  // Set the background color to dark blue


  // Create diagonal lines
float q=0;
  while (q<16) {
    stroke(#8C6B07); // Set the stroke color to yellow
    line(0, 0, xLinePosition, height);// Draw a line from top left to bottom right of the canvas
    xLinePosition = xLinePosition+80; // Increment the x position for the next line
    q++;
  }
  // Create diagonal lines
  for (float i=0; i<8; i++) {
    stroke(#3370A6); // Set the stroke color to light blue
    line(0, 0, width, yLinePosition); // Draw a line from top right to bottom left of the canvas
    yLinePosition = yLinePosition+80; // Increment the y position for the next line
  }
  noStroke();
  /* Create a chess board pattern using nested loops
   This is the top half of the board, with the main color blue */
  for (int i=10; i < 20; i++)
  {
    for (int j=0; j < 40; j++)
    {
      if ((i + j + 1) % 2 == 0) {

        // if (i + j + 1) % 2 == 0, draw using drawShapeA function
        drawShapeA(40*j, 40*i, 5-i);
      } else
      {
        // else draw using drawShapeB function
        drawShapeB(40*j, 40*i, 40-i);
      }
    }
  }

  /* Create a chess board pattern using nested loops
   This is the bottom half of the board, with the main color yellow */
  for (int i=0; i < 10; i++)
  {
    for (int j=0; j < 40; j++)
    {
      if ((i + j + 1) % 2 != 0) {
        // if (i + j + 1) % 2 != 0, draw using drawShapeA function
        drawShapeA(40*j, 40*i);
      } else
      {
        // else draw using drawShapeB function
        drawShapeB(40*j, 40*i);
      }
    }
  }
}

/* Bespoke methods
 This method draws a shape B made up of three squares */
void drawShapeA(float x, float y, float s) {
  fill(#072B59);  // Set the fill color to dark blue
  square(x, y, s); // Draw a square at the given x and y position with the given size
  fill(#3370A6);  // Set the fill color to light blue
  square(x, y, s/2); // Draw a square inside the previous square with half the size
  fill(#072B59);  // Set the fill color to dark blue
  square(x+s/2, y+s/2, s/2); // Draw a square inside the previous square at the bottom right corner with half the size
}
void drawShapeA(float x, float y) {
  fill(#072B59);  // Set the fill color to dark blue
  square(x, y, 30); // Draw a square at the given x and y position with the given size
  fill(#3370A6);  // Set the fill color to light blue
  square(x, y, 30/2); // Draw a square inside the previous square with half the size
  fill(#072B59);  // Set the fill color to dark blue
  square(x+30/2, y+30/2, 30/2); // Draw a square inside the previous square at the bottom right corner with half the size
}
/* Bespoke methods
 This method draws a shape B made up of three squares */
void drawShapeB(float x, float y, float s) {
  fill(#F2D43D);  // Set the fill color to yellow
  square(x, y, s); // Draw a square at the given x and y position with the given size
  fill(#8C6B07);  // Set the fill color to brown
  square(x, y, s/2); // Draw a smaller square on top of the first square
  fill(#D9AA1E); // Set the fill color to a light brown
  square(x+s/2, y+s/2, s/2); // Draw a square to the right of the first square, overlapping the second square
}

void drawShapeB(float x, float y) {
  fill(#F2D43D);  // Set the fill color to yellow
  square(x, y, 5); // Draw a square at the given x and y position with the given size
  fill(#8C6B07);  // Set the fill color to brown
  square(x, y, 5/2); // Draw a smaller square on top of the first square
  fill(#D9AA1E); // Set the fill color to a light brown
  square(x+5/2, y+5/2, 5/2); // Draw a square to the right of the first square, overlapping the second square
}

/*Bespoke methods
 Return type int */
int calculateCellSizeX(int nuberOfCells) {
  int size=width/nuberOfCells;
  return size;
}

int calculateCellSizeY(int nuberOfCells) {
  int size=height/nuberOfCells;
  return size;
}
/*Bespoke methods
 Witn no parameters */

void printStudentInfo() {
  textSize(24);
  fill(255);
  text(fullName.toUpperCase(), 20, 20);
  text(studentNumber, 20, height);
}

/*Bespoke methods. Recursion
 This method draws a series of squares in a recursive pattern */
void drawSquare(float size, float numSuares) {
  stroke(255);

  noFill();
  for (int q=0; q<numSuares; q++) { // Loop through the number of squares to draw
    square(mouseX, mouseY, size);  // Draw a square at the current mouse position with the current size
    size+=5;  // Increase the size for the next square
  }
}
