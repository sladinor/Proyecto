int[][] matriz = new int[9][9];
int[][] matriz1 = new int[3][3], matriz2 = new int[3][3], matriz3 = new int[3][3];
int[][] matriz4 = new int[3][3], matriz5 = new int[3][3], matriz6 = new int[3][3];
int[][] matriz7 = new int[3][3], matriz8 = new int[3][3], matriz9 = new int[3][3];
int[] numi, numj, num;
int[] a = new int[9];
int n, nn;
void setup() {
  size (530, 530);
  background(0, 245, 250);
}
void draw() {
  Sudoku sudoku = new Sudoku(matriz, a, numi, numj, num);
  sudoku.display();
}
/*void sudoku() {
 for (int i = 0; i<9; i++) {
 a[i] = int(random(3, 5));
 n = n+a[i];
 }
 num = new int[n];
 matriz = new int[9][9];  
 for (int i = 0; i<9; i++) {
 for (int j = 0; j<9; j++) {
 if (i<3 && j<3) {
 numi = new int[a[0]];
 numj = new int[a[0]];
 for (int k = 0; k<a[0]; k++) {
 numi[k] = int(random(0, 3));
 numj[k] = int(random(0, 3));
 num[k] = int(random(1, 10));
 }
 }
 if ((i>=3 && i<6) && j<3) {        
 numi = new int[a[1]];
 numj = new int[a[1]];
 for (int k = a[0]; k< a[0]+a[1]; k++) {
 numi[k] = int(random(3, 6));
 numj[k] = int(random(0, 3));
 num[k] = int(random(1, 10));
 }
 }
 if ((i>=6 && i<9) && j<3) {
 numi = new int[a[2]];
 numj = new int[a[2]];
 for (int k = a[1]; k< a[0]+a[1]+a[2]; k++) {
 numi[k] = int(random(6, 9));
 numj[k] = int(random(0, 3));
 num[k] = int(random(1, 10));
 }
 }
 if ((i<3) && (j>=3 && j<6)) {
 numi = new int[a[3]];
 numj = new int[a[3]];
 for (int k = a[2]; k< a[0]+a[1]+a[2]+a[3]; k++) {
 numi[k] = int(random(0, 3));
 numj[k] = int(random(3, 6));
 num[k] = int(random(1, 10));
 }
 }
 if ((i>=3 && i<6) && (j>=3 && j<6)) {
 numi = new int[a[4]];
 numj = new int[a[4]];
 for (int k = a[3]; k< a[0]+a[1]+a[2]+a[3]+a[4]; k++) {
 numi[k] = int(random(3, 6));
 numj[k] = int(random(3, 6));
 num[k] = int(random(1, 10));
 }
 }
 if ((i>=6 && i<9) && (j>=3 && j<6)) {
 numi = new int[a[5]];
 numj = new int[a[5]];
 for (int k = a[4]; k< a[0]+a[1]+a[2]+a[3]+a[4]+a[5]; k++) {
 numi[k] = int(random(6, 9));
 numj[k] = int(random(3, 6));
 num[k] = int(random(1, 10));
 }
 }
 if ((i<3) && (j>=6 && j<9)) {
 numi = new int[a[6]];
 numj = new int[a[6]];
 for (int k = a[5]; k< a[0]+a[1]+a[2]+a[3]+a[4]+a[5]+a[6]; k++) {
 numi[k] = int(random(0, 3));
 numj[k] = int(random(6, 9));
 num[k] = int(random(1, 10));
 }
 }
 if ((i>=3 && i<6) && (j>=6 && j<9)) {
 numi = new int[a[7]];
 numj = new int[a[7]];
 for (int k = a[6]; k< a[0]+a[1]+a[2]+a[3]+a[4]+a[5]+a[6]+a[7]; k++) {
 numi[k] = int(random(3, 6));
 numj[k] = int(random(6, 9));
 num[k] = int(random(1, 10));
 }
 }
 if ((i>=6 && i<9) && (j>=6 && j<9)) {
 numi = new int[a[8]];
 numj = new int[a[8]];
 for (int k = a[7]; k< a[0]+a[1]+a[2]+a[3]+a[4]+a[5]+a[6]+a[7]+a[8]; k++) {
 numi[k] = int(random(6, 9));
 numj[k] = int(random(6, 9));
 num[k] = int(random(1, 10));
 }
 }
 }
 }
 }*/
 