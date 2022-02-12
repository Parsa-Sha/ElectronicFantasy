// Electronic Fantasy
// Interactive Illustration inspired by Robot Dream
// 02/05/2022
// https://github.com/Parsa-S/SchoolWork/blob/main/ElectronicFantasy.pde


void setup() { // Is an act of generosity, truly for good?
  size(1120, 600);
}
void draw() { 
  delay(500);
  sky();
  // Clouds
  stroke(190, 207, 197);
  fill(180, 197, 187);
  triangle(630, 223, 0, 200, 0, 240);
  
  // Birds
  fill(255);
  strokeWeight(0);
  triangle(200, 150, 230, 150, 215, 155);
  triangle(400, 80, 430, 80, 415, 85);
  triangle(150, 90, 180, 90, 165, 95);
  
  buildings();
  fGBuildings();
  xFGBuildings();
  river();
  
  // Wake
  stroke(200);
  fill(200);
  triangle(470, 502, 197, 500, 200, 520);
  
  boats();
  railing();
  buoy();
  robot();
}


void sky() { // Sky
    noFill();
    for (int i = 0; i <= height-200; i++) {
      float inter = map(i, 0, height-200, 0, 1);
      color c = lerpColor(color(209, 250, 254), color(210, 199, 169), inter);
      stroke(c);
      line(0, i, width, i);
  }
}

void buildings() { // Buildings
  stroke(80);
  strokeWeight(1);
  float temp = 0;
  int[] colourArray = new int[4];
  colourArray[0] = color(145, 125, 98);
  colourArray[1] = color(100, 126, 115);
  colourArray[2] = color(66, 87, 80);
  colourArray[3] = color(156, 129, 102);
  for(int i = 0; i < 1000; i++){
    float colourIndex = random(4);
    colourIndex = floor(colourIndex);
    fill(colourArray[int(colourIndex)]);
    float y = random(10, 300);
    float x = random(10, 100);
    rect(temp, 400 - y, x, y);
    temp = temp + x;
  }
}

void fGBuildings() { // Buildings
  stroke(80);
  strokeWeight(3);
  float temp = 0;
  int[] colourArray = new int[4];
  colourArray[0] = color(135, 115, 88);
  colourArray[1] = color(90, 116, 105);
  colourArray[2] = color(56, 77, 70);
  colourArray[3] = color(146, 119, 92);
  for(int i = 0; i < 1000; i++){
    float colourIndex = random(4);
    colourIndex = floor(colourIndex);
    fill(colourArray[int(colourIndex)]);
    float y = random(10, 100);
    float x = random(50, 100);
    rect(temp, 400 - y, x, y);
    temp = temp + x;
  }
}


void xFGBuildings() { // Buildings
  stroke(80);
  strokeWeight(1);
  float temp = 0;
  int[] colourArray = new int[2];
  colourArray[0] = color(90, 116, 105);
  colourArray[1] = color(56, 77, 70);
  for(int i = 0; i < 1000; i++){
    float colourIndex = random(2);
    colourIndex = floor(colourIndex);
    fill(colourArray[int(colourIndex)]);
    float y = random(5, 20);
    float x = random(20, 40);
    rect(temp, 400 - y, x, y);
    temp = temp + x;
  }
}

void river() {
  fill(125, 156, 150);
  rect(0, 400, width, 200);
}

void railing() {
  stroke(0);
  strokeWeight(3);
  fill(98, 63, 44);
  rect(0, 520, 1120, 30);
  rect(450, 550, 20, 200);
}

void buoy(){
  fill(117, 44, 25);
  ellipse(150, 770, 580, 580);
  
  fill(125, 156, 150);
  ellipse(150, 770, 380, 380);
  
  fill(93, 35, 15);
  strokeWeight(12);
  stroke(93, 35, 15);
  line(135, 510, 135, 550);
  line(165, 510, 165, 550);
  line(135, 530, 165, 530);
}

void robot() {
   
   fill(70, 76, 81);
  rect(800, 200, 100, 200);

  fill(57, 60, 65);
  stroke(57, 60, 65);
  strokeWeight(1);
  
    // Right Arm
  quad(1010, 330, 1000, 429, 1120, 516, 1120, 463);
  
  arc(850, 200, 200, 200, PI, 2 * PI);
  rect(750, 200, 200, 100);

  // Highlight for Head
  stroke(163, 177, 190);
  fill(163, 177, 190);
  strokeWeight(1);
  beginShape();
  vertex(750, 295);
  vertex(750, 200);
  vertex(760, 160);
  vertex(770, 142);
  vertex(783, 124);
  vertex(800, 113);
  vertex(810, 111);
  //vertex(785, 130);
  vertex(775, 155);
  vertex(760, 190);
  endShape(CLOSE);
  
  // Body
  fill(57, 60, 65);
  stroke(57, 60, 65);
  
  beginShape();
  vertex(1035, 489);
  vertex(1020, 600);
  vertex(715, 600);
  vertex(693, 466);
  vertex(676, 372);
  vertex(701, 339);
  vertex(720, 317);
  vertex(879, 306);
  vertex(980, 316);
  vertex(1038, 347);
  endShape(CLOSE);
  
  // Left Arm
  rect(550, 500, 80, 30);
  
  beginShape();
  vertex(712, 392);
  vertex(669, 600);
  vertex(587, 600);
  vertex(584, 518);
  vertex(629, 514);
  vertex(628, 582);
  vertex(678, 358);
  vertex(697, 348);
  vertex(712, 350);
  vertex(722, 374);
  endShape(CLOSE);
  
  stroke(163, 177, 190);
  fill(163, 177, 190);
  strokeWeight(0);
  
  // Arm Highlights
  beginShape();
  vertex(638, 541);
  vertex(674, 363);
  vertex(703, 338);
  vertex(679, 390);
  vertex(650, 490);
  endShape(CLOSE);
  
  triangle(550, 500, 620, 500, 550, 510);
  
  // Panel
  strokeWeight(2);
  stroke(0);
  line(975, 600, 975, 320);
  line(775, 600, 775, 320);
  line(975, 320, 775, 320);
  line(775, 600, 975, 600);
  
  // Screws
  strokeWeight(5);
  ellipse(800, 460, 7, 7);
  ellipse(950, 460, 7, 7);
  ellipse(800, 360, 7, 7);
  ellipse(800, 560, 7, 7);
  ellipse(950, 360, 7, 7);
  ellipse(950, 560, 7, 7);
}

void boats(){
  strokeWeight(0);
  fill(117, 44, 25);
  rect(320, 430, 20, 50);
  rect(300, 450, 50, 20);
    
  fill(136, 133, 118);
  rect(420, 470, 40, 20);
    
  fill(180);
  rect(410, 450, 10, 50);

  fill(76, 78, 65);
  stroke(76, 78, 65);
  beginShape();
  vertex(402, 452);
  vertex(393, 484);
  vertex(267, 489);
  vertex(248, 472);
  vertex(398, 451);
  endShape(CLOSE);
  
    beginShape();
  vertex(495, 474);
  vertex(496, 483);
  vertex(479, 499);
  vertex(363, 503);
  vertex(359, 492);
  endShape(CLOSE); 
}
