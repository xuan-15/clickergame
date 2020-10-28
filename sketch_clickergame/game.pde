void game() {
  background(255, 167, 3);
  fill (0);
  theme.play();

  text("score:"+score, width/2, 50);
  text("lives:"+lives, width/2, 100);
  //pause
  strokeWeight(0);
  stroke(0);
  fill(255);
  circle(100, 100, 100);
  fill(0);
  textSize(30);
  text("pause", 100, 100);
  
  if (targetmode == Orange) {
    //target
    fill(255);
    stroke(0);
    strokeWeight(0);
    circle(x, y, d);
  } else if (targetmode == black) {
    //target
    fill(0);
    stroke(0);
    strokeWeight(0);
    circle(x, y, d);
  }


  //code move
  x=x+vx;
  y=y+vy;
  //bounce code
  if (x<d/2|| x> width-d/2) {
    vx =vx *-1;
  }
  if (y<d/2|| y> height-d/2) {
    vy =vy *-1;
  }
}
void gameclicks() {
  if (dist(mouseX, mouseY, x, y)<d/2) {
    score = score +1;
    vx = vx *1.3;
    vy = vy *1.3;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 100, 100)<50) {
    mode = pause;
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives ==0) 
      mode = gameover;
  }
  
  
}
