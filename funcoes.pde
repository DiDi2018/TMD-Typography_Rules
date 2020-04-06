void inicio() {
  if (inicio) {
    textFont(titulo);
    textAlign(CENTER, TOP);
    fill(0);
    text("Typography Rules", 400, 50);
    text("The Game", 400, 150);

    if (mouseX>=750 && mouseX<=1050 && mouseY>=450 && mouseY<=500) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    }
    else { 
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    fill(corbutoes);
    rect(750, 450, 300, 50);
    textFont(butoes);
    textAlign(CENTER, CENTER);
    fill(corTextoButoes);
    text("Start", 900, 475);
    
    if (mouseX>=750 && mouseX<=1050 && mouseY>=525 && mouseY<=575) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    }
    else { 
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    fill(corbutoes);
    rect(750, 525, 300, 50);
    textFont(butoes);
    textAlign(CENTER, CENTER);
    fill(corTextoButoes);
    text("Credits", 900, 550);
    
    if (mouseX>=750 && mouseX<=1050 && mouseY>=600 && mouseY<=650) {
      corbutoes=color(10);
      corTextoButoes=color(255);
    }
    else { 
      corbutoes=color(255);
      corTextoButoes=color(0);
    }
    fill(corbutoes);
    rect(750, 600, 300, 50);
    textFont(butoes);
    textAlign(CENTER, CENTER);
    fill(corTextoButoes);
    text("Exit", 900, 625);
  }
}

void creditos() {
  if(creditos){
    background(255);
    image(creditos_imagem,width/2-800.74/2,c);
    c--;
    if(c==-460){
      creditos=false;
      inicio=true;
      c=720;
    }
  }
}
