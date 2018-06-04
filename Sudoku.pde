int I, J;
int[] al;
int[][] matrizt = new int[3][3];
class Sudoku {
  int px=185, py=15, px1=35, py1=165;
  int[] numi, numj, num;
  float x, y, X, Y=15;
  PVector[][] matrizp;
  void display() {
    matrizp = new PVector[9][9];
    textSize(30);
    fill(0, 245, 250);
    for (int i = 0; i<9; i++) {
      stroke(255);
      X=35;
      for (int j = 0; j<9; j++) {
        matrizp[i][j]= new PVector(X, Y);
        rect(X, Y, 85, 65);
        X=X+50;
      }
      Y=Y+50;
    }
    for (int i = 0; i<2; i++) {
      stroke(0);
      line(px, py, px, py+450);
      px=px+150;
    }
    for (int i = 0; i<2; i++) {
      stroke(0);
      line(px1, py1, px1+450, py1);
      py1=py1+150;
    }
    for (int i = 0; i<9; i++) {
      for (int j = 0; j<9; j++) {
        if (pick(mouseX, mouseY, matrizp[i][j].x, matrizp[i][j].y)) {
          stroke(255, 255, 0);
          fill(0, 0, 255);
          rect( matrizp[i][j].x, matrizp[i][j].y, 50, 50);
        }
      }
    }
    for (int i = 0; i<9; i++) {
      for (int j = 0; j<9; j++) {
        if (pick(mouseX, mouseY, matrizp[i][j].x, matrizp[i][j].y) && mousePressed) {
          if (i<3 && j<3) {
            mouseClicked(i, j);
            keyPressed();
            matriz1[i][j]=matrizt[i][j];
          }
          if (i<3 && (j>=3 && j<6)) {
            mouseClicked(i, j-3);
            keyPressed();
            matriz2[i][j-3]=matrizt[i][j-3];
          }
          if (i<3 && (j>=6 && j<9)) { 
            mouseClicked(i, j-6);
            keyPressed();
            matriz3[i][j-6]=matrizt[i][j-6];
          }
          if ((i>=3 && i<6) && j<3) {
            mouseClicked(i-3, j);
            keyPressed();
            matriz4[i-3][j]=matrizt[i-3][j];
          }
          if ((i>=3 && i<6) && (j>=3 && j<6)) {
            mouseClicked(i-3, j-3);
            keyPressed();
            matriz5[i-3][j-3]=matrizt[i-3][j-3];
          }
          if ((i>=3 && i<6) && (j>=6 && j<9)) {
            mouseClicked(i-3, j-6);
            keyPressed();
            matriz6[i-3][j-6]=matrizt[i-3][j-6];
          }
          if ((i>=6 && i<9) && j<3) {
            mouseClicked(i-6, j);
            keyPressed();
            matriz7[i-6][j]=matrizt[i-6][j];
          }
          if ((i>=6 && i<9) && (j>=3 && j<6)) {
            mouseClicked(i-6, j-3);
            keyPressed();
            matriz8[i-6][j-3]=matrizt[i-6][j-3];
          }
          if ((i>=6 && i<9) && (j>=6 && j<9)) {
            mouseClicked(i-6, j-6);
            keyPressed();
            matriz9[i-6][j-6]=matrizt[i-6][j-6];
          }
        }
      }
    }
    for (int i = 0; i<3; i++) {
      x=50;
      y=y+50;
      for (int j = 0; j<3; j++) {
        fill(0);
        text(matriz1[i][j], x, y);
        x=x+50;
      }
    }
    y=0;
    for (int i = 0; i<3; i++) {
      x=200;
      y=y+50;
      for (int j = 0; j<3; j++) {
        fill(0);
        text(matriz2[i][j], x, y);
        x=x+50;
      }
    }
    y=0;
    for (int i = 0; i<3; i++) {
      x=350;
      y=y+50;
      for (int j = 0; j<3; j++) {
        fill(0);
        text(matriz3[i][j], x, y);
        x=x+50;
      }
    }
    y=150;
    for (int i = 0; i<3; i++) {
      x=50;
      y=y+50;
      for (int j = 0; j<3; j++) {
        fill(0);
        text(matriz4[i][j], x, y);
        x=x+50;
      }
    }
    y=150;
    for (int i = 0; i<3; i++) {
      x=200;
      y=y+50;
      for (int j = 0; j<3; j++) {
        fill(0);
        text(matriz5[i][j], x, y);
        x=x+50;
      }
    }
    y=150;
    for (int i = 0; i<3; i++) {
      x=350;
      y=y+50;
      for (int j = 0; j<3; j++) {
        fill(0);
        text(matriz6[i][j], x, y);
        x=x+50;
      }
    }
    y=300;
    for (int i = 0; i<3; i++) {
      x=50;
      y=y+50;
      for (int j = 0; j<3; j++) {
        fill(0);
        text(matriz7[i][j], x, y);
        x=x+50;
      }
    }
    y=300;
    for (int i = 0; i<3; i++) {
      x=200;
      y=y+50;
      for (int j = 0; j<3; j++) {
        fill(0);
        text(matriz8[i][j], x, y);
        x=x+50;
      }
    }
    y=300;
    for (int i = 0; i<3; i++) {
      x=350;
      y=y+50;
      for (int j = 0; j<3; j++) {
        fill(0);
        text(matriz9[i][j], x, y);
        x=x+50;
      }
    }
  }
  Sudoku() {
    
  }
}
boolean pick(int x, int y, float a, float b) {
  return x >= a && x <= a+50 && y >= b && y <= b+50;
}
void mouseClicked(int i, int j) {
  I=i;
  J=j;
}
void keyPressed() {
  int n = int(key); 
  switch (key) { 
  case '1':
    n = n-48;
    matrizt[I][J]=n;
    break;
  case '2':
    n = n-48;
    matrizt[I][J]=n;
    break;
  case '3':
    n = n-48;
    matrizt[I][J]=n;
    break;
  case '4':
    n = n-48;
    matrizt[I][J]=n;
    break;
  case '5':
    n = n-48;
    matrizt[I][J]=n;
    break;
  case '6':
    n = n-48;
    matrizt[I][J]=n;
    break;
  case '7':
    n = n-48;
    matrizt[I][J]=n;
    break;
  case '8':
    n = n-48;
    matrizt[I][J]=n;
    break;
  case '9':
    n = n-48;
    matrizt[I][J]=n;
    break;
  }
}