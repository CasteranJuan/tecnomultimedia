//https://www.youtube.com/watch?v=B4mnAJq5baw&ab_channel=JuanCasteran
//Juan Casteran 93060/3

int[] escenas = new int[14];

PImage pantalladeinicio, escena1, escena2, escena3, escena4, escena5, escena6, escena7, escena8, escena9, escena10, escena11, escena12;

void setup() {
  size(600, 600);
  pantalladeinicio = loadImage("Pantalladeinicio.jpg");
  escena1 = loadImage("escena1.jpg");
  escena2 = loadImage("escena2.jpg");
  escena3 = loadImage("escena3.jpg");
  escena4 = loadImage("escena4.jpg");
  escena5 = loadImage("escena5.jpg");
  escena6 = loadImage("despuesdeescena3.jpg");
  escena7 = loadImage("escena32.jpg");
  escena8 = loadImage("escena33.jpg");
  escena9 = loadImage("escena34.jpg");
  escena10 = loadImage("despuesdeescena4.jpg");
  escena11 = loadImage("escena42.jpg");
  escena12 = loadImage("escena43.jpg");

  for (int i=0;i<14;i++) {
    escenas[i]=0;
  }
}

void PantallaInicio(PImage intro) {
  PImage foto=intro;
  image(foto,0,0);
  textSize(50);
  fill(255);

  fill(255);
  rect(30,270, 175,80);
  textSize(50);
  fill(0);
  text("iniciar",50, 325);
}

void Pantalla(String texto, PImage imagen) {
  String textodelaescena=texto;
  PImage IMAGEN=imagen;
  image(IMAGEN,0, 0);
  imagen.resize(600,600);
  textSize(25);
  fill(255);
  text(textodelaescena,50,50);
  fill(255);
  rect(525,200,50,50);
  fill(0);
  textSize(30);
  text("->",535,235);
}

void PantallaD(String texto, PImage imagen) {
  String textodelaescena= texto;
  PImage IMAGEN=imagen;
  image(IMAGEN, 0,0);
  imagen.resize(600,600);

  textSize(25);
  fill(255);
  text(textodelaescena,50, 50);
  fill(0);
  textSize(35);
  fill(255,242,121);
  rect(525,200,50,50);
  rect(525,270,50,50);
  fill(0);
  text("A", 535,235);
  text("B",535,305);
}

void PantallaFinal(String texto) {
  String creditos=texto;
  fill(0);
  rect(0, 0,600,600);
  fill(255);
  textSize(30);
  text(creditos,50,100);
  fill(0);
  text("reiniciar",310, 370);
}


void BotonCircular(int x, int y, int diametro) {
  if (dist(mouseX,mouseY,x,y)<= diametro / 2 && mousePressed){
    for (int i=0;i<14;i++) {
      escenas[i]=0;
    }
    escenas[0]=1;
  }
  fill(255);
  ellipse(x,y,diametro,diametro);
  textSize(20);
  fill(0);
  text("Reiniciar", x-45,y);
}

void Botoncuadrado(int x, int x2, int y, int y2, int numero) {
  if (mouseX>x && mouseX<x2 && mouseY>y && mouseY<y2){
    for (int i=0;i<14;i++) {
      escenas[i]=1;
      escenas[numero]=0; 
  }
  }
}

void draw() {
  background(255);

  if (escenas[0] == 0) {
    PantallaInicio(pantalladeinicio);
  } else if (escenas[1] == 0) {
    Pantalla("Una mujer se mueve en la oscuridad lluviosa, \n guardando espigas entre las rocas. \n En algún lugar, llora un niño", escena1);
  } else if (escenas[2] == 0) {
    Pantalla("Hernando espera que la lluvia cese para \n regresar al campo con su arado. Observa \n que no pasa ningún auto por la carretera de \n hormigón, lo cual es extraño.", escena2);
  } else if (escenas[3] == 0) {
    PantallaD("imprevistamente, miles de autos con \n rostros atormentados circulan a gran \n velocidad, lo cual deja a Hernando perplejo", escena3);
  } else if (escenas[4] == 0) {
    PantallaD("posteriormente, un auto con hermosas chicas se \n acerca a Hernando para pedirle agua mientras le \n informa que hay una guerra atomica y, por ende, \n el fin del mundo", escena4);
  } else if (escenas[5] == 0) {
    Pantalla("con miedo, hernando regresa a su casa, recoge \n su arado y se aleja con su burro mientras se \n pregunta que sera de el mundo", escena5);
  } else if (escenas[6] == 0) {
    Pantalla("hernando regresa a su casa y habla con su \n esposa de lo ocurrido. a lo que deciden ahorrar \n suministros y esperar a ver que pasa", escena6);
  } else if (escenas[7] == 0) {
    Pantalla("con el pasar de los dias se enteran \n de la catastrofe que el mundo esta viviendo pero \n mantienen la calma", escena7);
  } else if (escenas[8] == 0) {
    Pantalla("al tiempo forman una comunidad \n con otros sobrevivientes y logran mantenerser a flote \n luego del apocalipsis", escena8);
  } else if (escenas[9] == 0) {
    Pantalla("Asi, Hernando descubre que \n es feliz y que no necesita del mundo para sobrevivir", escena9);
  } else if (escenas[10] == 0) {
    Pantalla("luego de escuchar la noticia \n hernando va con su esposa y la abraza, esperando \n sobrevivir a tal suceso", escena10);
  } else if (escenas[11] == 0) {
    Pantalla("asi, deciden ir al norte \n para conseguir un mejor refugio y emprenden su viaje \n confiando el uno en el otro", escena11);
  } else if (escenas[12] == 0) {
    Pantalla("y embarcan su viaje hacia lo desconocido", escena12);
  } else if (escenas[13] == 0) {
    PantallaFinal("cuento: La carretera de Ray Bradbury \n programacion hecha por: Juan Casteran \n FBA Facultad de Bellas Artes");
    BotonCircular(310, 370, 100);
  }
}

void mousePressed() {
  if (escenas[0]==0) {
    Botoncuadrado(30, 205, 270, 350, 1);
  } else if (escenas[1]==0) {
    Botoncuadrado(525, 575, 200, 250, 2);
  } else if (escenas[2]==0) {
    Botoncuadrado(525, 575, 200, 250, 3);
  } else if (escenas[3]==0) {
    Botoncuadrado(525, 575, 200, 250, 4);
    Botoncuadrado(525, 575, 270, 320, 6);
  } else if (escenas[4]==0) {
    Botoncuadrado(525, 575, 200, 250, 5);
    Botoncuadrado(525, 575, 270, 320, 10);
  } else if (escenas[5]==0) {
    Botoncuadrado(525, 575, 200, 250, 13);
  } else if (escenas[6]==0) {
    Botoncuadrado(525, 575, 200, 250, 7);
  } else if (escenas[7]==0) {
    Botoncuadrado(525, 575, 200, 250, 8);
  } else if (escenas[8]==0) {
    Botoncuadrado(525, 575, 200, 250, 9);
  } else if (escenas[9]==0) {
    Botoncuadrado(525, 575, 200, 250, 13);
  } else if (escenas[10]==0) {
    Botoncuadrado(525, 575, 200, 250, 11);
  } else if (escenas[11]==0) {
    Botoncuadrado(525, 575, 200, 250, 12);
  } else if (escenas[12]==0) {
    Botoncuadrado(525, 575, 200, 250, 13);
  } else if (escenas[13]==0) {
    BotonCircular(310,370,50);
  }
}
