int[][] Matriz;
class Matriz {
  float x1, xt, y1, X, Y, Xt;
  PVector[][] Matrizp;
  void display() {
    keyPressed();
    for (int i = 0; i<3; i++) {
      for (int j = 0; j<3; j++) {
        text(Matriz[i][j], x1, y1);
      }
    }
  }
  void llenarmatriz(int k, int l) {
    for (int i = 0; i<3; i++) {
      for (int j = 0; j<3; j++) {
        Matriz[i][j]=matriz[i-k][j-l];
      }
    }
  }
  Matriz(int fc, int[][] matriz, float x, float y, float X1, float Y1) {
    x1=x;
    y1=y;
    Xt=X1;
    Y=Y1;
    Matriz = new int[fc][fc];
    Matrizp = new PVector[3][3];
    for (int i = 0; i<3; i++) {
      for (int j = 0; j<3; j++) {
        Matriz[i][j]= matriz[i][j];
      }
    }
  }
}