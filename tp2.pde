// Juan Casteran 93060/3
// https://youtu.be/SeOw_FyU6f8


PImage imagen;
int ancho;
int cantidad = 7;
int CANTIDAD = 10;
int alto;
int mitadANCHO = 330;
int mitadALTO = 100;
int px, py, anch, alt;//boton rojo para desaparecer cuadrados
int PX, PY, ANCH, ALTO;//boton verde para aparecer cuadrados
void setup() {
  imagen = loadImage("ilusion_optica.jpg");
  size(800, 400);
  ancho = 35;
  alto = 43;
  px= 765;
  py= 365;
  anch= 30;
  alt= 30;
  PX=5;
  PY=365;
  ANCH=30;
  ALTO=30;
}
void draw() {

  background(0);
  fill(255, 0, 0);
  image(imagen, 0, 0, 400, 400);
  for (int a=1; a<cantidad; a++) {
    for (int b=0; b<CANTIDAD; b++) {
      fill(255, 255, 255);
      rect(mitadANCHO+a*70, b*85-mitadALTO, ancho, alto);
      rect((mitadANCHO+a*70)+10, (b*85-mitadALTO)+alto, ancho, alto);
    }
  }
  fill(255, 0, 0);
  rect(765, 365, 30, 30);//boton
  if (mouseX<400) {
    stroke(173, 173, 173);
    strokeWeight(2);
    line(400, 28, 800, 28);
    line(400, 70, 800, 70);
    line(400, 70+43, 800, 70+43 );
    line(400, 70+43*2, 800, 70+43*2 );
    line(400, 70+43*3, 800, 70+43*3 );
    line(400, 70+43*4-1, 800, 70+43*4-1 );
    line(400, 70+43*5-1, 800, 70+43*5-1 );
    line(400, 70+43*6-2, 800, 70+43*6-2 );
    line(400, 70+43*7-3, 800, 70+43*7-3 );
  } else if (mouseX>400) {
    strokeWeight(1);
  }
  fill(255, 0, 0);
  rect(765, 365, 30, 30);//boton rojo
  fill(0, 255, 0);
  rect(5, 365, 30, 30);//boton verde
}
void mousePressed() {
  if (mouseX>px && mouseX<px+anch && mouseY>py && mouseY<py+alt) {
    sacarCuadrados();
  } else if (mouseX>PX && mouseX<PX+ANCH && mouseY>PY && mouseY<PY+ALTO){
    ponerCuadrados();
}
}
void sacarCuadrados() {
  cantidad=0;
  CANTIDAD=0;
}
void ponerCuadrados() {
  cantidad=7;
  CANTIDAD=10;
}
