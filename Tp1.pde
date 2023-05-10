String imagen;
int segundos;
int anim1, anim2, anim3;
PImage plazamoreno;
PImage catedral;
PImage Turismo;
PFont fuente;
void setup() {
  size(640, 480);
  fuente = loadFont("Broadway-30.vlw");
  plazamoreno = loadImage("plazamoreno1.jpg");
  catedral = loadImage("plazamoreno2.jpg");
  Turismo = loadImage("plazamoreno3.jpg");
  imagen = "1";
  segundos = 0;
  anim1= 640;
  anim2= 0;
  anim3= 0;
  textSize(25);
  textAlign(CENTER);
}
void draw() {
  background(0);
    
  segundos++;
  if (imagen.equals("1")){ 
    image(plazamoreno, 0, 0, 640, 480);
    textFont(fuente);
    textAlign(CENTER);
    text("La Plaza Moreno\n es la principal\n plaza de la ciudad\n de La Plata\n y tambien el\n centro de la misma", anim1, 240);
    anim1--;
  } else if (imagen.equals("2")) { 
    image(catedral, 0, 0, 640, 480); 
    textAlign(CENTER);
    text("aquí se encuentra una de las\n principales obras de arquitectura\n de la ciudad, La Catedral", 320, anim2);
    anim2++;
  } else if (imagen.equals("3")) {
    image(Turismo, 0, 0, 640, 480);
    textAlign(CENTER);
    text("ademas, es uno de los\n principales lugares\n turisticos de\n la ciudad", anim3, 240);
    anim3++;
    } else if (imagen.equals("4")) {
      background(0);
      textAlign(CENTER);
      text("Fin de la presentación", 320, 100);
      text("para comenzar de vuelta\n presione cualquier botón", 320, 200);
    }    
    if (segundos <240) {
    imagen = "1";
  } else if (segundos >=240 && segundos < 420) {
    imagen = "2";
  } else if (segundos >=420 && segundos < 660) {
    imagen = "3";
  } else if (segundos >=660 && segundos < 900) {
  imagen = "4";
  }
}
void keyPressed() { 
  imagen = "1";
  segundos = 0;
  anim1 = 640;
}
