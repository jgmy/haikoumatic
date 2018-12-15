String primera[]={
  "Esa",
  "Una",
  "Otra",
  "Nueva",
  "Quieta",
  "Cierta",
  "Cada",
  "Vieja",
  "Pura",
  };
  

String segunda[]={
  "nevada",
  "montaña",
  "tormenta",
  "frescura",
  "llovizna",
  "pradera",
  "mañana",
  "verdura",
  "pineda",
  "hermosura",
  
};

String tercera[]={
  "Una rana",
  "El arroyo",
  "El anciano",
  "El camino",
  "La multitud",
  "Una niña",
  "Una sombra",
  "Una corza",
  "El lobezno",
  "La corneja",
  "La cigüeña",
  "La nodriza",
  "El cordero",
  "El ternero",
  "Mi deseo",
  "Tu mirada",
  "El sendero",
  
};

String cuarta[]={
  "corre",
  "pasa",
  "sube",
  "cruza",
  "baja",
  "salta",
  "surge",
  "sale",
  "llega",
  "viene",
};

String primero[]={
  "Ciruelo",
  "Higuera",
  "Manzano",
  "Noguera",
  "Almendro",
  "Chopera",
  "Abeto",
  "Sotillo",
  "Ribera",
  "Montaña",
  "Camino",
  "Sendero",
  "Colina",
  "Pradera",
  "Cascada",
  "Torrente",

  };
  

String segundo[]={
  "fuerte",
  "triste",
  "breve",
  "verde",
  "suave",
  "real",
  "fértil",
  "amable",
  "leve",
  "fatal",
  "noble"
  
};

String tercero[]={
  "Suspiros",
  "Olores",
  "Lamentos",
  "Aromas",
  "Perfumes",
  "Graznidos",
  "Balidos",
  "Heridas",
  "Sonidos",
  "Colores"
};

String cuarto[]={
  "en el viento",
  "tras la lluvia",
  "hoy y antaño",
  "bajo el cielo",
  "a lo lejos",
  "desde el bosque",
  "entre ramas",
  "sobre un rostro",
  "en las manos"
  
};

String quinta[]={
  "La tierra",
  "El bosque",
  "Tu rostro",
  "Mi casa",
  "El árbol",
  "El agua",
  "El viento",
  "La noche",
  "El fuego",
  "La hoguera",
  "El cielo",
  "El monte",
  "La luna"
};
String sexta[]={
  "ruge",
  "brilla",
  "calla",
  "duerme",
  "tiembla",
  "canta",
  "sueña",
  "silba",
  "rozo",
  "miro"
};

PFont tipografia;
void setup(){
  fullScreen();
  tipografia=createFont(
  "Fanwood Text Italic.otf"
  ,100);
  if (tipografia==null){
    println("error");
  } else {
      textFont(tipografia,100);
  }
  textAlign(CENTER);
  
  frameRate(.3);
  draw();
};

void draw(){
  
  float ter=height/3;
  float cx=width/2;
  String verso1="";
  String verso2="";
  String verso3="";
 
   background(0,0,0);
   
   if (random(2)>=1){
     verso1=primero[int(random(primero.length))];
     verso1+=" "+segundo[int(random(segundo.length))]+".";
   } else {
     verso1=primera[int(random(primera.length))];
     verso1+=" "+segunda[int(random(segunda.length))]+".";
   }
   
   if (random(2)>=1){
     verso2=tercero[int(random(tercero.length))];
     verso2+=" "+cuarto[int(random(cuarto.length))]+".";
   } else {
     verso2=tercera[int(random(tercera.length))];
     verso2+=" "+cuarta[int(random(cuarta.length))]+".";
   }
   
   verso3=quinta[int(random(quinta.length))];
   verso3+=" "+sexta[int(random(sexta.length))]+".";
   
   text(verso1,cx,ter*1);
   text(verso2,cx,ter*1.5);
   text(verso3,cx,ter*2);
  
};
  
 