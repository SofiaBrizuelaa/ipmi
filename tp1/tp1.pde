//Sofia Brizuela Comisión 3 118977/0

PImage miFoto;
void setup () {
 size (800, 400);
miFoto = loadImage("Heisenberg.jpg");
}

void draw () {background (200,200,200);
 image (miFoto,0,0,400,400);
  println ("X:");
  println ("Y:");
  println (mouseX+","+mouseY);
  
  //COLOR DE CAMISA
  fill(252,249,245);
  quad(609,368,529,339,532,400,610,400);
  quad(611,371,691,342,694,399,609,399);
  
  //COLOR DE CARA LADO IZQUIERDO
  stroke(255,232,193);
     fill (255,232,193);
  triangle(694,169,704,168,697,254);
  stroke(57,42,33);
  fill (57,42,33);
  triangle (623,270,633,262,620,222);
  stroke(204,159,110);
  fill(204,159,110);
  quad (632,214,693,214,695,261,632,232);
  quad(634,260,628,235,697,239,691,288);
  quad(634,262,624,270,691,311,692,288);
  triangle(654,291,689,312,659,339);
  quad(693,198,690,171,649,175,633,194);
  rect(679,198,15,14);
  rect(632,194,10,18);
  
  
  //COLOR DE CARA LADO DERECHO
 stroke(247,192,133);
 fill(247,192,133);
  triangle (531,203,570,235,533,235);
  quad (551,215,593,215,593,235,569,235);
  quad (610,276,620,271,616,179,579,179);
  quad (599,239,606,272,587,267,578,237);
  quad (586,269,571,232,522,243,562,283);
  quad (560,279,554,317,531,297,523,248);
  quad(523,238,534,235,536,175,517,173);
  quad (539,204,538,176,579,181,581,195);
 quad (640,185,646,176,618,178,618,191);
    quad (618,204,630,189,630,233,627,235);
    
 //COLOR DE CUELLO
 quad(529,312,583,358,638,299,530,299);
 quad(658,340,651,322,687,359,612,368);
 quad(585,358,611,366,638,345,605,331);

//COLOR DE BARBA
stroke(66,47,35);
fill(66,47,35);
quad (591,270,628,299,560,299,563,282);
quad(559,300,582,300,570,339,555,330);
quad(570,338,592,354,621,315,577,315);
quad(632,353,619,307,598,308,592,352);
quad(633,350,654,330,653,315,621,315);
quad(636,312,603,277,622,273,653,292);
triangle(636,312,653,312,653,295);

//COLOR DE SOMBRERO
stroke(26,20,15);
fill(26,20,15);
quad(470,135,707,124,738,136,660,162);
quad(478,138,538,159,636,159,561,130);
stroke(62,48,37);
fill(62,48,37);
quad(462,135,539,161,521,171,462,143);
quad(524,171,598,177,631,163,538,161);
quad(602,176,684,172,682,157,631,163);
quad(685,170,743,150,743,137,682,157);


  //ANTEOJOS
  stroke(0);
  smooth();
  strokeWeight (4);
  strokeJoin(ROUND);
  noFill ();
  rect(531,186,64,51);
  line (595,194,632,194);
  rect (632,186,64,51);
  line(530,192,520,192);
  line (520,192,514,174);
  line(697,192,702,192);
  line(702,192,707,166);
  
  //OJO IZQUIERDO
  fill(52,38,27);
  line(551,199,582,199);
  line(551,199,542,206);
  ellipse (564,205,15,10);
  line (551,213,580,213);
  line (580,213,568,222);
  //CEJA IZQUIERDA
  line (542,195,588,195);
  
  //OJO DERECHO
  line (645,199,676,199);
  line (676,199,686,206);
  ellipse (664,205,15,10);
  line (647,213,676,213);
  line (647,213,659,222);
  //CEJA DERECHA
  line (639,195,686,195);
  
  //NARIZ
  line(585,250,587,268);
  line (587,268,612,278);
 line (612,278,633,264);
 line(622,270,618,206);
 line(633,264,618,206);
 
 //BARBA
 line(593,271,562,283);
 line(562,283,555,332);
 line(555,332,592,355);
 
 line(592,355,632,355);
 line(632,355,656,332);
 
 line(622,270,653,292);
 line(653,292,656,332);
 
 //BOCA
 line (628,302,583,302);
 line(583,302,578,314);
 line (628,302,636,314);
 line (578,314,595,314);
 line (595,314,599,307);
 line(636,314,623,314);
 line(623,314,620,307);
 line (599,307,620,307);
 
 line(591,306,625,306);
 
 //CARA LADO IZQUIERDO
 line (555,323,530,299);
 line (530,299, 515,204);
 line(515,204,514,170);
 line(554,303,539,272);
 //CARA LADO DERECHO
 line(656,327,691,297);
 line (691,297,707,205);
 line(707,205,707,166);
 line(662,310,680,280);
 
 //SOMBRERO
 line(598,179,521,173);
 line(521,173,462,146);
 line(462,146,461,134);
 
 line(598,179,684,172);
 line(684,172,745,151);
 line(745,151,744,137);
 
 line(461,134,539,161);
 line(539,161,660,163);
 line(660,163,744,137);
 
 fill(48,37,29);
 rect (510,109,180,44);
 fill(188,164,131);
 quad (689,108,689,151,707,137,705,123);
 line(744,137,705,123);
 line(462,134,510,132);
 
  fill(62,48,37);
 quad(510,109,519,59,676,59,689,108);
 quad(541,58,557,43,644,43,654,58);
 
 //OREJAS
 fill(247,192,133);
 quad (514,184,499,174,504,221,519,238);
  fill(204,159,110);
 quad(704,238,718,221,720,174,708,182);
 
  //ROPA
  //SACO LADO IZQUIERDO
  fill(31,22,18);
  quad (527,291,453,350,455,400,532,400);
  quad (452,356,400,371,400,400,454,400);
  //SACO LADO DERECHO
  quad(692,289,758,350,750,400,695,400);
  quad(758,358,800,372,800,400,750,400);
  //CAMISA
  fill(252,249,245);
  triangle (530,313,586,361,541,400);
  line (586,361,610,368);
  line(610,368,610,400);
  line(611,373,641,363);
  triangle(639,358,691,313,687,400);
  ellipse(619,381,11,10);
  
  
}
