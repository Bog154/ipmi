boolean mouseCamColor() { //mientras el mouse se encuentre a la derecha de la pantalla sera true
  return mouseX > width/2;
}

void grilla() {
  for (int x =  7; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      stroke(c3);
      strokeWeight(14);
      fill(c1);
      rect(x*tam, y*tam, tam, tam);
      noStroke();
      fill(c2);
      circle(x*tam, y*tam, 21);
    }
  }
}

void camColor() {
  c3 = color(random(360), random(100), random(100));
}

void reiniciar() {
  if (key == ' ') {
    c1 = color(0, 100, 0);
    c2 = color(1, 0, 100);
    c3 = color(188);
    mouseX = 0;
  }
}
