class Boad{
  Puyo[][] stock; //現在のぷよを二次元配列として保存
  int cellLength;
  PVector upperLeft;
  Boad(){
    cellLength = 50;
    upperLeft = new PVector(0,0);
    stock = new Puyo[12][6];
  }

  void updataStock(Puyopuyo puyos){
    for(Puyo p : puyos){
      int posY = (p.loc.y - upperLeft.y) / cellLength;
      int posX = (p.loc.x - upperLeft.x) / cellLength;
      stock[posY][posX] = p;
    }
  }

  void showBoad(){
    pushMatrix();
    translate(width/2,height/2);
    int a = 50;
    fill(200);
    noStroke();
    rect(-a*3,-a*6,300,600);
    noFill();
    stroke(255);
    strokeWeight(5);
    for(int i = 0 ; i < 6; i++){
      for(int j = 0 ; j < 12 ; j++){
        pushMatrix();
        translate(-a*3,-a*6);
        rect(i+a*i,j+a*j,a,a);
        popMatrix();
      }
    }
    stroke(0);
    pushMatrix();
    scale(1.1);
    rect(-a*3,-a*6,300,600);
    popMatrix();
    popMatrix();
    }

  void makeNetwork(){
    //きぬたにおまかせ♡
    //新たにクラスやメソッド作ったりしていいので探索でis4ElementsConnectedを探してね
  }

}
