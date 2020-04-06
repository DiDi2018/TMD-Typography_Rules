void regra1() {
  //menu ganhar 1//
  if (validateRegra1) {
    ganhar1=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra1, 0, 0);

    //botao continuar
    if (mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 450, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Continue", width/2, 475);

    //botao menu
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 525, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Menu", width/2, 550);

    //botao sair
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 600, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Exit", width/2, 625);
  } 
  //regra 1
  else if (start && regra1 && !validateRegra1) {
    imageMode(CORNER);
    image(regra1Imagem, 0, 0);

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#3BA250);
    } else {
      fill(#73C485); //verde
    }
    stroke(#3BA250);
    rect(width/2-225/2, 650, 225, 50);
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#166728);
    } else {
      fill(#337943);
    }
    textAlign(CENTER, CENTER);
    textFont(butoes);
    text("Validate", width/2, 675);

    //--------------------DISPLAY--------------------//
    noFill();
    stroke(1);
    stroke(color(0));
    rect(100, 150, 700, 100);
    PFont [] display = new PFont [4];
    display[0] = displayCorreto;
    display[1] = display1;
    display[2] = display2;
    display[3] = display3;

    fill(0);
    textFont(display[d]);
    text("Display Font", 450, 200);

    stroke(1);
    fill(#F2F2F2);
    rect(1000, 175, 150, 25);
    if (mouseX>=1125 && mouseX<=1150 && mouseY>=175 && mouseY<=200) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rect(1125, 175, 25, 25);
    shape(seta, 1125, 175);
    PFont [] displaypequeno = new PFont [4];
    displaypequeno[0] = displayCorretoPequeno;
    displaypequeno[1] = display1Pequeno;
    displaypequeno[2] = display2Pequeno;
    displaypequeno[3] = display3Pequeno;
    fill(0);
    textFont(displaypequeno[d]);
    textSize(15);
    if (d==0) {
      text("Bauhaus Std", 1062.5, 187.5);
    } else if (d==1) {
      text("Berling LT Std", 1062.5, 187.5);
    } else if (d==2) {
      text("Bodoni Std", 1062.5, 187.5);
    } else {
      text("Serifa Std", 1062.5, 187.5);
    }

    if (Regra1_menu1) {
      for (int i=0; i<4; i++) {
        if (mouseX>=1000 && mouseX<=1150 && mouseY>=200+i*25 && mouseY<=225+i*25) {
          fill(#B7B7B7);
        } else {
          fill(#F2F2F2);
        }
        if (d==i) {
          fill(#B7B7B7);
        }
        rect(1000, 200+i*25, 150, 25);
        fill(0);
        textFont(displaypequeno[i]);
        if (i==0) {
          text("Bauhaus Std", 1075, 187.5+(i+1)*25);
        } else if (i==1) {
          text("Berling LT Std", 1075, 187.5+(i+1)*25);
        } else if (i==2) {
          text("Bodoni Std", 1075, 187.5+(i+1)*25);
        } else {
          text("Serifa Std", 1075, 187.5+(i+1)*25);
        }
      }
    }
    //-------------------------------------------------

    //------------------TEXT---------------------------
    noFill();
    stroke(1);
    stroke(color(0));
    rect(100, 400, 700, 100);
    PFont [] texto = new PFont [4];
    texto[0] = texto1;
    texto[1] = texto3;
    texto[2] = textoCorreto;
    texto[3] = texto2;

    fill(0);
    textFont(texto[t]);
    textAlign(CENTER, CENTER);
    text("Text Font", 450, 450);

    stroke(1);
    fill(#F2F2F2);
    rect(950, 425, 250, 25);
    if (mouseX>=1175 && mouseX<=1200 && mouseY>=425 && mouseY<=450) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rect(1175, 425, 25, 25);
    shape(seta, 1175, 425);
    PFont [] textopequeno = new PFont [4];
    textopequeno[0] = texto1Pequeno;
    textopequeno[1] = texto3Pequeno;
    textopequeno[2] = textoCorretoPequeno;
    textopequeno[3] = texto2Pequeno;
    fill(0);
    textFont(textopequeno[t]);
    if (t==0) {
      text("Futura Std", 1062.5, 437.5);
    } else if (t==1) {
      text("KochAntiqua LT Std", 1062.5, 437.5);
    } else if (t==2) {
      text("Times New Roman PSMT", 1062.5, 437.5);
    } else {
      text("Giddyup Std", 1062.5, 437.5);
    }

    if (Regra1_menu2) {
      for (int i=0; i<4; i++) {
        if (mouseX>=950 && mouseX<=1200 && mouseY>=450+i*25 && mouseY<=475+i*25) {
          fill(#B7B7B7);
        } else {
          fill(#F2F2F2);
        }
        if (t==i) {
          fill(#B7B7B7);
        }
        rect(950, 450+i*25, 250, 25);
        fill(0);
        textFont(textopequeno[i]);
        if (i==0) {
          text("Futura Std", 1075, 437.5+(i+1)*25);
        } else if (i==1) {
          text("KochAntiqua LT Std", 1075, 437.5+(i+1)*25);
        } else if (i==2) {
          text("Times New Roman PSMT", 1075, 437.5+(i+1)*25);
        } else {
          text("Giddyup Std", 1075, 437.5+(i+1)*25);
        }
      }
    }
  }
}

void regra2() {
  //--------------menu ganhar regra 2
  if (validateRegra2) {
    ganhar2=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra2, 0, 0);

    //botao continuar
    if (mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 450, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Continue", width/2, 475);

    //botao menu
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 525, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Menu", width/2, 550);

    //botao sair
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 600, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Exit", width/2, 625);
  }
  //-----------------regra 2
  else if (start && regra2 && !validateRegra2) {
    imageMode(CORNER);
    image(regra2Imagem, 0, 0);

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#3BA250);
    } else {
      fill(#73C485); //verde
    }
    stroke(#3BA250);
    rect(width/2-225/2, 650, 225, 50);
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#166728);
    } else {
      fill(#337943);
    }
    textAlign(CENTER, CENTER);
    textFont(butoes);
    text("Validate", width/2, 675);

    //-----------------primeiro texto
    PImage [] titulo1  = new PImage [4];
    titulo1[0] = regra2_titulo1_1;
    titulo1[1] = regra2_titulo1_2;
    titulo1[2] = regra2_titulo1_3;
    titulo1[3] = regra2_titulo1_4;
    image(titulo1[x1],110,134.75);
    PImage [] texto1 = new PImage [4];
    texto1[0] = regra2_texto1_1;
    texto1[1] = regra2_texto1_2;
    texto1[2] = regra2_texto1_3;
    texto1[3] = regra2_texto1_4;
    image(texto1[y1],97,125);
    
    //rect titulo
    stroke(1);
    fill(#F2F2F2);
    rect(950, 135, 200, 25);
    if (mouseX>=1125 && mouseX<=1150 && mouseY>=135 && mouseY<=160) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rect(1125, 135, 25, 25);
    shape(seta, 1125, 135);
    PFont [] titulo1Pequeno = new PFont [4];
    titulo1Pequeno[0] = titulo1_3Pequeno;
    titulo1Pequeno[1] = titulo1_1Pequeno;
    titulo1Pequeno[2] = titulo1_corretoPequeno;
    titulo1Pequeno[3] = titulo1_2Pequeno;
    fill(0);
    textAlign(CENTER, CENTER);
    textFont(titulo1Pequeno[x1]);
    if (x1==0) text("Lucida Sans", 1037.5, 147.5);
    else if (x1==1) text("Bodoni Std", 1037.5, 147.5);
    else if (x1==2) text("Berlin Sans FB", 1037.5, 147.5);
    else text("Georgia", 1037.5, 147.5);

    //rect texto
    stroke(1);
    fill(#F2F2F2);
    rect(950, 205, 200, 25);
    if (mouseX>=1125 && mouseX<=1150 && mouseY>=205 && mouseY<=230) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rect(1125, 205, 25, 25);
    shape(seta, 1125, 205);
    PFont [] texto1Pequeno = new PFont [4];
    texto1Pequeno[0] = texto1_3Pequeno;
    texto1Pequeno[1] = texto1_corretoPequeno;
    texto1Pequeno[2] = texto1_1Pequeno;
    texto1Pequeno[3] = texto1_2Pequeno;
    fill(0);
    textAlign(CENTER, CENTER);
    textFont(texto1Pequeno[y1]);
    if (y1==0) text("Serifa Std", 1037.5, 217.5);
    else if (y1==1) text("Book Antiqua", 1037.5, 217.5);
    else if (y1==2) text("Moonglow", 1037.5, 217.5);
    else text("Roboto", 1037.5, 217.5);

    if (Regra2_menu1_2) {
      for (int i=0; i<texto1Pequeno.length; i++) {
        stroke(1);
        fill(#F2F2F2);
        if (mouseX>=950 && mouseX<=950+200 && mouseY>=205+(i+1)*25 && mouseY<=230+(i+1)*25) {
          fill(#B7B7B7);
        } else {
          fill(#F2F2F2);
        }
        rect(950, 205+(i+1)*25, 200, 25);
        fill(0);
        textFont(texto1Pequeno[i]);
        if (i==0) text("Serifa Std", 1050, 217.5+(i+1)*25);
        else if (i==1) text("Book Antiqua", 1050, 217.5+(i+1)*25);
        else if (i==2) text("Moonglow", 1050, 217.5+(i+1)*25);
        else text("Roboto", 1050, 217.5+(i+1)*25);
      }
    }

    if (Regra2_menu1_1) {
      for (int i=0; i<titulo1Pequeno.length; i++) {
        stroke(1);
        fill(#F2F2F2);
        if (mouseX>=950 && mouseX<=950+200 && mouseY>=135+(i+1)*25 && mouseY<=160+(i+1)*25) {
          fill(#B7B7B7);
        } else {
          fill(#F2F2F2);
        }
        rect(950, 135+(i+1)*25, 200, 25);
        fill(0);
        textFont(titulo1Pequeno[i]);
        if (i==0) text("Lucida Sans", 1050, 147.5+(i+1)*25);
        else if (i==1) text("Bodoni Std", 1050, 147.5+(i+1)*25);
        else if (i==2) text("Berlin Sans FB", 1050, 147.5+(i+1)*25);
        else text("Georgia", 1050, 147.5+(i+1)*25);
      }
    }
    //-----------------segundo texto
    PImage [] titulo2  = new PImage [2];
    titulo2[0] = regra2_titulo2_1;
    titulo2[1] = regra2_titulo2_2;
    image(titulo2[x2],110,385.95);
    PImage [] texto2 = new PImage [2];
    texto2[0] = regra2_texto2_1;
    texto2[1] = regra2_texto2_2;
    image(texto2[y2],97,370.54);
    
    //rect titulo
    stroke(1);
    fill(#F2F2F2);
    rect(950, 390, 200, 25);
    if (mouseX>=1125 && mouseX<=1150 && mouseY>=390 && mouseY<=415) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rect(1125, 390, 25, 25);
    shape(seta, 1125, 390);
    fill(0);
    textAlign(CENTER, CENTER);
    if (x2==0) {
      textFont(texto2NormalPequeno);
      text("Regular", 1037.5, 402.5);
    } else {
      textFont(texto2BoldPequeno);
      text("Bold", 1037.5, 402.5);
    }
    //rect texto
    fill(#F2F2F2);
    rect(950, 460, 200, 25);
    if (mouseX>=1125 && mouseX<=1150 && mouseY>=460 && mouseY<=485) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rect(1125, 460, 25, 25);
    shape(seta, 1125, 460);
    fill(0);
    textAlign(CENTER, CENTER);
    if (y2==0) {
      textFont(texto2NormalPequeno);
      text("Regular", 1037.5, 472.5);
    } else {
      textFont(texto2BoldPequeno);
      text("Bold", 1037.5, 472.5);
    }

    if (Regra2_menu2_1) {
      if (mouseX>=950 && mouseX<=1150 && mouseY>=415 && mouseY<=440) {
        fill(#B7B7B7);
      } else {
        fill(#F2F2F2);
      }
      if (x2==0) {
        fill(#B7B7B7);
      }
      rect(950, 415, 200, 25);
      fill(0);
      textFont(texto2NormalPequeno);
      text("Regular", 1050, 427.5);
      if (mouseX>=950 && mouseX<=1150 && mouseY>=440 && mouseY<=465) {
        fill(#B7B7B7);
      } else {
        fill(#F2F2F2);
      }
      if (x2==1) {
        fill(#B7B7B7);
      }
      rect(950, 440, 200, 25);
      fill(0);
      textFont(texto2BoldPequeno);
      text("Bold", 1050, 452.5);
    }

    if (Regra2_menu2_2) {
      if (mouseX>=950 && mouseX<=1150 && mouseY>=485 && mouseY<=510) {
        fill(#B7B7B7);
      } else {
        fill(#F2F2F2);
      }
      if (y2==0) {
        fill(#B7B7B7);
      }
      rect(950, 485, 200, 25);
      fill(0);
      textFont(texto2NormalPequeno);
      text("Regular", 1050, 497.5);
      if (mouseX>=950 && mouseX<=1150 && mouseY>=510 && mouseY<=535) {
        fill(#B7B7B7);
      } else {
        fill(#F2F2F2);
      }
      if (y2==1) {
        fill(#B7B7B7);
      }
      rect(950, 510, 200, 25);
      fill(0);
      textFont(texto2BoldPequeno);
      text("Bold", 1050, 522.5);
    }
  }
}

void regra3() {
  //--------------menu ganhar regra 3
  if (validateRegra3) {
    ganhar3=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra3, 0, 0);

    //botao continuar
    if (mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 450, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Continue", width/2, 475);

    //botao menu
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 525, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Menu", width/2, 550);

    //botao sair
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 600, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Exit", width/2, 625);
  }
  //-----------------regra 3
  if (start && regra3 && !validateRegra3) {
    imageMode(CORNER);
    image(regra3Imagem, 0, 0);
    PImage [] texto = new PImage [3];
    texto[0]=regra3_texto1;
    texto[1]=regra3_texto2;
    texto[2]=regra3_texto3;
    imageMode(CENTER);
    image(texto[regra3_texto],width/2,241);
    
    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(510, 450, 260, 25);
    if (mouseX>=745 && mouseX<=770 && mouseY>=450 && mouseY<=475) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(745, 450, 25, 25);
    shape(seta, 745, 450);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra3_texto==0) text("Option 1", 627.5, 462.5);
    else if (regra3_texto==1) text("Option 2", 627.5, 462.5);
    else if (regra3_texto==2) text("Option 3", 627.5, 462.5);

    if (regra3_menu) {
      for (int i=0; i<3; i++) {
        if (mouseX>=510 && mouseX<=770 && mouseY>=450+(i+1)*25 && mouseY<=475+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra3_texto) fill(#B7B7B7);
        rect(510, 450+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Option 1", 640, 462.5+(i+1)*25);
        else if (i==1) text("Option 2", 640, 462.5+(i+1)*25);
        else if (i==2) text("Option 3", 640, 462.5+(i+1)*25);
      }
    }

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#3BA250);
    } else {
      fill(#73C485); //verde
    }
    stroke(#3BA250);
    rectMode(CORNER);
    rect(width/2-225/2, 650, 225, 50);
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#166728);
    } else {
      fill(#337943);
    }
    textAlign(CENTER, CENTER);
    textFont(butoes);
    text("Validate", width/2, 675);
  }
}

void regra4() {
  //--------------menu ganhar regra 4
  if (validateRegra4) {
    ganhar4=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra4, 0, 0);

    //botao continuar
    if (mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rectMode(CORNER);
    rect(width/2-200/2, 450, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Continue", width/2, 475);

    //botao menu
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rectMode(CORNER);
    rect(width/2-200/2, 525, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Menu", width/2, 550);

    //botao sair
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rectMode(CORNER);
    rect(width/2-200/2, 600, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Exit", width/2, 625);
  }
  //-----------------regra 4
  if (start && regra4 && !validateRegra4) {
    imageMode(CORNER);
    image(regra4Imagem, 0, 0);
    stroke(1);
    stroke(color(0));
    noFill();
    rectMode(CORNER);
    rect(80, 200, 780, 300);
    PImage [] titulo = new PImage [3];
    titulo[0] = tituloNormal;
    titulo[1] = tituloBold;
    titulo[2] = tituloItalico;
    int [] titulo_position = new int [3];
    titulo_position[0] = 118;
    titulo_position[1] = 384;
    titulo_position[2] = 658;
    imageMode(CORNER);
    image(titulo[imagem1_style], titulo_position[imagem1_position], 224);
    PImage [] subtitulo = new PImage [3];
    subtitulo[0] = subtituloNormal;
    subtitulo[1] = subtituloBold;
    subtitulo[2] = subtituloItalico;
    int [] subtitulo_position = new int [3];
    subtitulo_position[0] = 144;
    subtitulo_position[1] = 386;
    subtitulo_position[2] = 684;
    imageMode(CORNER);
    image(subtitulo[imagem2_style], subtitulo_position[imagem2_position], 256);
    PImage [] texto = new PImage [3];
    texto[0] = textoNormal;
    texto[1] = textoBold;
    texto[2] = textoItalico;
    int [] texto_position = new int [2];
    texto_position[0] = 118;
    texto_position[1] = 144;
    imageMode(CORNER);
    image(texto[imagem3_style], texto_position[imagem3_position], 314);

    //rect titulo style
    fill(#F2F2F2);
    rectMode(CORNER);
    rect(970, 200, 200, 25);
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=200 && mouseY<=225) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1145, 200, 25, 25);
    shape(seta, 1145, 200);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (imagem1_style==0) text("Title style: Upright", 1057.5, 212.5);
    else if (imagem1_style==1) text("Title style: Bold", 1057.5, 212.5);
    else text("Title style: Inclined", 1057.5, 212.5);

    //rect titulo position
    fill(#F2F2F2);
    rectMode(CORNER);
    rect(970, 250, 200, 25);
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=250 && mouseY<=275) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1145, 250, 25, 25);
    shape(seta, 1145, 250);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (imagem1_position==0) text("Title position: Left", 1057.5, 262.5);
    else if (imagem1_position==1) text("Title position: Center", 1057.5, 262.5);
    else text("Title position: Right", 1057.5, 262.5);

    //rect subtitulo style
    fill(#F2F2F2);
    rectMode(CORNER);
    rect(970, 300, 200, 25);
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=300 && mouseY<=325) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1145, 300, 25, 25);
    shape(seta, 1145, 300);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (imagem2_style==0) text("Subitle style: Upright", 1057.5, 312.5);
    else if (imagem2_style==1) text("Subitle style: Bold", 1057.5, 312.5);
    else text("Subitle style: Inclined", 1057.5, 312.5);

    //rect subtitulo position
    fill(#F2F2F2);
    rectMode(CORNER);
    rect(970, 350, 200, 25);
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=350 && mouseY<=375) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1145, 350, 25, 25);
    shape(seta, 1145, 350);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (imagem2_position==0) text("Subtitle position: Left", 1057.5, 362.5);
    else if (imagem2_position==1) text("Subtitle position: Center", 1057.5, 362.5);
    else text("Subtitle position: Right", 1057.5, 362.5);

    //rect texto style
    fill(#F2F2F2);
    rectMode(CORNER);
    rect(970, 400, 200, 25);
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=400 && mouseY<=425) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1145, 400, 25, 25);
    shape(seta, 1145, 400);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (imagem3_style==0) text("Text style: Upright", 1057.5, 412.5);
    else if (imagem3_style==1) text("Text style: Bold", 1057.5, 412.5);
    else text("Text style: Inclined", 1057.5, 412.5);

    //rect texto position
    fill(#F2F2F2);
    rectMode(CORNER);
    rect(970, 450, 200, 25);
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=450 && mouseY<=475) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1145, 450, 25, 25);
    shape(seta, 1145, 450);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (imagem3_position==0) text("Text position: Left", 1057.5, 462.5);
    else text("Text position: Right", 1057.5, 462.5);

    if (regra4_titulo_style) {
      for (int i=0; i<3; i++) {
        if (mouseX>=970 && mouseX<=1170 && mouseY>=200+(i+1)*25 && mouseY<=225+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==imagem1_style) fill(#B7B7B7);
        rect(970, 200+(i+1)*25, 200, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Upright", 1070, 212.5+(i+1)*25);
        else if (i==1) text("Bold", 1070, 212.5+(i+1)*25);
        else text("Inclined", 1070, 212.5+(i+1)*25);
      }
    }

    if (regra4_titulo_position) {
      for (int i=0; i<3; i++) {
        if (mouseX>=970 && mouseX<=1170 && mouseY>=250+(i+1)*25 && mouseY<=275+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==imagem1_position) fill(#B7B7B7);
        rect(970, 250+(i+1)*25, 200, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Left", 1070, 262.5+(i+1)*25);
        else if (i==1) text("Center", 1070, 262.5+(i+1)*25);
        else text("Right", 1070, 262.5+(i+1)*25);
      }
    }

    if (regra4_subtitulo_style) {
      for (int i=0; i<3; i++) {
        if (mouseX>=970 && mouseX<=1170 && mouseY>=300+(i+1)*25 && mouseY<=325+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==imagem2_style) fill(#B7B7B7);
        rect(970, 300+(i+1)*25, 200, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Upright", 1070, 312.5+(i+1)*25);
        else if (i==1) text("Bold", 1070, 312.5+(i+1)*25);
        else text("Inclined", 1070, 312.5+(i+1)*25);
      }
    }

    if (regra4_subtitulo_position) {
      for (int i=0; i<3; i++) {
        if (mouseX>=970 && mouseX<=1170 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==imagem2_position) fill(#B7B7B7);
        rect(970, 350+(i+1)*25, 200, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Left", 1070, 362.5+(i+1)*25);
        else if (i==1) text("Center", 1070, 362.5+(i+1)*25);
        else text("Right", 1070, 362.5+(i+1)*25);
      }
    }

    if (regra4_texto_style) {
      for (int i=0; i<3; i++) {
        if (mouseX>=970 && mouseX<=1170 && mouseY>=400+(i+1)*25 && mouseY<=425+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==imagem3_style) fill(#B7B7B7);
        rect(970, 400+(i+1)*25, 200, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Upright", 1070, 412.5+(i+1)*25);
        else if (i==1) text("Bold", 1070, 412.5+(i+1)*25);
        else text("Inclined", 1070, 412.5+(i+1)*25);
      }
    }

    if (regra4_texto_position) {
      for (int i=0; i<2; i++) {
        if (mouseX>=970 && mouseX<=1170 && mouseY>=450+(i+1)*25 && mouseY<=475+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==imagem3_position) fill(#B7B7B7);
        rect(970, 450+(i+1)*25, 200, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Left", 1070, 462.5+(i+1)*25);
        else text("Right", 1070, 462.5+(i+1)*25);
      }
    }

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#3BA250);
    } else {
      fill(#73C485); //verde
    }
    stroke(#3BA250);
    rectMode(CORNER);
    rect(width/2-225/2, 650, 225, 50);
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#166728);
    } else {
      fill(#337943);
    }
    textAlign(CENTER, CENTER);
    textFont(butoes);
    text("Validate", width/2, 675);
  }
}

void regra5() {
  //--------------menu ganhar regra 5
  if (validateRegra5) {
    ganhar5=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra5, 0, 0);

    //botao continuar
    if (mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 450, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Continue", width/2, 475);

    //botao menu
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 525, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Menu", width/2, 550);

    //botao sair
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 600, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Exit", width/2, 625);
  }
  //-----------------regra 5
  if (start && regra5 && !validateRegra5) {
    imageMode(CORNER);
    image(regra5Imagem, 0, 0);
    PImage  [] titulo = new PImage [3];
    titulo[0] = regra5_titulo_normal;
    titulo[1] = regra5_titulo_maiusculo;
    titulo[2] = regra5_titulo_minusculo;
    imageMode(CORNER);
    image(titulo[regra5_titulo], 117, 270);
    PImage texto [] = new PImage [3];
    texto[0] = regra5_texto_normal;
    texto[1] = regra5_texto_maiusculo;
    texto[2] = regra5_texto_minusculo;
    imageMode(CORNER);
    image(texto[regra5_texto], 101, 253);
    //rect titulo
    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(970, 300, 200, 25);
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=300 && mouseY<=325) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1145, 300, 25, 25);
    shape(seta, 1145, 300);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra5_titulo==0) text("Title: First letter in caps", 1057.5, 312.5);
    else if (regra5_titulo==1)text("Title: All letters in caps", 1057.5, 312.5);
    else text("Title: No letter in caps", 1057.5, 312.5);
    //rect texto
    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(970, 410, 200, 25);
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=410 && mouseY<=435) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1145, 410, 25, 25);
    shape(seta, 1145, 410);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra5_texto==0) text("Text: First letter in caps", 1057.5, 422.5);
    else if (regra5_texto==1)text("Text: All letters in caps", 1057.5, 422.5);
    else text("Text: No letter in caps", 1057.5, 422.5);

    if (regra5_menu_titulo) {
      for (int i=0; i<3; i++) {
        if (mouseX>=970 && mouseX<=1170 && mouseY>=300+(i+1)*25 && mouseY<=325+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra5_titulo) fill(#B7B7B7);
        rect(970, 300+(i+1)*25, 200, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("First letter in caps", 1070, 312.5+(i+1)*25);
        else if (i==1) text("All letters in caps", 1070, 312.5+(i+1)*25);
        else text("No letter in caps", 1070, 312.5+(i+1)*25);
      }
    }

    if (regra5_menu_texto) {
      for (int i=0; i<3; i++) {
        if (mouseX>=970 && mouseX<=1170 && mouseY>=410+(i+1)*25 && mouseY<=435+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra5_texto) fill(#B7B7B7);
        rect(970, 410+(i+1)*25, 200, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("First letter in caps", 1070, 422.5+(i+1)*25);
        else if (i==1) text("All letters in caps", 1070, 422.5+(i+1)*25);
        else text("No letter in caps", 1070, 422.5+(i+1)*25);
      }
    }

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#3BA250);
    } else {
      fill(#73C485); //verde
    }
    stroke(#3BA250);
    rect(width/2-225/2, 650, 225, 50);
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#166728);
    } else {
      fill(#337943);
    }
    textAlign(CENTER, CENTER);
    textFont(butoes);
    text("Validate", width/2, 675);
  }
}

void regra6() {
  //--------------menu ganhar regra 6
  if (validateRegra6) {
    ganhar6=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra6, 0, 0);

    //botao continuar
    if (mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 450, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Continue", width/2, 475);

    //botao menu
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 525, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Menu", width/2, 550);

    //botao sair
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 600, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Exit", width/2, 625);
  }
  //-----------------regra 6
  if (start && regra6 && !validateRegra6) {
    imageMode(CORNER);
    image(regra6Imagem, 0, 0);
    PImage [] texto1Indent = new PImage [2];
    texto1Indent[0] = regra6_texto1_sem;
    texto1Indent[1] = regra6_texto1_com;
    imageMode(CORNER);
    image(texto1Indent[regra6_texto1_indent], 112, 198);
    PImage [] texto2Indent = new PImage [2];
    texto2Indent[0] = regra6_texto2_sem;
    texto2Indent[1] = regra6_texto2_com;
    int [] position = new int [2];
    position[0] = 382;
    position[1] = 360;
    imageMode(CORNER);
    image(texto2Indent[regra6_texto2_indent], 112, position[regra6_texto_position]);

    //rect texto1 indent
    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(940, 200, 260, 25);
    if (mouseX>=1175 && mouseX<=1200 && mouseY>=200 && mouseY<=225) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1175, 200, 25, 25);
    shape(seta, 1175, 200);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra6_texto1_indent==1) text("First paragraph: With Indentation", 1057.5, 212.5);
    else text("First paragraph: No Indentation", 1057.5, 212.5);
    //rect texto2 indent
    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(940, 500, 260, 25);
    if (mouseX>=1175 && mouseX<=1200 && mouseY>=500 && mouseY<=525) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1175, 500, 25, 25);
    shape(seta, 1175, 500);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra6_texto2_indent==1) text("Second paragraph: With Indentation", 1057.5, 512.5);
    else text("Second paragraph: No Indentation", 1057.5, 512.5);
    //rect position
    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(940, 350, 260, 25);
    if (mouseX>=1175 && mouseX<=1200 && mouseY>=350 && mouseY<=375) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1175, 350, 25, 25);
    shape(seta, 1175, 350);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra6_texto_position==0) text("Line between paragraphs", 1057.5, 362.5);
    else text("No line between paragraphs", 1057.5, 362.5);

    if (regra6_menu1) {
      for (int i=0; i<2; i++) {
        if (mouseX>=940 && mouseX<=1200 && mouseY>=200+(i+1)*25 && mouseY<=225+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra6_texto1_indent) fill(#B7B7B7);
        rect(940, 200+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("No Indentation", 1070, 212.5+(i+1)*25);
        else text("With Indentation", 1070, 212.5+(i+1)*25);
      }
    }

    if (regra6_menu2) {
      for (int i=0; i<2; i++) {
        if (mouseX>=940 && mouseX<=1200 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra6_texto_position) fill(#B7B7B7);
        rect(940, 350+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Line between paragraphs", 1070, 362.5+(i+1)*25);
        else text("No line between paragraphs", 1070, 362.5+(i+1)*25);
      }
    }

    if (regra6_menu3) {
      for (int i=0; i<2; i++) {
        if (mouseX>=940 && mouseX<=1200 && mouseY>=500+(i+1)*25 && mouseY<=525+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra6_texto2_indent) fill(#B7B7B7);
        rect(940, 500+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("No Indentation", 1070, 512.5+(i+1)*25);
        else text("With Indentation", 1070, 512.5+(i+1)*25);
      }
    }

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#3BA250);
    } else {
      fill(#73C485); //verde
    }
    stroke(#3BA250);
    rect(width/2-225/2, 650, 225, 50);
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#166728);
    } else {
      fill(#337943);
    }
    textAlign(CENTER, CENTER);
    textFont(butoes);
    text("Validate", width/2, 675);
  }
}

void regra7() {
  //--------------menu ganhar regra 7
  if (validateRegra7) {
    ganhar7=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra7, 0, 0);

    //botao continuar
    if (mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 450, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Continue", width/2, 475);

    //botao menu
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 525, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Menu", width/2, 550);

    //botao sair
    if (mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    } else {
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    stroke(color(0));
    fill(corbutoes);
    rect(width/2-200/2, 600, 200, 50);
    fill(corTextoButoes);
    textFont(butoes);
    text("Exit", width/2, 625);
  }
  //-----------------regra 7
  if (start && regra7 && !validateRegra7) {
    imageMode(CORNER);
    image(regra7Imagem, 0, 0);
    noFill();
    stroke(color(0));
    if (regra7_texto1==0) rect(110, 165, 580, 150);
    else if (regra7_texto1==1) rect(110, 165, 580, 160);
    else rect(110, 165, 580, 195);
    if (regra7_texto2==0) rect(110, 370, 750, 110);
    else if (regra7_texto2==1) rect(110, 370, 750, 120);
    else rect(110, 370, 750, 130);
    PImage [] texto1 = new PImage [3];
    texto1[0] = regra7_t1_menor;
    texto1[1] = regra7_t1_normal;
    texto1[2] = regra7_t1_maior;
    imageMode(CORNER);
    image(texto1[regra7_texto1], 118, 173);
    PImage [] texto2 = new PImage [3];
    texto2[0] = regra7_t2_menor;
    texto2[1] = regra7_t2_normal;
    texto2[2] = regra7_t2_maior;
    imageMode(CORNER);
    image(texto2[regra7_texto2], 118, 379);
    //rect primeiro texto
    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(940, 200, 260, 25);
    if (mouseX>=1175 && mouseX<=1200 && mouseY>=200 && mouseY<=225) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1175, 200, 25, 25);
    shape(seta, 1175, 200);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra7_texto1==0) text("First paragraph: less leading", 1057.5, 212.5);
    else if (regra7_texto1==1) text("First paragraph: normal leading", 1057.5, 212.5);
    else text("First paragraph: more leading", 1057.5, 212.5);
    //rect segundo texto
    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(940, 350, 260, 25);
    if (mouseX>=1175 && mouseX<=1200 && mouseY>=350 && mouseY<=375) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1175, 350, 25, 25);
    shape(seta, 1175, 350);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra7_texto2==0) text("Second paragraph: less leading", 1057.5, 362.5);
    else if (regra7_texto2==1) text("First paragraph: auto leading", 1057.5, 362.5);
    else text("Second paragraph: more leading", 1057.5, 362.5);

    if (regra7_menu1) {
      for (int i=0; i<3; i++) {
        if (mouseX>=940 && mouseX<=1200 && mouseY>=200+(i+1)*25 && mouseY<=225+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra7_texto1) fill(#B7B7B7);
        rect(940, 200+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Less leading", 1070, 212.5+(i+1)*25);
        else if (i==1) text("Auto leading", 1070, 212.5+(i+1)*25);
        else text("More leading", 1070, 212.5+(i+1)*25);
      }
    }

    if (regra7_menu2) {
      for (int i=0; i<3; i++) {
        if (mouseX>=940 && mouseX<=1200 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra7_texto2) fill(#B7B7B7);
        rect(940, 350+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Less leading", 1070, 362.5+(i+1)*25);
        else if (i==1) text("Auto leading", 1070, 362.5+(i+1)*25);
        else text("More leading", 1070, 362.5+(i+1)*25);
      }
    }

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#3BA250);
    } else {
      fill(#73C485); //verde
    }
    stroke(#3BA250);
    rect(width/2-225/2, 650, 225, 50);
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      fill(#166728);
    } else {
      fill(#337943);
    }
    textAlign(CENTER, CENTER);
    textFont(butoes);
    text("Validate", width/2, 675);
  }
}
