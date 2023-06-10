# artWork-Java

Description of piece:
It creates a dynamic chessboard-like pattern with nested loops, diagonal lines, and randomly generated sizes.
The program also responds to mouse clicks and drag to display a message, modify the image and save the artwork as a PNG.
 

Adobe Color Palette Used:
=========================
- https://color.adobe.com/waving-colorful-flag-of-ukraine.-color-theme-59a6d092-8daf-40d0-8120-d7b247bc611a

- color 1: #072B59 (dark blue)
- color 2: #3370A6 (light blue)
- color 3: #F2D43D (yellow)
- color 4: #8C6B07 (brown)
- color 5: #D9AA1E (light brown)
- color WHITE: 255

Instructions:
=============

When the program starts random square sizes will be shown.
 
Press the left button for a text to be displayed. 

Once the mouse button is released the chessboard pattern will have the same sized squares. 
Every time the mouse is released the diagonal lines will open wider.

Drag the mouse for squares to be drawn. Release the mouse to clear.

If the right button is pressed, the canvas will be saved as a PNG file with the name of the author and student number.
 
Known bugs/problems: the squares drawing is done in setup() and inside of a mouse method. 
I would like the code to be restructured, so there is less code lines.

Note: The artwork looks much better with Stroke(0) on lines 33 and 114 insted of noStroke() as it gives black outline 
to the shapes.
However it will violate max colour specification, so I used noStroke() to stay within 5 colours + white colour limit.
====================

Sources referred to during the development of the assignment: N/A
*/
