class Grupo {
  Patron [][] grupo;

  PVector origen;
  int r, c;

  Grupo(int col, int reng) {
    grupo = new Patron[reng][col];
    origen = new PVector();
    r = reng;
    c = col;

    for (int i=0; i<reng; i++) {
      for (int j=0; j<col; j++) {
        grupo[i][j] = new Patron();
      }
    }
  }

  void Draw() {
    for (int i=0; i<r; i++) {
      for (int j=0; j<c; j++) {
        pushMatrix();
        translate(i*100, j*100);
        grupo[i][j].Draw();
        popMatrix();
      }
    }
  }
}
