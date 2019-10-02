//THIS PROJECT WAS CREATED BY;
//Mary McCarthy (18234712)
//Michael Fitzgerald (18234542)
//Ciara O'Brien (18223834)
//Roisin Moloney (18227538)





int listIndex;
int numberOfFonts;
String fontName;
PFont currentFont;
PFont defaultFont;

int mode = 1;

String userinputShape;


color userColour;
color white = color(255, 255, 255);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
color black = color(0, 0, 0);
color red = color(255, 0, 0);
color grey = color(131, 129, 129);

PShape userShape;
PShape rectangle;
PShape circle;
PShape triangle;
PShape line;
PShape textShapeThing;

int shapeSize;
final int minShapeSize = 5;
final int maxShapeSize = 100;








void setup() {
  size(500, 500);
  background(white);
  //canvas
  fill(white);
  rect(0, 0, 500, 250);
  shapeSize = 100;
  defaultFont = createFont("Courier", 12);
  numberOfFonts = PFont.list().length;
  listIndex = -1;
}

void draw() {
  rectangle = createShape(RECT, mouseX, mouseY, shapeSize, shapeSize);
  rectangle.setFill(userColour);
  circle = createShape(ELLIPSE, mouseX, mouseY, shapeSize, shapeSize);
  circle.setFill(userColour);
  triangle = createShape(TRIANGLE, mouseX, mouseY, mouseX-shapeSize, mouseY+shapeSize, mouseX, mouseY+shapeSize);
  triangle.setFill(userColour);
  line = createShape(LINE, mouseX, mouseY, mouseX, mouseY+shapeSize);
  line.setStroke(userColour);
 






  //midbar
  fill(grey);
  rect(0, 250, 500, 50);
  //red
  fill(red);
  rect(0, height*.60, width/4, height/5);
  //blue
  fill(blue);
  rect(0, height*.80, width/4, height/5);
  //green
  fill(green);
  rect(width*.25, height*.60, width/4, height/5);
  //black
  fill(black);
  rect(width*.25, height*.80, width/4, height/5);
  //square
  fill(white);
  rect(250, 300, 125, 100);
  rect(287.5, 325, 50, 50);
  //circle
  rect(375, 300, 125, 100);
  ellipse(437.5, 350, 50, 50);
  //triangle
  rect(250, 400, 125, 100);
  triangle(337.5, 425, 287.5, 475, 337.5, 475);
  //line
  rect(375, 400, 125, 100);
  line(412.5, 450, 462.5, 450);

  textFont(defaultFont);
  fill(black);
  
 if (userinputShape == "rect") {
    textShapeThing = createShape(RECT, 100, 275.5, 15, 15);
    textShapeThing.setFill(userColour);
    
    shape(textShapeThing);
    
  } else if (userinputShape == "circle"){
       textShapeThing = createShape(ELLIPSE, 100, 275.5, 15, 15);
    textShapeThing.setFill(userColour);
    
    shape(textShapeThing);
  }else if (userinputShape == "triangle"){
        textShapeThing = createShape(TRIANGLE, 90, 285,115,260, 115, 285); 
    textShapeThing.setFill(userColour);
    
    shape(textShapeThing);
  } else if (userinputShape == "line"){  
    textShapeThing = createShape(LINE, 90, 285, 115, 285);  
    textShapeThing.setFill(userColour);
    
    shape(textShapeThing);
    
  }
  
  
  
  text("Size: " + shapeSize, 10, 280);


  if (mousePressed == true) {

    if (mouseX >= 0 && mouseX <= 125 && 
      mouseY >= 300 && mouseY <= 400) {
      userColour = red;
    } 
    if (mouseX >= 125 && mouseX <= 250 &&
      mouseY >= 300 && mouseY <= 400) {
      userColour = green;
    }
    if (mouseX >= 0 && mouseX <= 125 &&
      mouseY>= 400 && mouseY <= 500) {
      userColour = blue;
    }
    if (mouseX >= 125 && mouseX <= 250 && 
      mouseY >= 400 && mouseY <= 500) {
      userColour= black;
    }

    if (mouseX >= 250 && mouseX <= 375 &&
      mouseY >= 300 && mouseY <= 400) {
      userShape = rectangle;
    }
    if (mouseX >= 375 && mouseX <= 500 &&
      mouseY >= 300 && mouseY <=400) {
      userShape = circle;
    }
    if (mouseX >= 250 && mouseX <= 375 &&
      mouseY >= 400 && mouseY <= 500) {
      userShape = triangle;
    }
    if (mouseX >= 375 && mouseX <= 500 &&
      mouseY >= 400 && mouseY <=500) {
        userShape = line;
    }
  }
}

void mousePressed() {
  if (mouseX >= 250 && mouseX <= 375 && mouseY >= 300 && mouseY <= 400) {
    userinputShape = "rect";
  } else if (mouseX >= 375 && mouseX <= 500 && mouseY >= 300 && mouseY <= 400) {
    userinputShape = "circle";
  } else if (mouseX >=250 && mouseX <= 375 && mouseY >= 400 && mouseY <= 500  ) {
    userinputShape = "triangle";
  } else if (mouseX >= 375 && mouseX <= 500 && mouseY >= 400 && mouseY <= 500) {
    userinputShape = "line";
    
  }
  
  if (userinputShape == "rect") {
    shape(rectangle);
  } else if (userinputShape == "circle"){
    shape(circle);
  }else if (userinputShape == "triangle"){
    shape(triangle);
  } else if (userinputShape == "line"){
    shape(line);
    
  }
  
}




void keyPressed() {
  if (key == ' ') {
    background(255);
  }


  if (key == CODED) {
    if (keyCode == UP) {
      if (shapeSize < maxShapeSize) {
        shapeSize = shapeSize + 5;
      }
    } else if (keyCode == DOWN) {
      if (shapeSize > minShapeSize) {
        shapeSize = shapeSize - 5;
      }
    }
  }
}
