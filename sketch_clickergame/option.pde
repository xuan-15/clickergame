void option() {
  background(#03FFEC);
  strokeWeight(3);
  stroke(255);
  fill(255);
  tactile(200, 300, 175);
  circle(200, 300, 300);
  fill(0);
  tactile(600, 300, 175);
  circle(600, 300, 300);
  tactilerect(300, 600, 200, 100);
  rect(300, 600, 200, 100);
  fill(255);
  text("Back", 400, 650);
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
}

void optionclicks() {
  if (dist(mouseX, mouseY, 200, 200)<300) {
    targetmode = Orange;
  } else if (dist(mouseX, mouseY, 600, 300)<300) {
    targetmode = black;
  } else if (mouseX > 300 &&mouseX<500&&mouseY>600&&mouseY <700)
    mode = intro;
  
}
