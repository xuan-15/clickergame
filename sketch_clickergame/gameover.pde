void gameover() {
  background(184, 98, 99);
  theme.pause();
  Gameover.play();
  fill(0);
  textSize(150);
  text("GAMEOVER", 400, 300);
  fill(255);
  strokeWeight(3);
  stroke(0);
  tactilerect(250, 400, 300, 100);
  rect(250, 400, 300, 100);
  fill(0);
  textSize(60);
  text("restart", 400, 435);
  text("Highest score:"+score, width/2, 50);
}

void gameoverclicks() {
  reset();
  if (mouseX > 250 &&mouseX<550&&mouseY>400&&mouseY <500)
    mode = intro;
    theme.rewind();
}
