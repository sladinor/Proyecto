int[] al;
int I, J;
int[][] matrizt;
class Sudoku {
  int[][] matrizg = new int[9][9];
    int[] numi, numj, num;
  float x, y, X, Y=15;
  PVector[][] matrizp;
  void display() {
    matrizp = new PVector[9][9];
    textSize(30);
    fill(0, 245, 250);
    stroke(255);
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
    for (int i = 0; i<9; i++) {
      for (int j = 0; j<9; j++) {
        if (pick(mouseX, mouseY, matrizp[i][j].x, matrizp[i][j].y)) {
          stroke(255, 255, 0);
          fill(0, 0, 255);
          rect( matrizp[i][j].x, matrizp[i][j].y, 50, 50);
          if (mousePressed) {
            mouseClicked(i, j);
          }
        }
      }
    }
    keyPressed();
    for (int i = 0; i<9; i++) {
      x=50;
      y=y+50;
      for (int j = 0; j<9; j++) {
        fill(0);
        if (i<3 && j<3) {
          Matriz matriz1 = new Matriz(3, matriz, x, y, 35, 15);
          matriz1.display();
        }
        if ((i>=3 && i<6) && j<3) {
          Matriz matriz2 = new Matriz(3, matriz, x, y, 185, 15);
          matriz2.display();
        }
        if ((i>=6 && i<9) && j<3) {
          Matriz matriz3 = new Matriz(3, matriz, x, y, 335, 15);
          matriz3.display();
        }
        if ((i<3) && (j>=3 && j<6)) {
          Matriz matriz4 = new Matriz(3, matriz, x, y, 35, 165);
          matriz4.display();
        }
        if ((i>=3 && i<6) && (j>=3 && j<6)) {
          Matriz matriz5 = new Matriz(3, matriz, x, y, 185, 165);
          matriz5.display();
        }
        if ((i>=6 && i<9) && (j>=3 && j<6)) {
          Matriz matriz6 = new Matriz(3, matriz, x, y, 335, 165);
          matriz6.display();
        }
        if ((i<3) && (j>=6 && j<9)) {
          Matriz matriz7 = new Matriz(3, matriz, x, y, 35, 315);
          matriz7.display();
        }
        if ((i>=3 && i<6) && (j>=6 && j<9)) {
          Matriz matriz8 = new Matriz(3, matriz, x, y, 185, 315);
          matriz8.display();
        }
        if ((i>=6 && i<9) && (j>=6 && j<9)) {
          Matriz matriz9 = new Matriz(3, matriz, x, y, 335, 315);
          matriz9.display();
        }
        x=x+50;
      }
    }
  }
  Sudoku(int[][] m, int[] A, int[] Numi, int[] Numj, int[] Num) {
    al = new int[9];
    for (int i = 0; i<9; i++) {
      al[i] = A[i] ;
    }
    matrizt = new int[3][3];
    for (int i = 0; i<3; i++) {
      for (int j = 0; j<3; j++) {
        matrizt[i][j]= m[i][j];
      }
    }
  }
}
boolean pick(int x, int y, float a, float b) {
  return x >= a && x <= a+50 && y >= b && y <= b+50;
}
void mouseClicked(int i, int j) {
  I=i;
  J=j;
  print(I, J);
}
void keyPressed() {
  int n = int(key); 
  switch (key) { 
  case '1':
    n = n-48;
    Matriz[I][J]=n;
    n = 0;
    break;
  case '2':
    n = n-48;
    Matriz[I][J]=n;
    n = 0;
    break;
  case '3':
    n = n-48;
    Matriz[I][J]=n;
    n = 0;
    break;
  case '4':
    n = n-48;
    Matriz[I][J]=n;
    n = 0;
    break;
  case '5':
    n = n-48;
    Matriz[I][J]=n;
    n = 0;
    break;
  case '6':
    n = n-48;
    Matriz[I][J]=n;
    n = 0;
    break;
  case '7':
    n = n-48;
    Matriz[I][J]=n;
    n = 0;
    break;
  case '8':
    n = n-48;
    Matriz[I][J]=n;
    n = 0;
    break;
  case '9':
    n = n-48;
    Matriz[I][J]=n;
    n = 0;
    break;
  }
}