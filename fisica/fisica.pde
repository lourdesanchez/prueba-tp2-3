import fisica.*;

FWorld mundo;
Parlante p;
//creamos una caja
//FBox caja;
FCircle circulo;

//PImage nota1, nota2, nota3;

void setup(){
    size(600,600);
 
  Fisica.init(this);
  mundo = new FWorld();
  p = new Parlante (70,70);
  //para agregarle bordes al mundo y los elementos no se escapen
   mundo.setEdges();
  
  /*nota1 = loadImage("nota2.png");
  nota2 = loadImage("notaa.png");
  nota3 = loadImage("nota4.png");*/
  //le damos un ancho y un alto a la caja
  //caja = new FBox(60,60);
  //caja.setPosition(70,70);
  //caja.setStatic(true);
  //lo agrego al mundo
  //mundo.add(caja);
}

void draw(){
  background(255);
  //para que hagan todos los calculos matematicos entre los cuerpos que interactuan ¿¿
  mundo.step();
  //dibuja el mundo de fisica
  mundo.draw();
  
  p.dibujar();
}

void keyPressed(){
  if(key==' '){
    p.notas(mundo);
  }
  /*FCircle circulo = new FCircle(20);
  circulo.setPosition(mouseX,mouseY);
  //circulo.setFill(70,50);
  
  if(random(2)<1){
     circulo.attachImage(nota1);
  } else if(random(2)>1){
    circulo.attachImage(nota2);
  }else{
    circulo.attachImage(nota3);
  }
  
  
  mundo.add(circulo);*/
}
