//https://www.youtube.com/watch?v=3MdQuy7FpUo&ab_channel=JuanCasteran
//Juan Casteran 93060/3

int[] escenas = new int[14];
PImage[] imagenes = new PImage[13];


void setup() {
  size(600, 600);
for (int j=0; j<13; j++){//imagenes
  String nombreImagen= "imagen" + j + ".jpg";
  imagenes[j]=loadImage(nombreImagen);
}
  for (int i=0;i<14;i++) {//escenas
    escenas[i]=0;
  }
}

void Intro(PImage intro) {
  image(intro,0,0);
  textSize(50);
  fill(255);

  fill(255);
  rect(30,270, 175,80);
  textSize(50);
  fill(0);
  text("iniciar",50, 325);
}

void Pantalla(String texto, PImage imagen) {
  image(imagen,0, 0);
  imagen.resize(600,600);
  textSize(25);
  fill(255);
  text(texto,50,50);
}



void Boton(int a, int b, int c, int d, String caracter){
  fill(255);
  rect(a,b,c,d);
  fill(0);
  textSize(30);
  text(caracter,a+10,b+35);
}

void PantallaFinal(String creditos) {
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

boolean botoncito(int x, int x2, int y, int y2){
   return (mouseX>x && mouseX<x2 && mouseY>y && mouseY<y2);
   }

void boton(int x, int x2, int y, int y2, int num){
  if (botoncito(x, x2, y, y2)){
    for(int i=0; i<14; i++){
      escenas[i]=1;
      escenas[num]=0;
    }
  }
 }
    
void draw() {
  background(255);

  if (escenas[0] == 0) {
    Intro(imagenes[0]);
  } else if (escenas[1] == 0) {
    Pantalla("Una mujer se mueve en la oscuridad lluviosa, \n guardando espigas entre las rocas. \n En algún lugar, llora un niño", imagenes[1]);
     Boton(525,200,50,50," >");
  } else if (escenas[2] == 0) {
    Pantalla("Hernando espera que la lluvia cese para \n regresar al campo con su arado. Observa \n que no pasa ningún auto por la carretera de \n hormigón, lo cual es extraño.", imagenes[2]);
    Boton(525,200,50,50," >");
  } else if (escenas[3] == 0) {
    Pantalla("imprevistamente, miles de autos con \n rostros atormentados circulan a gran \n velocidad, lo cual deja a Hernando perplejo", imagenes[3]);
    Boton(525,200,50,50," A");
    Boton(525,270,50,50," B");
  } else if (escenas[4] == 0) {
    Pantalla("posteriormente, un auto con hermosas chicas se \n acerca a Hernando para pedirle agua mientras le \n informa que hay una guerra atomica y, por ende, \n el fin del mundo", imagenes[4]);
    Boton(525,200,50,50," A");
    Boton(525,270,50,50," B");
  } else if (escenas[5] == 0) {
    Pantalla("con miedo, hernando regresa a su casa, recoge \n su arado y se aleja con su burro mientras se \n pregunta que sera de el mundo",imagenes[5]);
    Boton(525,200,50,50," >");
  } else if (escenas[6] == 0) {
    Pantalla("hernando regresa a su casa y habla con su \n esposa de lo ocurrido. a lo que deciden ahorrar \n suministros y esperar a ver que pasa", imagenes[6]);
    Boton(525,200,50,50," >");
  } else if (escenas[7] == 0) {
    Pantalla("con el pasar de los dias se enteran \n de la catastrofe que el mundo esta viviendo pero \n mantienen la calma", imagenes[7]);
    Boton(525,200,50,50," >");
  } else if (escenas[8] == 0) {
    Pantalla("al tiempo forman una comunidad \n con otros sobrevivientes y logran mantenerser a flote \n luego del apocalipsis", imagenes[8]);
    Boton(525,200,50,50," >");
  } else if (escenas[9] == 0) {
    Pantalla("Asi, Hernando descubre que \n es feliz y que no necesita del mundo para sobrevivir", imagenes[9]);
    Boton(525,200,50,50," >");
  } else if (escenas[10] == 0) {
    Pantalla("luego de escuchar la noticia \n hernando va con su esposa y la abraza, esperando \n sobrevivir a tal suceso", imagenes[10]);
    Boton(525,200,50,50," >");
  } else if (escenas[11] == 0) {
    Pantalla("asi, deciden ir al norte \n para conseguir un mejor refugio y emprenden su viaje \n confiando el uno en el otro", imagenes[11]);
    Boton(525,200,50,50," >");
  } else if (escenas[12] == 0) {
    Pantalla("y embarcan su viaje hacia lo desconocido", imagenes[12]);
    Boton(525,200,50,50," >");
  } else if (escenas[13] == 0) {
    PantallaFinal("cuento: La carretera de Ray Bradbury \n programacion hecha por: Juan Casteran \n FBA Facultad de Bellas Artes");
    BotonCircular(310, 370, 100);
  }
}

void mousePressed() {
  if (escenas[0]==0) {
   boton(30,205,270,350,1);
 } else if (escenas[1]==0) {
    boton(525,575,200,250,2);
  } else if (escenas[2]==0) {
    boton(525,575,200,250,3);
  } else if (escenas[3]==0) {
    boton(525,575,200,250,4);
    boton(525,575,270,320,6);
  } else if (escenas[4]==0) {
   boton(525,575,200,250,5);
 boton(525,575,270,320,10);
  } else if (escenas[5]==0) {
    boton(525,575,200,250,13);
  } else if (escenas[6]==0) {
    boton(525,575,200,250,7);
  } else if (escenas[7]==0) {
   boton(525,575,200,250,8);
  } else if (escenas[8]==0) {
   boton(525,575,200,250,9);
  } else if (escenas[9]==0) {
    boton(525,575,200,250,13);
  } else if (escenas[10]==0) {
    boton(525,575,200,250,11);
  } else if (escenas[11]==0) {
   boton(525,575,200,250,12);
  } else if (escenas[12]==0) {
    boton(525,575,200,250,13);    
  } else if (escenas[13]==0) {
    BotonCircular(310,370,50);
  }
}
