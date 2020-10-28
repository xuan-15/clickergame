//sound
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer theme, coin, bump, Gameover;

//xuan zhou
//oct 12
//colors
color orange = #FFA703;


//mode variables=====================================
int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
final int option = 4;

int targetmode;
final int black = 5;
final int Orange = 6;



//target variables===============================
float x, y, d;
float vx, vy;
int score, lives;

void setup() {//========================================
  reset();
  size(800, 800);
  mode = intro;
  targetmode = Orange;
  textAlign(CENTER, CENTER);
  //target setup
  x = width/2;
  y = width/2;
  d = 100;
  vx=random(-3, 3);
  vy=random(-3, 3);
  score = 0;
  lives = 5;
  tactile(100, 300, 300);


  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  Gameover = minim.loadFile("gameover.wav");
}//====================================== 


void tactile(float x, int y, int r) {//==========================
  if (dist(x, y, mouseX, mouseY)<r) {
    stroke(orange);
  } else {
    stroke(0);
  }
}//============================


void tactilerect(int x, int y, int w, int h) {
  if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h) {
    stroke(orange);
      } else {
    stroke(0);
  }
}


void draw() {//========================================
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == option) {
    option();
  } else {
    println("Error:Mode =" +mode);
  }
}//=============================================
