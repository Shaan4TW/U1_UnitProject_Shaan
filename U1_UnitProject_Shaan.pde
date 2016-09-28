


void setup()
{
  size(500,500);
  background(255);
}


void draw()
{
  radio();
}


void radio()
{
  
//Main radio rectangle
strokeWeight(20);
fill(215,215,215);
rect(50, 200, 400, 250);
  
  
//Radio antennas
strokeWeight(20);
line(100, 200, 100, 100);
line(400, 200, 400, 100);

//Speakers
strokeWeight(10);
fill(100,100,100);
ellipse(130, 325, 115, 115);

strokeWeight(10);
fill(100,100,100);
ellipse(370, 325, 115, 115);

strokeWeight(5);

//Play button
stroke(0);
strokeWeight(5);
fill(0);
ellipse(250, 330, 70, 70);

fill(255);
triangle(238, 315, 238, 345, 268, 330);

//Pause button
strokeWeight(5);
fill(0);
ellipse(208, 260, 50, 50);

stroke(255);
line(201, 252, 201, 267);

stroke(255);
line(212, 252, 212, 267);

//Next Song Button
stroke(0);
strokeWeight(5);
fill(0);
ellipse(288, 260, 50, 50);

strokeWeight(1);
fill(255);
triangle(278, 250, 278, 270, 290, 260);

strokeWeight(1);
fill(255);
triangle(290, 250, 290, 270, 302, 260);

//Volume -
strokeWeight(5);
fill(0);
ellipse(208, 400, 50, 50);

strokeWeight(5);
stroke(255);
line(200, 400, 215, 400);

//Volume +
stroke(0);
strokeWeight(5);
fill(0);
ellipse(288, 400, 50, 50);

strokeWeight(5);
stroke(255);
line(278, 400, 298, 400);

strokeWeight(5);
stroke(255);
line(288, 390, 288, 410);

stroke(0);

}