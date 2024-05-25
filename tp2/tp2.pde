//Brizuela Sofía 
//Comisión 3
//118977/0


PFont fuente;
PImage img1, img2, img3, img4, img5, img6;
int estado;
float posX, posY;
int contador;
String texto1, texto2, texto3, texto4, texto5, texto6;
 
void setup(){
  background (0);
  
  size (640,480);
fuente =loadFont("fuente.vlw");
textFont(fuente);
 textAlign( LEFT );
  textSize(32);
  //Imagenes
 img1 =loadImage("imagen1.jpg");
 img2 =loadImage("imagen2.jpg");
 img3 =loadImage("imagen3.png");
 img4 =loadImage("imagen4.png");
img5 =loadImage ("imagen5.png");
  img6 =loadImage ("imagen6.jpg");
  //Textos
   texto1 ="Esta obra pertenece a un proyecto llamado naturaleza digital.";
   texto2="Se encuentra en un jardín botánico en Tokushima, Japón.";
   texto3="Proyecta unas flores floreciendo y marchitando sobre un río.";
   texto4="Se renderiza en tiempo real, mediante un programa de computadora.";
   texto5="Así asegurando que cada estado visual sea único.";
   texto6= "Reiniciar";
  
  estado=1;
  contador = 0;
  posX = 10;
  posY = 220;
}

  void draw(){
    println ("X:");
  println ("Y:");
  println (mouseX+","+mouseY);
    println("estado="+estado);
     //estados 
 //pantalla 1
 if (estado ==1){
     image(img1,0,0,width, height);
     text(texto1, posX/5, posY, 600, 200);
   
 
     posX+=5;
     if(posX>width){
       estado=2;
       contador = 0;
       posX = 10;
       posY = 220;
       
     }
     //pantalla 2
   } else if(estado ==2){
     image(img2,0,0,640,480);
     text(texto2,posX/5,posY,600,200);
     
     posX+=5;
     if(posX>width){
       estado=3;
       contador = 0;
       posX = 10;
       posY = 220;
     }
     //pantalla 3
   } else if(estado ==3){
     image(img3,0,0,640,480);
    text(texto3,posX/6, posY, 600, 200);
     posX+=5;
     if(posX>width){
       estado=4;
       contador = 0;
       posX = 20;
       posY = 220;
     
     }
     //pantalla 4
   }  else if(estado ==4){
     image(img4,0,0,640,480);
     text(texto4,posX/6, posY, 600, 200);
      posX+=5;
     if(posX>width){
       estado=5;
       contador = 0;
       posX = 20;
       posY = 220;
   } 
   //pantalla 5
     }else if(estado ==5){
     image(img5,0,0,640,480);
     text(texto5,posX/6, posY, 600, 200);
  posX+=5;
   if(posX>width){
       estado=6;
       contador = 0;
       posX = 20;
       posY = 220;
   } 
   //pantalla 6
     }   else if(estado ==6){
     image(img6,0,0,640,480);
if ( mouseX>200 && mouseX<200+250
      && mouseY >209 && mouseY<209+80 ) {
      fill(100);
    } else {
      fill(200);
    }
    rect( 200, 209, 250, 80);
    fill(255);
    text (texto6,260,259);
   
     }
  }
void mousePressed() {
 //Vuelve a pantalla 1
  if ( estado > 5) {
    if ( mouseX>200 && mouseX<200+250
      && mouseY >209 && mouseY<209+80 ) {
    estado = 1;
  }
} else {
   estado++;
  contador = 0;
  posX = 20;
 }
}
