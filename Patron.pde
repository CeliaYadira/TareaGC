class Patron {
  PVector origen;
  int r,g,b,r1,g1,b1,r2,g2,b2,r3,g3,b3;
  float a1,a2,a3;

  Patron() {
    origen = new PVector ();
    r= floor(random(100,130));
    g= floor(random(160,255));
    b= floor(random(160,255));
    
    r1= floor(random(200,250));
    g1= floor(random(160,250));
    b1= floor(random(100,140));
    
    r2= floor(random(160,180));
    g2= floor(random(180,255));
    b2= floor(random(160,200));
    
    r3= floor(random(100,180));
    g3= floor(random(160,180));
    b3= floor(random(160,200));
    
    a1= random(10,80);
    a2= random(10,80);
    a3= random(10,80);
    
  }

  void TranslateLocal(PVector dxy) {
    origen.add(dxy);
  }


  void Draw() {
    pushMatrix();
      fill (r,g,b);
      rect(origen.x,origen.y,100,100);
      /*int N=floor(random(3,5));
      for (int c=0;c<=N;c++){
      fill (r*0.7,g*0.8,b*0.8,150);
      ellipse(origen.x+50, origen.y+50, a,a);
      }*/
      fill (r1,g1,b1,150);
      ellipse(origen.x+50, origen.y+50, a1,a1);
      fill (r2,g2,b2,150);
      ellipse(origen.x+50, origen.y+50, a2,a2);
      fill (r3,g3,b3,150);
      ellipse(origen.x+50, origen.y+50, a3,a3);
      
    popMatrix();
  }
}
