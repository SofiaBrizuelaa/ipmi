//Brizuela Sofía 
//Comisión 3
//118977/0
//https://youtu.be/H80lfl8B--0


int colorCirculos;
int columnas = 19; // Circulos por columna
int filas = 19;    // Circulos por filas
int tamMax = 25;    // Tamaño máximo de los círculos
int tamMin = 5;     // Tamaño mínimo de los círculos

void setup() {
  size(800, 400);
  colorCirculos = color(255); // Color inicial de los círculos
}

void draw() {
  background(0);
  noStroke();
  
  // Imagen
  PImage miFoto;
  miFoto = loadImage("F_10.jpg");
  image(miFoto, 0, 0, 400, 400);
  
  // Espacios entre los círculos
  float xespacio = (width / 2) / (columnas + 1);
  float yespacio = height / (filas + 1);
  
  // Coordenadas del centro del círculo
  float centroX = 3 * width / 4;
  float centroY = height / 2;
  
  // Círculos en una cuadrícula
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {

      float x = (i + 1) * xespacio + width / 2;
      float y = (j + 1) * yespacio;
      
      // Distancia desde el centro
      float dist = dist(centroX, centroY, x, y);
      float maxDist = dist(width / 2, 0, centroX, centroY);
      
      // Función propia para calcular el diámetro
      float diametro = calcularDiametro(dist, maxDist, tamMin, tamMax);
      
      // Dibujar el círculo con el diámetro calculado
      fill(colorCirculos);
      ellipse(x, y, diametro, diametro);
    }
  }
}

// Función que calcula el diámetro de un círculo
float calcularDiametro(float dist, float maxDist, float tamMin, float tamMax) {
  return map(dist, 0, maxDist, tamMin, tamMax);
}

// Función para cambiar el color de los círculos a uno aleatorio
void colorAleatorio() {
  colorCirculos = color(random(255), random(255), random(255));
}

void mousePressed() {
  // Si el clic es en la mitad derecha de la pantalla, cambia el color de los círculos
  if (mouseX > width / 2) {
    colorAleatorio();
  }
}

void keyPressed() {
  // Si se presiona la tecla 'r', reinicia el color de los círculos a blanco
  if (key == 'r') {
    colorCirculos = color(255);
  }
}
