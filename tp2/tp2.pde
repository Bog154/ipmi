// LOGICA DE ESTADOS y EVENTOS con CONDICIONALES para programar las pantallas de TP2
// AGREGAMOS cambio de pantallas con las flechas del teclado + tiempo con frameCount

//creo mi variable para manejar los estados/pantallas
PFont titulo, texto;
PImage bongo1, bongo2, bFondo, templo, templo2, templo3, templo4, fondo;
int e, t, pX, pX2, pX3, pY, tr0, tr, tr2, trF;
String resumen, resumen2;
String historiaB1;
String historiaB2;
Boolean boton;


void setup() {
  background(1);
  size( 640, 480 );
  textAlign( CENTER, CENTER );
  imageMode(CENTER);
  colorMode( HSB, 360, 100, 100 );

  bongo1 = loadImage("bongo1.jpg");
  bongo2 = loadImage("bongo2.jpg");
  bFondo = loadImage("BongoFondo.jpg");
  templo = loadImage("Shadow TempleL.jpg");
  templo2 = loadImage("Dentro_Templo_de_las_Sombras_OoT.jpg");
  templo4 = loadImage("templo4.jpg");
  fondo = loadImage("shadow temple entrance.jpg");

  resumen = "El Templo de las Sombras es la séptima \nmazmorra de The Legend of Zelda Ocarina \nof Time. En algunas paredes se puede \nencontrar sangre, y en ocasiones \nInstrumentos de Tortura, lo que lo hace \nsegún muchos el templo mas tenebroso del \njuego.\n\nEl Templo era un lugar donde los Sheikah, \ntorturaban o interrogaban a sus enemigos, \nexplicando la aparición de artefactos de \ntortura y probablemente explicando la \noscuridad del templo.\n\nMuy poco del templo está por encima del \nsuelo, y como tal, se refiere a menudo \ncomo la Casa de los Muertos.";
  resumen2 = "Es una necrópolis subterránea, e incluso su \nubicación espacial es una alegoría. Es un eco \ndirecto de muchos mortuorios y mausoleos \ndel mundo real. La entrada al inframundo, \na menudo marcada por una puerta megalítica \nde piedra, suele ser lo único que ve la luz \ndel día. Bajando por el sendero inicial se \nencuentra la antecámara del templo; \nexcavada en la tierra cruda, esta sala \njuega con una sensación de lo oculto: un \npedestal, un anillo de símbolos y un círculo de \nantorchas apagadas se disponen ante una \nenorme puerta sobre la que reposa el símbolo \nde la Verdad, un ojo entreabierto al \npensamiento y la percepción. Para abrir esta \npuerta al reino de los muertos, es necesario \nencender las antorchas, desterrando así la \nsombra, un acto cargado de obvias metáforas.";
  historiaB1= "se dice que Bongo Bongo era un joven Sheikah \ndebido a que su ojo es rojo. Se dijo que tenía los \nojos de la verdad, pero que fue maldecido por \nhaber robado el objeto sagrado y luego \nesconderlo en un lugar donde sólo él sabía \npodría encontrarlo. Después de eso, fue \ncapturado y como está estipulado, le cortaron \nlas manos y fue decapitado.\n\nCuidado con el portador del tambor, forjador \nde una verdad que no es la verdad.";
  historiaB2 = "El personaje Bongo Bongo está basado en los delincuentes \nde la antigüedad que eran encerrados en calabozos con \nrestos de animales y basura, a los que luego se les \ncortaba las manos y la cabeza. Por esa razón, Bongo \nBongo tiene las manos separadas del cuerpo y su ojo está \nen la parte en donde estaría su cabeza arrebatada.";
  titulo = createFont("Algerian Regular.ttf", 50);

  e = 1;
  pX = width/4;
  pX2 = 150;
  pX3 = 150;
  pY =70;
  tr0 = 20;
  tr = 20;
  tr2 = 20;
  trF =20;
}

void draw() {
  //---------------------------PANTALLA 1
  if ( e == 1 ) {
    t = 1;
    boton = ( mouseX >= 240 && mouseX < 390 && mouseY > 350 && mouseY < 410);

    image(templo, width/2, height/2);

    textAlign(CENTER);
    fill(67, 100, 100);
    rect(240, 362, 156, 50);
    fill(1, 100, 70);
    textSize(36);
    text("Iniciar", 318, 400);

    fill(67, 100, 100, tr0);
    textFont(titulo);
    text("Bongo Bongo", width/2, pY);
    textSize(30);
    text("El jefe del templo de las sombras", width/2, pY + 38);
    textSize(10);
    textAlign(RIGHT);
    text("Una porcion de The Legend of Zelda Ocarina of Time", width - 10, height - 3);

    if ( pY > 52) {
      pY --;
      tr0 += 15;
    }

    //---------------------------PANTALLA 2
  } else if ( e == 2 ) {
    image(fondo, width/2, height/2);
    image(templo2, width/4, 135);
    image(templo4, 500, 353);

    textAlign(LEFT);
    textSize(14);
    fill(67, 100, 100, tr);
    text(resumen, pX, 270);
    textSize(13);
    text(resumen2, pX2, 24);
    textAlign(CENTER);

    if ( pX > 6) {
      pX --;
      tr += 10;
    }
    if (pX2 < 316) {
      pX2 += 2;
    }
    t ++;
    if ( t == (60*40) ) {
      pX = 60;
      pX3 = 150;
    }
    //---------------------------PANTALLA 3
  } else if ( e == 3 ) {

    image(fondo, width/2, height/2);
    image(bongo1, width/5, 156);
    image(bongo2, 500, 303);

    fill(67, 100, 100, tr);
    textAlign(LEFT);
    textSize(14);
    text(historiaB1, pX, 299);
    textSize(13);
    text(historiaB2, pX3, 51);

    if ( pX > 6) {
      pX --;
      tr2 += 10;
    }
    if (pX3 < 229) {
      pX3 += 2;
    }
    t ++;
    if ( t == (60*70) ) {
      e = 4;
    }
    //---------------------------PANTALLA 4
  } else if ( e == 4 ) {
    boton = ( mouseX >= 240 && mouseX < 390 && mouseY > 350 && mouseY < 410);

    image(bFondo, width/2, height/2);

    textSize(36);
    textAlign(CENTER);
    fill(67, 100, 100, trF);
    rect(230, 362, 180, 50);
    fill(1, 100, 70);
    text("Reiniciar", 318, 400);

    t++;
    trF += 15;
  }
}

void mouseReleased() {
  if (boton && e == 1) {
    e = 2;
    boton = false;
  }
  if (boton && e == 4) {
    e = 1;
    pX = width/4;
    pX2 = 150;
    pX3 = 150;
    pY =70;
    tr0 = 20;
    tr = 20;
    tr2 = 20;
    trF =20;

    boton = false;
  }
}
