import ddf.minim.*;
Minim minim;

PFont titulo, butoes, textos, butoes_pequenos;
color corbutoes=255, corTextoButoes=0;
boolean inicio=true, start=false, creditos=false, regra1=true, regra2=false, regra3=false, regra4=false, regra5=false, regra6=false, regra7=false, regra8=false, regra9=false, 
  regra10=false, regra11=false, regra12=false, regra13=false, regra14=false;
AudioPlayer wrong, fundo;
PImage creditos_imagem;
int c=720;

//------regra 1---------
PFont displayCorreto, display1, display2, display3;
PFont textoCorreto, texto1, texto2, texto3;
PFont displayCorretoPequeno, display1Pequeno, display2Pequeno, display3Pequeno;
PFont textoCorretoPequeno, texto1Pequeno, texto2Pequeno, texto3Pequeno;
PShape seta;
int d=0, t=0;
boolean Regra1_menu1=false, Regra1_menu2=false, validateRegra1=false, ganhar1=false;
PImage regra1Imagem, ganharRegra1;
//----------------------
//-------regra 2--------
PImage regra2Imagem, ganharRegra2;
boolean validateRegra2=false, ganhar2=false, Regra2_menu1_1=false, Regra2_menu1_2=false, Regra2_menu2_1=false, Regra2_menu2_2=false;
PFont titulo1_corretoPequeno, titulo1_1Pequeno, titulo1_2Pequeno, titulo1_3Pequeno;
PFont texto1_corretoPequeno, texto1_1Pequeno, texto1_2Pequeno, texto1_3Pequeno;
PFont texto2NormalPequeno, texto2BoldPequeno;
int x2=0, y2=0, x1=0, y1=0;
PImage regra2_titulo1_1, regra2_titulo1_2, regra2_titulo1_3, regra2_titulo1_4, regra2_texto1_1, regra2_texto1_2, regra2_texto1_3, regra2_texto1_4;
PImage regra2_titulo2_1, regra2_titulo2_2, regra2_texto2_1, regra2_texto2_2;
//----------------------
//-------regra3---------
PImage regra3Imagem, ganharRegra3;
boolean validateRegra3=false, ganhar3=false, regra3_menu=false;
PImage regra3_texto1, regra3_texto2, regra3_texto3;
int regra3_texto=0;
//----------------------
//-------regra4---------
PImage regra4Imagem, ganharRegra4;
boolean validateRegra4=false, ganhar4=false;
PImage tituloNormal, tituloItalico, tituloBold, subtituloNormal, subtituloItalico, subtituloBold, textoNormal, textoItalico, textoBold;
int imagem1_style=0, imagem2_style=0, imagem3_style=0, imagem1_position=0, imagem2_position=0, imagem3_position=0;
boolean regra4_titulo_style=false, regra4_titulo_position=false, regra4_subtitulo_style=false, regra4_subtitulo_position=false, regra4_texto_style=false, regra4_texto_position=false;
//----------------------
//-------regra5---------
PImage regra5Imagem, ganharRegra5;
boolean validateRegra5=false, ganhar5=false, regra5_menu_titulo=false, regra5_menu_texto=false;
PImage regra5_titulo_normal, regra5_titulo_maiusculo, regra5_titulo_minusculo, regra5_texto_normal, regra5_texto_maiusculo, regra5_texto_minusculo;
int regra5_titulo=0, regra5_texto=0;
//----------------------
//-------regra6---------
PImage regra6Imagem, ganharRegra6;
boolean validateRegra6=false, ganhar6=false, regra6_menu1, regra6_menu2, regra6_menu3;
PImage regra6_texto1_sem, regra6_texto1_com, regra6_texto2_sem, regra6_texto2_com;
int regra6_texto1_indent=0, regra6_texto2_indent=0, regra6_texto_position=1;
//----------------------
//-------regra7---------
PImage regra7Imagem, ganharRegra7;
boolean validateRegra7=false, ganhar7=false, regra7_menu1, regra7_menu2;
PImage regra7_t1_menor, regra7_t1_normal, regra7_t1_maior, regra7_t2_menor, regra7_t2_normal, regra7_t2_maior;
int regra7_texto1=0, regra7_texto2=0;
//----------------------
//-------regra8---------
PImage regra8Imagem, ganharRegra8;
boolean validateRegra8=false, ganhar8=false, regra8_menu=false;
PImage regra8_alignRight, regra8_alignLeft, regra8_alignCenter, regra8_justify;
int regra8_texto=0;
//----------------------
//-------regra9---------
PImage regra9Imagem, ganharRegra9;
boolean validateRegra9=false, ganhar9=false, regra9_menu=false;
PImage regra9_textoBom, regra9_textoMau;
int regra9_texto=0;
//----------------------
//-------regra10---------
PImage regra10Imagem, ganharRegra10;
boolean validateRegra10=false, ganhar10=false, regra10_menu=false;
PImage regra10_textoErrado, regra10_textoCerto;
int regra10_texto=0;
//----------------------
//-------regra11---------
PImage regra11Imagem, ganharRegra11;
boolean validateRegra11=false, ganhar11=false, regra11_menu;
PImage regra11_texto2espacos, regra11_texto1espaco;
int regra11_texto=0;
//----------------------
//-------regra12---------
PImage regra12Imagem, ganharRegra12;
boolean validateRegra12=false, ganhar12=false, regra12_menu=false;
PImage regra12_texto1, regra12_texto2, regra12_texto3;
int regra12_texto=0;
//----------------------
//-------regra13---------
PImage regra13Imagem, ganharRegra13;
boolean validateRegra13=false, ganhar13=false, regra13_menu=false;
PImage regra13Imagem1, regra13Imagem2, regra13Imagem3;
int regra13_imagem=0;
//----------------------
//-------regra14---------
PImage regra14Imagem, ganharRegra14;
boolean validateRegra14=false, ganhar14=false, regra14_menu=false;
int regra14_texto=0;
PImage regra14_texto1, regra14_texto2;
//----------------------

void setup() {
  size(1280, 720);
  titulo = loadFont("LeelawadeeUI-Bold-70.vlw");
  butoes = loadFont("FuturaStd-Book-35.vlw");
  textos = loadFont("FuturaStd-Medium-30.vlw");
  butoes_pequenos = loadFont("FuturaStd-Book-15.vlw");
  seta = loadShape("setaRegra1.svg");
  minim = new Minim(this);
  wrong = minim.loadFile("wrong_sound.wav");
  fundo = minim.loadFile("fundo.mp3");
  fundo.play();
  creditos_imagem = loadImage("creditos.png");

  //regra 1
  regra1Imagem = loadImage("regra1Imagem.png");
  ganharRegra1 = loadImage("ganharRegra1.png");
  displayCorreto = loadFont("BauhausStd-Medium-50.vlw");
  display1 = loadFont("BerlingLTStd-Roman-50.vlw");
  display2 = loadFont("BodoniStd-50.vlw");
  display3 = loadFont("SerifaStd-Roman-50.vlw");
  displayCorretoPequeno = loadFont("BauhausStd-Medium-15.vlw");
  display1Pequeno = loadFont("BerlingLTStd-Roman-15.vlw");
  display2Pequeno = loadFont("BodoniStd-15.vlw");
  display3Pequeno = loadFont("SerifaStd-Roman-15.vlw");
  textoCorreto = loadFont("TimesNewRomanPSMT-50.vlw");
  texto1 = loadFont("FuturaStd-Book-50.vlw");
  texto2 = loadFont("GiddyupStd-50.vlw");
  texto3 = loadFont("KochAntiquaLTStd-50.vlw");
  textoCorretoPequeno = loadFont("TimesNewRomanPSMT-15.vlw");
  texto1Pequeno = loadFont("FuturaStd-Book-15.vlw");
  texto2Pequeno = loadFont("GiddyupStd-15.vlw");
  texto3Pequeno = loadFont("KochAntiquaLTStd-15.vlw");

  //regra 2
  regra2Imagem = loadImage("regra2Imagem.png");
  ganharRegra2 = loadImage("ganharRegra2.png");
  texto2NormalPequeno = loadFont("TimesNewRomanPSMT-15.vlw");
  texto2BoldPequeno = loadFont("TimesNewRomanPS-BoldMT-15.vlw");
  titulo1_corretoPequeno = loadFont("BerlinSansFB-Reg-15.vlw");
  titulo1_1Pequeno = loadFont("BodoniStd-PosterItalic-15.vlw");
  titulo1_2Pequeno = loadFont("Georgia-15.vlw");
  titulo1_3Pequeno = loadFont("LucidaSans-15.vlw");
  texto1_corretoPequeno = loadFont("BookAntiqua-15.vlw");
  texto1_1Pequeno = loadFont("Moonglow-Regular-15.vlw");
  texto1_2Pequeno = loadFont("Roboto-Regular-15.vlw");
  texto1_3Pequeno = loadFont("SerifaStd-Roman-15.vlw");
  regra2_titulo1_1 = loadImage("regra2_titulo1_1.png");
  regra2_titulo1_2 = loadImage("regra2_titulo1_2.png");
  regra2_titulo1_3 = loadImage("regra2_titulo1_3.png");
  regra2_titulo1_4 = loadImage("regra2_titulo1_4.png");
  regra2_texto1_1 = loadImage("regra2_texto1_1.png");
  regra2_texto1_2 = loadImage("regra2_texto1_2.png");
  regra2_texto1_3 = loadImage("regra2_texto1_3.png");
  regra2_texto1_4 = loadImage("regra2_texto1_4.png");
  regra2_titulo2_1 = loadImage("regra2_titulo2_1.png");
  regra2_titulo2_2 = loadImage("regra2_titulo2_2.png");
  regra2_texto2_1 = loadImage("regra2_texto2_1.png");
  regra2_texto2_2 = loadImage("regra2_texto2_2.png");

  //regra 3
  regra3Imagem = loadImage("regra3Imagem.png");
  ganharRegra3 = loadImage("ganharRegra3.png");
  regra3_texto1 = loadImage("regra3_texto1.png");
  regra3_texto2 = loadImage("regra3_texto2.png");
  regra3_texto3 = loadImage("regra3_texto3.png");

  //regra 4
  regra4Imagem = loadImage("regra4Imagem.png");
  ganharRegra4 = loadImage("ganharRegra4.png");
  tituloNormal = loadImage("regra4_tituloNormal.png");
  tituloItalico = loadImage("regra4_tituloItalico.png");
  tituloBold = loadImage("regra4_tituloBold.png");
  subtituloNormal = loadImage("regra4_subtituloNormal.png");
  subtituloItalico = loadImage("regra4_subtituloItalico.png");
  subtituloBold = loadImage("regra4_subtituloBold.png");
  textoNormal = loadImage("regra4_textoCorreto.png");
  textoItalico = loadImage("regra4_textoItalico.png");
  textoBold = loadImage("regra4_textoBold.png");

  //regra 5
  regra5Imagem = loadImage("regra5Imagem.png");
  ganharRegra5 = loadImage("ganharRegra5.png");
  regra5_titulo_normal = loadImage("regra5_titulo_normal.png");
  regra5_titulo_maiusculo = loadImage("regra5_titulo_tudoMaiusculo.png");
  regra5_titulo_minusculo = loadImage("regra5_titulo_tudoMinusculo.png");
  regra5_texto_normal = loadImage("regra5_texto_normal.png");
  regra5_texto_maiusculo = loadImage("regra5_texto_tudoMaiusculo.png");
  regra5_texto_minusculo = loadImage("regra5_texto_tudoMinusculo.png");

  //regra 6
  regra6Imagem = loadImage("regra6Imagem.png");
  ganharRegra6 = loadImage("ganharRegra6.png");
  regra6_texto1_sem = loadImage("regra6_texto1_semEspaco.png");
  regra6_texto1_com = loadImage("regra6_texto1_comEspaco.png");
  regra6_texto2_sem = loadImage("regra6_texto2_semEspaco.png");
  regra6_texto2_com = loadImage("regra6_texto2_comEspaco.png");

  //regra 7
  regra7Imagem = loadImage("regra7Imagem.png");
  ganharRegra7 = loadImage("ganharRegra7.png");
  regra7_t1_menor = loadImage("regra7_texto1_menor.png");
  regra7_t1_normal = loadImage("regra7_texto1_normal.png");
  regra7_t1_maior = loadImage("regra7_texto1_maior.png");
  regra7_t2_menor = loadImage("regra7_texto2_menor.png");
  regra7_t2_normal = loadImage("regra7_texto2_normal.png");
  regra7_t2_maior = loadImage("regra7_texto2_maior.png");

  //regra 8
  regra8Imagem = loadImage("regra8Imagem.png");
  ganharRegra8 = loadImage("ganharRegra8.png");
  regra8_alignRight = loadImage("regra8_alignRight.png");
  regra8_alignLeft = loadImage("regra8_alignLeft.png");
  regra8_alignCenter = loadImage("regra8_alignCenter.png");
  regra8_justify = loadImage("regra8_justified.png");

  //regra 9
  regra9Imagem = loadImage("regra9Imagem.png");
  ganharRegra9 = loadImage("ganharRegra9.png");
  regra9_textoBom = loadImage("regra9_textoBom.png");
  regra9_textoMau = loadImage("regra9_textoMau.png");

  //regra 10
  regra10Imagem = loadImage("regra10Imagem.png");
  ganharRegra10 = loadImage("ganharRegra10.png");
  regra10_textoErrado = loadImage("regra10_textoErrado.png");
  regra10_textoCerto = loadImage("regra10_textoCerto.png");

  //regra 11
  regra11Imagem = loadImage("regra11Imagem.png");
  ganharRegra11 = loadImage("ganharRegra11.png");
  regra11_texto2espacos = loadImage("regra11_espacoDuplo.png");
  regra11_texto1espaco = loadImage("regra11_espacoNormal.png");

  //regra 12
  regra12Imagem = loadImage("regra12Imagem.png");
  ganharRegra12 = loadImage("ganharRegra12.png");
  regra12_texto1 = loadImage("regra12_texto1.png"); 
  regra12_texto2 = loadImage("regra12_texto2.png"); 
  regra12_texto3 = loadImage("regra12_texto3.png"); 

  //regra 13
  regra13Imagem = loadImage("regra13Imagem.png");
  ganharRegra13 = loadImage("ganharRegra13.png");
  regra13Imagem1 = loadImage("regra13Imagem1.png");
  regra13Imagem2 = loadImage("regra13Imagem2.png");
  regra13Imagem3 = loadImage("regra13Imagem3.png");

  //regra 14
  regra14Imagem = loadImage("regra14Imagem.png");
  ganharRegra14 = loadImage("ganharRegra14.png");
  regra14_texto1 = loadImage("regra14_texto1.png");
  regra14_texto2 = loadImage("regra14_texto2.png");
}

void draw() {
  background(255);
  inicio();
  regra1();
  regra2();
  regra3();
  regra4();
  regra5();
  regra6();
  regra7();
  regra8();
  regra9();
  regra10();
  regra11();
  regra12();
  regra13();
  regra14();
  creditos();
  if (fundo.position() == fundo.length()) {
    fundo.rewind();
    fundo.play();
  } 
  else {
    fundo.play();
  }
}

void mousePressed() {
  if (inicio) {
    if (mouseX>=750 && mouseX<=1050 && mouseY>=450 && mouseY<=500) {
      inicio=false;
      start=true;
    }

    if (mouseX>=750 && mouseX<=1050 && mouseY>=525 && mouseY<=575) {
      inicio=false;
      creditos=true;
    }

    if (mouseX>=750 && mouseX<=1050 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //-----------------------------regra 1
  if (start && regra1) {
    if (Regra1_menu1) {
      for (int i=0; i<4; i++) {
        if (mouseX>=1000 && mouseX<=1150 && mouseY>=200+i*25 && mouseY<=225+i*25) {
          d=i;
        }
      }
    }

    if (mouseX>=1125 && mouseX<=1150 && mouseY>=175 && mouseY<=200) {
      if (!Regra1_menu1) {
        Regra1_menu1=true;
      } else {
        Regra1_menu1=false;
      }
    } else {
      Regra1_menu1=false;
    }

    if (Regra1_menu2) {
      for (int i=0; i<4; i++) {
        if (mouseX>=950 && mouseX<=1200 && mouseY>=450+i*25 && mouseY<=475+i*25) {
          t=i;
        }
      }
    }

    if (mouseX>=1175 && mouseX<=1200 && mouseY>=425 && mouseY<=450) {
      if (!Regra1_menu2) Regra1_menu2=true;
      else Regra1_menu2=false;
    } else Regra1_menu2=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if (d==0 && t==2) validateRegra1=true;
      else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }
    //botao continuar
    if (ganhar1 && validateRegra1 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra1=false;
      regra1=false;
      regra2=true;
    }
    //botao menu
    if (ganhar1 && validateRegra1 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra1=false;
      regra1=true;
      start=false;
      inicio=true;
      d=0;
      t=0;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar1 && validateRegra1 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //---------------------------------regra 2
  if (start && regra2) {
    if (Regra2_menu1_2) {
      for (int i=0; i<4; i++) {
        if (mouseX>=950 && mouseX<=950+200 && mouseY>=205+(i+1)*25 && mouseY<=230+(i+1)*25) {
          y1=i;
        }
      }
    }

    if (mouseX>=1125 && mouseX<=1150 && mouseY>=205 && mouseY<=230) {
      if (!Regra2_menu1_2) Regra2_menu1_2=true;
      else Regra2_menu1_2=false;
    } else Regra2_menu1_2=false;


    if (Regra2_menu1_1) {
      for (int i=0; i<4; i++) {
        if (mouseX>=950 && mouseX<=950+200 && mouseY>=135+(i+1)*25 && mouseY<=160+(i+1)*25) {
          x1=i;
        }
      }
    }

    if (mouseX>=1125 && mouseX<=1150 && mouseY>=135 && mouseY<=160) {
      if (!Regra2_menu1_1) Regra2_menu1_1=true;
      else Regra2_menu1_1=false;
    } else Regra2_menu1_1=false;


    if (Regra2_menu2_1) {
      if (mouseX>=950 && mouseX<=1150 && mouseY>=415 && mouseY<=440) {
        x2=0;
      } else if (mouseX>=950 && mouseX<=1150 && mouseY>=440 && mouseY<=465) {
        x2=1;
      }
    }

    if (mouseX>=1125 && mouseX<=1150 && mouseY>=390 && mouseY<=415) {
      if (!Regra2_menu2_1) Regra2_menu2_1=true;
      else Regra2_menu2_1=false;
    } else {
      Regra2_menu2_1=false;
    }

    if (Regra2_menu2_2) {
      if (mouseX>=950 && mouseX<=1150 && mouseY>=485 && mouseY<=510) {
        y2=0;
      } else if (mouseX>=950 && mouseX<=1150 && mouseY>=510 && mouseY<=535) {
        y2=1;
      }
    }

    if (mouseX>=1125 && mouseX<=1150 && mouseY>=460 && mouseY<=485) {
      if (!Regra2_menu2_2) Regra2_menu2_2=true;
      else Regra2_menu2_2=false;
    } else {
      Regra2_menu2_2=false;
    }

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if (x2==1 && y2==0 && x1==2 && y1==1) validateRegra2=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar2 && validateRegra2 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra2=false;
      regra2=false;
      regra3=true;
    }
    //botao menu
    if (ganhar2 && validateRegra2 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra2=false;
      regra2=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar2 && validateRegra2 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //---------------------------------regra 3
  if (start && regra3) {
    if (regra3_menu) {
      for (int i=0; i<3; i++) {
        if (mouseX>=510 && mouseX<=770 && mouseY>=450+(i+1)*25 && mouseY<=475+(i+1)*25) regra3_texto=i;
      }
    }

    if (mouseX>=745 && mouseX<=770 && mouseY>=450 && mouseY<=475) {
      if (!regra3_menu) regra3_menu=true;
      else regra3_menu=false;
    } else regra3_menu=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if (regra3_texto==2) validateRegra3=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar3 && validateRegra3 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra3=false;
      regra3=false;
      regra4=true;
    }
    //botao menu
    if (ganhar3 && validateRegra3 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra3=false;
      regra3=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar3 && validateRegra3 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //----------------------------regra 4
  if (start && regra4) {
    //menu titulo style
    for (int i=0; i<3; i++) {
      if (regra4_titulo_style && mouseX>=970 && mouseX<=1170 && mouseY>=200+(i+1)*25 && mouseY<=225+(i+1)*25) imagem1_style=i;
    }
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=200 && mouseY<=225) {
      if (!regra4_titulo_style) regra4_titulo_style=true;
      else regra4_titulo_style=false;
    } else regra4_titulo_style=false;
    //menu titulo position
    for (int i=0; i<3; i++) {
      if (regra4_titulo_position && mouseX>=970 && mouseX<=1170 && mouseY>=250+(i+1)*25 && mouseY<=275+(i+1)*25) imagem1_position=i;
    }
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=250 && mouseY<=275) {
      if (!regra4_titulo_position) regra4_titulo_position=true;
      else regra4_titulo_position=false;
    } else regra4_titulo_position=false;
    //menu subtitulo style
    for (int i=0; i<3; i++) {
      if (regra4_subtitulo_style && mouseX>=970 && mouseX<=1170 && mouseY>=300+(i+1)*25 && mouseY<=325+(i+1)*25) imagem2_style=i;
    }
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=300 && mouseY<=325) {
      if (!regra4_subtitulo_style) regra4_subtitulo_style=true;
      else regra4_subtitulo_style=false;
    } else regra4_subtitulo_style=false;
    //menu subtitulo position
    for (int i=0; i<3; i++) {
      if (regra4_subtitulo_position && mouseX>=970 && mouseX<=1170 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) imagem2_position=i;
    }
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=350 && mouseY<=375) {
      if (!regra4_subtitulo_position) regra4_subtitulo_position=true;
      else regra4_subtitulo_position=false;
    } else regra4_subtitulo_position=false;
    //menu texto style
    for (int i=0; i<3; i++) {
      if (regra4_texto_style && mouseX>=970 && mouseX<=1170 && mouseY>=400+(i+1)*25 && mouseY<=425+(i+1)*25) imagem3_style=i;
    }
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=400 && mouseY<=425) {
      if (!regra4_texto_style) regra4_texto_style=true;
      else regra4_texto_style=false;
    } else regra4_texto_style=false;
    //menu texto position
    for (int i=0; i<2; i++) {
      if (regra4_texto_position && mouseX>=970 && mouseX<=1170 && mouseY>=450+(i+1)*25 && mouseY<=475+(i+1)*25) imagem3_position=i;
    }
    if (mouseX>=1145 && mouseX<=1170 && mouseY>=450 && mouseY<=475) {
      if (!regra4_texto_position) regra4_texto_position=true;
      else regra4_texto_position=false;
    } else regra4_texto_position=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if (imagem1_style==1 && imagem1_position==0 && imagem2_style==2 && imagem2_position==0 && imagem3_style==0 && imagem3_position==0) validateRegra4=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar4 && validateRegra4 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra4=false;
      regra4=false;
      regra5=true;
    }
    //botao menu
    if (ganhar4 && validateRegra4 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra4=false;
      regra4=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar4 && validateRegra4 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //-------------------------regra 5
  if (start && regra5) {
    if (regra5_menu_titulo) {
      for (int i=0; i<3; i++) {
        if (mouseX>=970 && mouseX<=1170 && mouseY>=300+(i+1)*25 && mouseY<=325+(i+1)*25) regra5_titulo=i;
      }
    }

    if (mouseX>=1145 && mouseX<=1170 && mouseY>=300 && mouseY<=325) {
      if (!regra5_menu_titulo) regra5_menu_titulo=true;
      else regra5_menu_titulo=false;
    } else regra5_menu_titulo=false;

    if (regra5_menu_texto) {
      for (int i=0; i<3; i++) {
        if (mouseX>=970 && mouseX<=1170 && mouseY>=410+(i+1)*25 && mouseY<=435+(i+1)*25) regra5_texto=i;
      }
    }

    if (mouseX>=1145 && mouseX<=1170 && mouseY>=410 && mouseY<=435) {
      if (!regra5_menu_texto) regra5_menu_texto=true;
      else regra5_menu_texto=false;
    } else regra5_menu_texto=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if ((regra5_titulo==0 || regra5_titulo==1) && regra5_texto==0) validateRegra5=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar5 && validateRegra5 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra5=false;
      regra5=false;
      regra6=true;
    }
    //botao menu
    if (ganhar5 && validateRegra5 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra5=false;
      regra5=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar5 && validateRegra5 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //----------------------------regra 6
  if (start && regra6) {
    if (regra6_menu1) {
      for (int i=0; i<2; i++) {
        if (mouseX>=940 && mouseX<=1200 && mouseY>=200+(i+1)*25 && mouseY<=225+(i+1)*25) regra6_texto1_indent=i;
      }
    }
    if (mouseX>=1175 && mouseX<=1200 && mouseY>=200 && mouseY<=225) {
      if (!regra6_menu1) regra6_menu1=true;
      else regra6_menu1=false;
    } else regra6_menu1=false;

    if (regra6_menu2) {
      for (int i=0; i<2; i++) {
        if (mouseX>=940 && mouseX<=1200 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) regra6_texto_position=i;
      }
    }
    if (mouseX>=1175 && mouseX<=1200 && mouseY>=350 && mouseY<=375) {
      if (!regra6_menu2) regra6_menu2=true;
      else regra6_menu2=false;
    } else regra6_menu2=false;

    if (regra6_menu3) {
      for (int i=0; i<2; i++) {
        if (mouseX>=940 && mouseX<=1200 && mouseY>=500+(i+1)*25 && mouseY<=525+(i+1)*25) regra6_texto2_indent=i;
      }
    }
    if (mouseX>=1175 && mouseX<=1200 && mouseY>=500 && mouseY<=525) {
      if (!regra6_menu3) regra6_menu3=true;
      else regra6_menu3=false;
    } else regra6_menu3=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if ((regra6_texto1_indent==0 && regra6_texto_position==0 && regra6_texto2_indent==0) || (regra6_texto1_indent==0 && regra6_texto_position==1 && regra6_texto2_indent==1)) validateRegra6=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar6 && validateRegra6 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra6=false;
      regra6=false;
      regra7=true;
    }
    //botao menu
    if (ganhar6 && validateRegra6 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra6=false;
      regra6=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar6 && validateRegra6 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //---------------------regra 7
  if (start && regra7) {
    if (regra7_menu1) {
      for (int i=0; i<3; i++) {
        if (mouseX>=940 && mouseX<=1200 && mouseY>=200+(i+1)*25 && mouseY<=225+(i+1)*25) regra7_texto1=i;
      }
    }

    if (mouseX>=1175 && mouseX<=1200 && mouseY>=200 && mouseY<=225) {
      if (!regra7_menu1) regra7_menu1=true;
      else regra7_menu1=false;
    } else regra7_menu1=false;

    if (regra7_menu2) {
      for (int i=0; i<3; i++) {
        if (mouseX>=940 && mouseX<=1200 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) regra7_texto2=i;
      }
    }

    if (mouseX>=1175 && mouseX<=1200 && mouseY>=350 && mouseY<=375) {
      if (!regra7_menu2) regra7_menu2=true;
      else regra7_menu2=false;
    } else regra7_menu2=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if (regra7_texto1==0 && regra7_texto2==2) validateRegra7=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar7 && validateRegra7 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra7=false;
      regra7=false;
      regra8=true;
    }
    //botao menu
    if (ganhar7 && validateRegra7 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra7=false;
      regra7=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar7 && validateRegra7 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //----------------------regra 8
  if (start && regra8) {
    if (regra8_menu) {
      for (int i=0; i<4; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) regra8_texto=i;
      }
    }

    if (mouseX>=1160 && mouseX<=1185 && mouseY>=350 && mouseY<=375) {
      if (!regra8_menu) regra8_menu=true;
      else regra8_menu=false;
    } else regra8_menu=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if (regra8_texto==1) validateRegra8=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar8 && validateRegra8 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra8=false;
      regra8=false;
      regra9=true;
    }
    //botao menu
    if (ganhar8 && validateRegra8 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra8=false;
      regra8=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar8 && validateRegra8 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //------------------------regra 9
  if (start && regra9) {
    if (regra9_menu) {
      for (int i=0; i<2; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=320+(i+1)*25 && mouseY<=345+(i+1)*25) regra9_texto=i;
      }
    }

    if (mouseX>=1160 && mouseX<=1185 && mouseY>=320 && mouseY<=345) {
      if (!regra9_menu) regra9_menu=true;
      else regra9_menu=false;
    } else regra9_menu=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if (regra9_texto==1) validateRegra9=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar9 && validateRegra9 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra9=false;
      regra9=false;
      regra10=true;
    }
    //botao menu
    if (ganhar9 && validateRegra9 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra9=false;
      regra9=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar9 && validateRegra9 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //----------------------regra 10
  if (start && regra10) {
    if (regra10_menu) {
      for (int i=0; i<2; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=320+(i+1)*25 && mouseY<=345+(i+1)*25) regra10_texto=i;
      }
    }

    if (mouseX>=1160 && mouseX<=1185 && mouseY>=320 && mouseY<=345) {
      if (!regra10_menu) regra10_menu=true;
      else regra10_menu=false;
    } else regra10_menu=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if (regra10_texto==1) validateRegra10=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar10 && validateRegra10 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra10=false;
      regra10=false;
      regra11=true;
    }
    //botao menu
    if (ganhar10 && validateRegra10 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra10=false;
      regra10=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar10 && validateRegra10 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //---------------------regra 11
  if (start && regra11) {
    if (regra11_menu) {
      for (int i=0; i<2; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) regra11_texto=i;
      }
    }

    if (mouseX>=1160 && mouseX<=1185 && mouseY>=350 && mouseY<=375) {
      if (!regra11_menu) regra11_menu=true;
      else regra11_menu=false;
    } else regra11_menu=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if (regra11_texto==1) validateRegra11=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar11 && validateRegra11 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra11=false;
      regra11=false;
      regra12=true;
    }
    //botao menu
    if (ganhar11 && validateRegra11 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra11=false;
      regra11=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar11 && validateRegra11 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //--------------------------regra 12
  if (start && regra12) {
    if (regra12_menu) {
      for (int i=0; i<3; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) regra12_texto=i;
      }
    }

    if (mouseX>=1160 && mouseX<=1185 && mouseY>=350 && mouseY<=375) {
      if (!regra12_menu) regra12_menu=true;
      else regra12_menu=false;
    } else regra12_menu=false;
    
    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if(regra12_texto==1) validateRegra12=true;
      else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar12 && validateRegra12 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra12=false;
      regra12=false;
      regra13=true;
    }
    //botao menu
    if (ganhar12 && validateRegra12 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra12=false;
      regra12=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar12 && validateRegra12 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //-------------------------regra 13
  if (start && regra13) {
    if (regra13_menu) {
      for (int i=0; i<3; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) regra13_imagem=i;
      }
    }

    if (mouseX>=1160 && mouseX<=1185 && mouseY>=350 && mouseY<=375) {
      if (!regra13_menu) regra13_menu=true;
      else regra13_menu=false;
    } else regra13_menu=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if (regra13_imagem==2) validateRegra13=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }

    //botao continuar
    if (ganhar13 && validateRegra13 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra13=false;
      regra13=false;
      regra14=true;
    }
    //botao menu
    if (ganhar13 && validateRegra13 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra13=false;
      regra13=true;
      start=false;
      inicio=true;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar13 && validateRegra13 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
  //---------------------------regra 14
  if (start && regra14) {
    if (regra14_menu) {
      for (int i=0; i<2; i++) {
        if (mouseX>=925 && mouseX<=1185 && mouseY>=350+(i+1)*25 && mouseY<=375+(i+1)*25) regra14_texto=i;
      }
    }

    if (mouseX>=1160 && mouseX<=1185 && mouseY>=350 && mouseY<=375) {
      if (!regra14_menu) regra14_menu=true;
      else regra14_menu=false;
    } else regra14_menu=false;

    //botao validate
    if (mouseX>=width/2-225/2 && mouseX<=width/2+225/2 && mouseY>=650 && mouseY<=700) {
      if (regra14_texto==1) validateRegra14=true;
       else {
        if(wrong.position() == wrong.length()) {
          wrong.rewind();
          wrong.play();
        } 
        else {
          wrong.play();
        }
      }
    }
    //botao menu
    if (ganhar14 && validateRegra14 && mouseX>=width/2-200/2 && mouseX<=width/2+200/2 && mouseY>=450 && mouseY<=500) {
      validateRegra14=false;
      regra1=true;
      start=false;
      inicio=true;
      regra14=false;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao creditos
    if (ganhar14 && validateRegra14 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=525 && mouseY<=575) {
      validateRegra14=false;
      regra1=true;
      start=false;
      creditos=true;
      regra14=false;
      d=0; t=0; x2=0; y2=0; x1=0; y1=0; regra3_texto=0; imagem1_style=0; imagem2_style=0; imagem3_style=0; imagem1_position=0; imagem2_position=0; imagem3_position=0;
      regra5_titulo=0; regra5_texto=0; regra6_texto1_indent=0; regra6_texto2_indent=0; regra6_texto_position=1; regra7_texto1=0; regra7_texto2=0; regra8_texto=0; regra9_texto=0;
      regra10_texto=0; regra11_texto=0; regra12_texto=0; regra13_imagem=0; regra14_texto=0;
    }
    //botao sair
    if (ganhar14 && validateRegra14 && mouseX>=width/2-200/2 && mouseX<=width/2+220/2 && mouseY>=600 && mouseY<=650) {
      exit();
    }
  }
}
