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
    stork = new Puyo[12][7];
  }

  void showBoad(){
    pushMatrix();
    translate(width/2,height/2);
    fill(200);
    noStroke();
    rect(-cellLength * 3,-cellLength * 6,300,600);
    noFill();
    stroke(255);
    strokeWeight(5);
    for(int i = 0 ; i < 6; i++){
      for(int j = 0 ; j < 12 ; j++){
        pushMatrix();
        translate(-cellLength * 3,-cellLength * 6);
        rect(i + cellLength * i, j + cellLength * j, cellLength, cellLength);
        popMatrix();
      }
    }
    stroke(0);
    pushMatrix();
    scale(1.1);
    rect(-cellLength * 3,-cellLength * 6, 300, 600);
    popMatrix();
    popMatrix();
    }

  void makeGraph(){
    //きぬたにおまかせ♡
    //新たにクラスやメソッド作ったりしていいので探索でis4ElementsConnectedを探してね

    for(Puyo p : puyos){
      //ぷよの座標（連続値）から、どのマスにいるか（離散値）を求め
      //stock配列を作成する
    }


  }
}
