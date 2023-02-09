for drawing lines and moving
if x is between certain values, only side to side works
	if a is pressed a line will start drawing up or down depending on the y val
if y is between certain values, only up and down work
	if a is pressed, a line wills start drawing r/l depending on the x val

need to draw the boundaries of the rectangle which should be variables since they can change
the player's boundaries are also dependent on the rectangle in current play boundaries
once rectangle in play area <= 625 we slayed

atom functionality: size, drawn, redrawn, speed, collisions with bounds

line functionality: just like a square, no redraw, once hit opposite bound (x or y = certain num) cut rectangle
	if line (drawn or tip) collides with atom, lose life and undo draw


