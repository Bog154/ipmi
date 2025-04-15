PImage objFav;

void setup()  {
  background(128);
  size(800,400);
  objFav = loadImage("cubone.png");

}

void draw()  {
  background(22, 95, 140); //defino color de fondo
// detalles del fondo
  fill(22, 95, 140); 
  strokeWeight(4); // grosor del anillo
  stroke(10, 38, 60); //color del anillo
  fill(10, 38, 60); 
  circle(630, -10, 78);  //sombra anillo1
  fill(22, 95, 140); 
  circle(634, -10, 72);  //anillo1
  fill(10, 38, 60); 
  circle(532, -6, 78);  //sombra anillo2
  fill(22, 95, 140); 
  circle(534, -10, 72);  //anillo2
  fill(10, 38, 60); 
  rect(430, -3, 42, 32); //sombra rectangulo
  fill(22, 95, 140); 
  rect(432, -3, 42, 26); //rectangulo
  
  image(objFav, 0, 0); //inserto la imagen "objFav" en 0,0
  
  color c = color(166, 133, 114); //defino color "c"
  fill(c); // rellena con color "c" 
  strokeWeight(1);
  stroke(5);
  quad(400, 223, 800, 243, 800, 399, 400, 400); //dibujo un cuadrilatero
  
// cuerno superior
  c = color(200, 215, 222); //defino color "c"
  fill(c);   // rellena con color "c" 
  noStroke();  //Elimina los bordes delas figuras
  triangle(608, 169, 633, 138, 651, 166); //triangulo superior
  
// anillo del cuerno superior
  noFill(); // no rellenar el anillo
  strokeWeight(4); // grosor del anillo
  stroke(203, 165, 58); //color del anillo
  circle(629, 179, 65);  //anillo


  c = color(200, 215, 222); //defino color "c"
  fill(c);   // rellena con color "c" 
  noStroke();  //Elimina los bordes delas figuras
  rect(568, 160, 130, 130, 180, 174, 50, 10); //craneo
  
  quad(707, 172, 720, 178, 696, 221, 676, 186); //cuerno lateral superior
  triangle(680, 291, 700, 221, 723, 265); //triangulo lateral inferior
  triangle(520, 289, 568, 295, 545, 302); //triangulo inferior izquierda
  triangle(595, 309, 554, 286, 617, 286); //triangulo inferior mid-izq
  triangle(634, 309, 603, 286, 676, 286); //triangulo inferior mid-der
  triangle(673, 309, 642, 288, 698, 270); //triangulo inferior derecho
  
  
  quad(522, 237, 569, 209, 568, 295, 520, 290); //ocico
  
//anillos de llavero
  noFill();
  strokeWeight(4);
  stroke(203, 165, 58);
  line(653, 163, 640, 153); //primer eslabon claro
  stroke(152, 126, 52);
  line(650, 163, 639, 154); //segundo eslabon oscuro
  stroke(203, 165, 58);
  line(641, 161, 632, 153); //tercer eslabon claro
  stroke(152, 126, 52);
  line(636, 161, 627, 153); // cuarto eslabon oscuro
  stroke(203, 165, 58);
  line(631, 161, 622, 153); //quinto eslabon claro
  stroke(152, 126, 52);
  line(616, 159, 626, 161); // sexto eslabon oscuro
  

//figuras internas del craneo
  c = color(140, 113, 63); // color de las figuras
  fill(c); // rellenar con color
  strokeWeight(2); // grosor del borde
  stroke(100); // color del borde
  circle(632, 244, 63); // cuenca
  ellipse(557, 271, 23, 19); // fosa nasal
    
  println(mouseX + "/" + mouseY);
}
