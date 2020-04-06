void regra8() {
  //--------------menu ganhar regra 8
  if (validateRegra8) {
    ganhar8=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra8, 0, 0);

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
  //-----------------regra 8
  if (start && regra8 && !validateRegra8) {
    imageMode(CORNER);
    image(regra8Imagem, 0, 0);
    PImage [] texto = new PImage [4];
    texto[0] = regra8_justify;
    texto[1] = regra8_alignLeft;
    texto[2] = regra8_alignCenter;
    texto[3] = regra8_alignRight;
    imageMode(CORNER);
    image(texto[regra8_texto], 104, 240);

    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(925, 350, 260, 25);
    if (mouseX>=1160 && mouseX<=1185 && mouseY>=350 && mouseY<=375) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1160, 350, 25, 25);
    shape(seta, 1160, 350);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra8_texto==0) text("Text Justified", 1042.5, 362.5);
    else if (regra8_texto==1) text("Text aligned to the left", 1042.5, 362.5);
    else if (regra8_texto==2) text("Text aligned the center", 1042.5, 362.5);
    else text("Text aligned to the right", 1042.5, 362.5);

    if (regra8_menu) {
      for (int i=0; i<4; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra8_texto) fill(#B7B7B7);
        rect(925, 350+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Justify", 1055, 362.5+(i+1)*25);
        else if (i==1) text("Align to the left", 1055, 362.5+(i+1)*25);
        else if (i==2) text("Align to the center", 1055, 362.5+(i+1)*25);
        else text("Align to the right", 1055, 362.5+(i+1)*25);
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

void regra9() {
  //--------------menu ganhar regra 9
  if (validateRegra9) {
    ganhar9=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra9, 0, 0);

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
  //-----------------regra 9
  if (start && regra9 && !validateRegra9) {
    imageMode(CORNER);
    image(regra9Imagem, 0, 0);
    PImage [] texto = new PImage [2];
    texto[0] = regra9_textoMau;
    texto[1] = regra9_textoBom;
    imageMode(CORNER);
    image(texto[regra9_texto], 118, 195);

    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(925, 320, 260, 25);
    if (mouseX>=1160 && mouseX<=1185 && mouseY>=320 && mouseY<=345) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1160, 320, 25, 25);
    shape(seta, 1160, 320);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra9_texto==0) text("Justified 1", 1042.5, 332.5);
    else text("Justified 2", 1042.5, 332.5);

    if (regra9_menu) {
      for (int i=0; i<2; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=320+(i+1)*25 && mouseY<=345+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra9_texto) fill(#B7B7B7);
        rect(925, 320+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Justified 1", 1055, 332.5+(i+1)*25);
        else text("Justified 2", 1055, 332.5+(i+1)*25);
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

void regra10() {
  //--------------menu ganhar regra 10
  if (validateRegra10) {
    ganhar10=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra10, 0, 0);

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
  //-----------------regra 10
  if (start && regra10 && !validateRegra10) {
    imageMode(CORNER);
    image(regra10Imagem, 0, 0);
    PImage [] texto = new PImage [2];
    texto[0] = regra10_textoErrado;
    texto[1] = regra10_textoCerto;
    imageMode(CORNER);
    image(texto[regra10_texto],118,190);
    
    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(925, 320, 260, 25);
    if (mouseX>=1160 && mouseX<=1185 && mouseY>=320 && mouseY<=345) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1160, 320, 25, 25);
    shape(seta, 1160, 320);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra10_texto==0) text("Option 1", 1042.5, 332.5);
    else text("Option 2", 1042.5, 332.5);

    if (regra10_menu) {
      for (int i=0; i<2; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=320+(i+1)*25 && mouseY<=345+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra10_texto) fill(#B7B7B7);
        rect(925, 320+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Option 1", 1055, 332.5+(i+1)*25);
        else text("Option 2", 1055, 332.5+(i+1)*25);
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

void regra11() {
  //--------------menu ganhar regra 11
  if (validateRegra11) {
    ganhar11=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra11, 0, 0);

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
  //-----------------regra 11
  if (start && regra11 && !validateRegra11) {
    imageMode(CORNER);
    image(regra11Imagem, 0, 0);
    PImage [] texto = new PImage [2];
    texto[0] = regra11_texto2espacos;
    texto[1] = regra11_texto1espaco;
    imageMode(CORNER);
    image(texto[regra11_texto], 118, 280);
    noFill();
    stroke(1);
    stroke(color(0));
    if (regra11_texto==0) rect(110, 270, 690, 190);
    else rect(110, 270, 690, 170);

    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(925, 350, 260, 25);
    if (mouseX>=1160 && mouseX<=1185 && mouseY>=350 && mouseY<=375) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1160, 350, 25, 25);
    shape(seta, 1160, 350);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra11_texto==0) text("Double spaces", 1042.5, 362.5);
    else if (regra11_texto==1) text("Single spaces", 1042.5, 362.5);

    if (regra11_menu) {
      for (int i=0; i<2; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra11_texto) fill(#B7B7B7);
        rect(925, 350+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Double spaces", 1055, 362.5+(i+1)*25);
        else text("Single spaces", 1055, 362.5+(i+1)*25);
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

void regra12() {
  //--------------menu ganhar regra 12
  if (validateRegra12) {
    ganhar12=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra12, 0, 0);

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
  //-----------------regra 12
  if (start && regra12 && !validateRegra12) {
    imageMode(CORNER);
    image(regra12Imagem, 0, 0);
    PImage [] texto = new PImage [3];
    texto[0] = regra12_texto1;
    texto[1] = regra12_texto2;
    texto[2] = regra12_texto3;
    image(texto[regra12_texto],118,300);
    
    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(925, 350, 260, 25);
    if (mouseX>=1160 && mouseX<=1185 && mouseY>=350 && mouseY<=375) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1160, 350, 25, 25);
    shape(seta, 1160, 350);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra12_texto==0) text("Option 1", 1042.5, 362.5);
    else if (regra12_texto==1) text("Option 2", 1042.5, 362.5);
    else text("Option 3", 1042.5, 362.5);

    if (regra12_menu) {
      for (int i=0; i<3; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra12_texto) fill(#B7B7B7);
        rect(925, 350+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Option 1", 1055, 362.5+(i+1)*25);
        else if (i==1) text("Option 2", 1055, 362.5+(i+1)*25);
        else text("Option 3", 1055, 362.5+(i+1)*25);
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

void regra13() {
  //--------------menu ganhar regra 13
  if (validateRegra13) {
    ganhar13=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra13, 0, 0);

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
  //-----------------regra 13
  if (start && regra13 && !validateRegra13) {
    PImage [] imagem = new PImage [3];
    imagem[0] = regra13Imagem1;
    imagem[1] = regra13Imagem2;
    imagem[2] = regra13Imagem3;
    imageMode(CORNER);
    image(imagem[regra13_imagem], 0, 0);

    fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(925, 350, 260, 25);
    if (mouseX>=1160 && mouseX<=1185 && mouseY>=350 && mouseY<=375) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1160, 350, 25, 25);
    shape(seta, 1160, 350);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra13_imagem==0) text("Image 1", 1042.5, 362.5);
    else if (regra13_imagem==1) text("Image 2", 1042.5, 362.5);
    else text("Image 3", 1042.5, 362.5);

    if (regra13_menu) {
      for (int i=0; i<3; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra13_imagem) fill(#B7B7B7);
        rect(925, 350+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Image 1", 1055, 362.5+(i+1)*25);
        else if (i==1) text("Image 2", 1055, 362.5+(i+1)*25);
        else text("Image 3", 1055, 362.5+(i+1)*25);
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

void regra14() {
  //--------------menu ganhar regra 14
  if (validateRegra14) {
    ganhar14=true;
    background(255);
    imageMode(CORNER);
    image(ganharRegra14, 0, 0);

    //botao menu
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
    text("Menu", width/2, 475);

    //botao creditos
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
    text("Credits", width/2, 550);

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
  //-----------------regra 14
  if (start && regra14 && !validateRegra14) {
    imageMode(CORNER);
    image(regra14Imagem, 0, 0);
    PImage [] texto = new PImage [2];
    texto[0] = regra14_texto1;
    texto[1] = regra14_texto2;
    image(texto[regra14_texto],118,127.2);
    
     fill(#F2F2F2);
    rectMode(CORNER);
    stroke(color(0));
    rect(925, 350, 260, 25);
    if (mouseX>=1160 && mouseX<=1185 && mouseY>=350 && mouseY<=375) {
      fill(#B7B7B7);
    } else {
      fill(#F2F2F2);
    }
    rectMode(CORNER);
    rect(1160, 350, 25, 25);
    shape(seta, 1160, 350);
    fill(0);
    textFont(butoes_pequenos);
    textAlign(CENTER, CENTER);
    if (regra14_texto==0) text("Grid 1", 1042.5, 362.5);
    else if (regra14_texto==1) text("Grid 2", 1042.5, 362.5);
    
    if (regra14_menu) {
      for (int i=0; i<2; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) fill(#B7B7B7);
        else fill(#F2F2F2);
        if (i==regra14_texto) fill(#B7B7B7);
        rect(925, 350+(i+1)*25, 260, 25);
        fill(0);
        textFont(butoes_pequenos);
        textAlign(CENTER, CENTER);
        if (i==0) text("Grid 1", 1055, 362.5+(i+1)*25);
        else if (i==1) text("Grid 2", 1055, 362.5+(i+1)*25);
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
