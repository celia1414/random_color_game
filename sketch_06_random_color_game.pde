// random color game
// Feb. 22, 2020

PImage end;
color c1, c2;
int s = 800;        // background size
int m = 1, n = 1;
int num = 2;        // num*num blocks
int i = 1;
int range = 80;

void setup() {
  background(255);
  noStroke();
  size(800, 800);
  c1 = color(255, 190, 200);
  c2 = color(30, 190, 255);
  end = loadImage("merci.png");
}

void draw() {
  if (range <= 5) image(end, 0, 0);
  else blocks();
}

void mouseClicked() {
  if ((mouseX > 1 + m * s / num && mouseX < 1 + m * s / num + s /num - 2) && (mouseY > 1 + n * s / num && mouseY < 1 + n * s / num + s /num - 2)) {
     background(255);
     num++;
     m = (int) (random(1) * num);
     n = (int) (random(1) * num); 
/*     float redv = red(c2) + 20 * i;
     float bluev = blue(c2) - 3.8 * i;
     c2 = color(redv, 150, bluev);
*/
     int redv = (int)(random(1) * 255);
     int grev = (int)(random(1) * 255);
     int bluv = (int)(random(1) * 255);
     c1 = color(redv, grev, bluv);
     redv = (int)red(c1) + range * i;
     grev = (int)green(c1) + range * i;
     bluv = (int)blue(c1) + range * i;
     c2 = color(redv, grev, bluv);
     fill(c2);
     rect(1 + m * s / num, 1 + n * s / num, s /num - 2, s / num - 2);
     i *= -1;
     range -= 5;
  }
}

/* generate num*num blocks */
void blocks () {
   for (int i = 0; i < num; i++) {
     for (int j = 0; j < num; j++) {
        fill(c1);
        rect(1 + i * s / num, 1 + j * s / num, s /num - 2, s / num - 2);
     }
   }
   fill(c2);
   rect(1 + m * s / num, 1 + n * s / num, s /num - 2, s / num - 2);
}
