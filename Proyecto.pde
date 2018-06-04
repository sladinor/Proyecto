int[][] matriz = new int[9][9];
int[][] matriz1 = new int[3][3], matriz2 = new int[3][3], matriz3 = new int[3][3];
int[][] matriz4 = new int[3][3], matriz5 = new int[3][3], matriz6 = new int[3][3];
int[][] matriz7 = new int[3][3], matriz8 = new int[3][3], matriz9 = new int[3][3];
int[][] matriza = new int[3][3];
int[] numi, numj, num;
int[] a = new int[9];
int[] n1 = new int[9], n2 = new int[9], n3 = new int[9];
int[] n4 = new int[9], n5 = new int[9], n6 = new int[9];
int[] n7 = new int[9], n8 = new int[9], n9 = new int[9];
void setup() {
  size (530, 530);
  background(0, 245, 250);
  inicio();
}
void draw() {
  Sudoku sudoku = new Sudoku();
  sudoku.display();
  ganar();
}
void inicio() {
  for (int i=0; i<9; i++) {
    a[i] = int(random(2, 5));
  }
  for (int i=0; i<a[0]; i++) {
    int N = int(random(1, 9));
    int I = int(random(0, 3));
    int J = int(random(0, 3));
    print(N);
    matriz1[I][J] = noRepetir(N, n1);
    n1[i] = noRepetir(N, n1);
  }
  for (int i=0; i<a[1]; i++) {
    int N = int(random(1, 9));
    int I = int(random(0, 3));
    int J = int(random(0, 3));
    print(N);
    matriz2[I][J] = noRepetir(N, n2);
    n2[i] = noRepetir(N, n2);
    noRepetirfilas(N, matriz2, matriz1, matriz3);
    noRepetircolumnas(N, matriz2, matriz5, matriz8);
    for (int i2 = 0; i2<3; i2++) {
      for (int j = 0; j<3; j++) {
        matriz2[i2][j]=matriza[i2][j];
      }
    }
  }
  for (int i=0; i<a[2]; i++) {
    int N = int(random(1, 9));
    int I = int(random(0, 3));
    int J = int(random(0, 3));
    matriz3[I][J] = noRepetir(N, n3);
    n3[i] = noRepetir(N, n3);
    noRepetirfilas(N, matriz3, matriz2, matriz1);
    noRepetircolumnas(N, matriz3, matriz6, matriz9);
    for (int i2 = 0; i2<3; i2++) {
      for (int j = 0; j<3; j++) {
        matriz3[i2][j]=matriza[i2][j];
      }
    }
  }
  for (int i=0; i<a[3]; i++) {
    int N = int(random(1, 9));
    int I = int(random(0, 3));
    int J = int(random(0, 3));
    matriz4[I][J] = noRepetir(N, n4);
    n4[i] = noRepetir(N, n4);
    noRepetirfilas(N, matriz4, matriz5, matriz6);
    noRepetircolumnas(N, matriz4, matriz1, matriz7);
    for (int i2 = 0; i2<3; i2++) {
      for (int j = 0; j<3; j++) {
        matriz4[i2][j]=matriza[i2][j];
      }
    }
  }
  for (int i=0; i<a[4]; i++) {
    int N = int(random(1, 9));
    int I = int(random(0, 3));
    int J = int(random(0, 3));
    matriz5[I][J] = noRepetir(N, n5);
    n5[i] = noRepetir(N, n5);
    noRepetirfilas(N, matriz5, matriz4, matriz6);
    noRepetircolumnas(N, matriz5, matriz2, matriz8);
    for (int i2 = 0; i2<3; i2++) {
      for (int j = 0; j<3; j++) {
        matriz5[i2][j]=matriza[i2][j];
      }
    }
  }
  for (int i=0; i<a[5]; i++) {
    int N = int(random(1, 9));
    int I = int(random(0, 3));
    int J = int(random(0, 3));
    matriz6[I][J] = noRepetir(N, n6);
    n6[i] = noRepetir(N, n6);
    noRepetirfilas(N, matriz6, matriz5, matriz4);
    noRepetircolumnas(N, matriz6, matriz3, matriz9);
    for (int i2 = 0; i2<3; i2++) {
      for (int j = 0; j<3; j++) {
        matriz6[i2][j]=matriza[i2][j];
      }
    }
  }
  for (int i=0; i<a[6]; i++) {
    int N = int(random(1, 9));
    int I = int(random(0, 3));
    int J = int(random(0, 3));
    matriz7[I][J] = noRepetir(N, n7);
    n7[i] = noRepetir(N, n7);
    noRepetirfilas(N, matriz7, matriz8, matriz9);
    noRepetircolumnas(N, matriz7, matriz1, matriz4);
    for (int i2 = 0; i2<3; i2++) {
      for (int j = 0; j<3; j++) {
        matriz7[i2][j]=matriza[i2][j];
      }
    }
  }
  for (int i=0; i<a[7]; i++) {
    int N = int(random(1, 9));
    int I = int(random(0, 3));
    int J = int(random(0, 3));
    matriz8[I][J] = noRepetir(N, n8);
    n8[i] = noRepetir(N, n8);
    noRepetirfilas(N, matriz8, matriz7, matriz9);
    noRepetircolumnas(N, matriz8, matriz2, matriz5);
    for (int i2 = 0; i2<3; i2++) {
      for (int j = 0; j<3; j++) {
        matriz8[i2][j]=matriza[i2][j];
      }
    }
  }
  for (int i=0; i<a[8]; i++) {
    int N = int(random(1, 9));
    int I = int(random(0, 3));
    int J = int(random(0, 3));
    matriz9[I][J] = noRepetir(N, n9);
    n9[i] = noRepetir(N, n9);
    noRepetirfilas(N, matriz9, matriz8, matriz7);
    noRepetircolumnas(N, matriz9, matriz3, matriz6);
    for (int i2 = 0; i2<3; i2++) {
      for (int j = 0; j<3; j++) {
        matriz2[i2][j]=matriza[i2][j];
      }
    }
  }
}
int noRepetir(int a, int[] numero) {
  for (int i=0; i<9; i++) {
    if (a==numero[i] && numero[i]!=0) {
      int newa=int(random(1, 9));
      if (newa==a) {
        noRepetir(a, numero);
      }
      return newa;
    }
  }
  return a;
}
void noRepetirfilas(int num, int[][] Matriz1, int[][] Matriz2, int[][] Matriz3) {
  int comp;
  for (int i = 0; i<3; i++) {
    for (int j=0; j<3; j++) {
      if (Matriz1[i][j]!=0) {
        comp = Matriz1[i][j];
        for (int k=0; k<3; k++) {
          if ((comp==Matriz2[i][k] || comp==Matriz3[i][k]) && num!=0) {
            int compa = int(random(0, 9));
            if (compa==comp) {
              noRepetirfilas(num, Matriz1, Matriz2, Matriz3);
            }
            Matriz1[i][j] = compa;
          }
        }
      }
    }
  }
  for (int i = 0; i<3; i++) {
    for (int j = 0; j<3; j++) {
      matriza[i][j]=Matriz1[i][j];
    }
  }
}
void noRepetircolumnas(int num, int[][] Matriz1, int[][] Matriz2, int[][] Matriz3) {
  int comp;
  for (int i = 0; i<3; i++) {
    for (int j=0; j<3; j++) {
      if (Matriz1[i][j]!=0) {
        comp = Matriz1[i][j];
        for (int k=0; k<3; k++) {
          if ((comp==Matriz2[k][j] || comp==Matriz3[k][j]) && num!=0) {
            int compa = int(random(0, 9));
            if (compa==comp) {
              noRepetirfilas(num, Matriz1, Matriz2, Matriz3);
            }
            Matriz1[i][j] = compa;
          }
        }
      }
    }
  }
  for (int i = 0; i<3; i++) {
    for (int j = 0; j<3; j++) {
      matriza[i][j]=Matriz1[i][j];
    }
  }
}
int newNum() {
  return int(random(1, 9));
}
void ganar() {
  if( sumaf(matriz1,matriz2,matriz3) &&
      sumaf(matriz4,matriz5,matriz6) &&
      sumaf(matriz7,matriz8,matriz9) &&
      sumac(matriz1,matriz4,matriz7) &&
      sumac(matriz2,matriz5,matriz8) &&
      sumac(matriz3,matriz6,matriz9)){
      textSize(16);  
      text("Felicidades! ha ganado!", 300, 250);
  }
}
boolean sumaf (int[][] mat1, int[][] mat2, int[][] mat3) {
  for (int k = 0; k<3; k++) {
    if( (mat1[0][k] + mat2[0][k] + mat3[0][k] == 45) && (mat1[1][k] + mat2[1][k] + mat3[1][k] == 45) && (mat1[2][k] + mat2[2][k] + mat3[2][k] == 45) ){
      return true;
    }
  }
  return false;
}
boolean sumac (int[][] mat1, int[][] mat2, int[][] mat3) {
  for (int k = 0; k<3; k++) {
    if( (mat1[k][0] + mat2[k][0] + mat3[k][0] == 45) && (mat1[k][1] + mat2[k][1] + mat3[k][1] == 45) && (mat1[k][2] + mat2[k][2] + mat3[k][2] == 45) ){
      return true;
    }
  }
  return false;
}