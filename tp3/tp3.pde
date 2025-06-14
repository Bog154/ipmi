//https://youtu.be/8pfEPE_6xpA
//constantes
PImage ref;
color c1, c2, c3;
int tam = 61;
int cant = 15;

void setup() {
  size(800, 400);
  colorMode(HSB, 360, 100, 100);
  
  c1 = color(0, 100, 0); //negro
  c2 = color(1, 0, 100); //blanco
  c3 = color(188); //gris
  ref = loadImage("op2.jpeg");
}

void draw() {
  if (mouseCamColor()) {
    c1 = color(1, 0, 100); //de negro a blanco
    c2 = color(0, 100, 0); //de blanco a negro
  } else {
    c1 = color(0, 100, 0); //de blanco a negro
    c2 = color(1, 0, 100); //de negro a blanco
  }
  
  image(ref, 0, 0);
  
  push();
  translate(-18, -9); //muevo la grilla para que inicie en la mitad de la pantalla y un poco mas arriba
  grilla(); //funcion que genera la grilla junto con los circulos
  pop();
}


void mousePressed() { //al usar el click cambia el color del borde
  camColor();
}

void keyPressed() { //al presionar el espacio se reinician los valores
reiniciar();
}
