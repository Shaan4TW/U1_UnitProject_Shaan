import ddf.minim.analysis.BeatDetect;
/*
Hello, this is a Digital Radio project. You will be able to play music, pause music,
go to the next song, and adjust the volume. Unfortunately, there are only 5 songs
that you will be able to play, but that was to prevent a huge download. Anyway, I
hope you enjoy this project!

- Made by Shaan_4TW 

*/

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer song;
AudioPlayer input;
int number = 0;
int circ = 115;
BeatDetect beat;

AudioPlayer [] Song = new AudioPlayer [5];


void setup()
{
 
  
  size(500,500);
  background(0, 120, 190);
  
  minim = new Minim(this);
  Song[0] = minim.loadFile("Tristam & Braken - Flight.mp3");
  Song[1] = minim.loadFile ("Alan Walker - Sing Me To Sleep.mp3");
  Song[2] = minim.loadFile ("TWRK - BaDINGA!.mp3");
  Song[3] = minim.loadFile ("DJ Snake - Middle (Audio) ft. Bipolar Sunshine.mp3");
  Song[4] = minim.loadFile ("[DnB] - Tristam & Braken - Frame of Mind [Monstercat Release].mp3");
}


void draw()
{
  radio();
  
  beatDetect();
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

//Speaker Left
strokeWeight(10);
fill(100,100,100);
ellipse(130, 325, circ, circ);

strokeWeight(7);
line(90, 285, 170, 285);

strokeWeight(7);
line(75, 305, 185, 305);

strokeWeight(7);
line(75, 325, 185, 325);

strokeWeight(7);
line(75, 345, 185, 345);

strokeWeight(7);
line(90, 365, 170, 365);

strokeWeight(7);
line(90, 285, 90, 365);

strokeWeight(7);
line(110, 270, 110, 380);

strokeWeight(7);
line(130, 270, 130, 380);

strokeWeight(7);
line(150, 270, 150, 380);

strokeWeight(7);
line(170, 285, 170, 365);

//Speaker Right
stroke(0);
strokeWeight(10);
fill(100,100,100);
ellipse(370, 325, circ, circ);

strokeWeight(7);
line(330, 285, 410, 285);

strokeWeight(7);
line(320, 305, 420, 305);

strokeWeight(7);
line(320, 325, 420, 325);

strokeWeight(7);
line(320, 345, 420, 345);

strokeWeight(7);
line(330, 365, 410, 365);

strokeWeight(7);
line(330, 285, 330, 365);

strokeWeight(7);
line(350, 270, 350, 380);

strokeWeight(7);
line(370, 270, 370, 380);

strokeWeight(7);
line(390, 270, 390, 380);

strokeWeight(7);
line(410, 285, 410, 365);

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

void mouseReleased()
{
  
  
  //Play button collision
  if(mouseX>215 && mouseX<285 && mouseY>295 && mouseY<365)
   {
    Song[number].play();
   }
  //Pause button collision
  if(mouseX>183 && mouseX<233 && mouseY>235 && mouseY<285)
   {
    Song[number].pause();
   }
  //Next song button collision
  if(mouseX>263 && mouseX<313 && mouseY>235 && mouseY<285)
   { 
    Song[number].rewind(); 
     
    Song[number].pause();
     
    number+=1;
    
    if (number>4)
     {
       number = 0;
     }
     
     Song[number].play();
   }
 
  //Volume - button collision
  if(mouseX>183 && mouseX<233 && mouseY>375 && mouseY<425)
   {
    Song[number].setGain(Song[number].getGain() - 5);
   }
  //Volume + button collision
  if(mouseX>263 && mouseX<313 && mouseY>375 && mouseY<425)
   {
    Song[number].setGain(Song[number].getGain() + 5);
   }
 
  }
  

void beatDetect()
{
  beat = new BeatDetect();
  beat.detect(Song[number].mix);
 
  if( beat.isOnset() ) 
  {
    circ++;
  }
  
  if(circ >= 230)
  {
    circ--;
  }
    
    
  if(circ < 115) 
  {
  circ = 115;
  }
  
}