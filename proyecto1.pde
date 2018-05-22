int matriz[][];
int[] numi, numj, num;
int[] a = new int[9];
int n, nn;
void setup() {
  size (530, 530);
  background(0, 245, 250);
  for (int i = 0; i<9; i++) {
    a[i] = int(random(3, 5));
    n = n+a[i];
  }
  num = new int[n];
  matriz = new int[9][9];
}
void draw() {
  Sudoku sudoku = new Sudoku(matriz, a, numi, numj, num);
  sudoku.display();
}