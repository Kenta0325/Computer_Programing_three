class Boad{
  Puyopuyo p = new Puyopuyo();
  Boad(){
    showBoad();
    p.showPuyopuyo();
  }

  void showBoad(){
  int w = 30;
  pushMatrix();
  translate(width/2,height/2);
  for(int i = 0 ; i < 12 ; i++){
    for(int j = 0 ; j < 6 ; j++){
      rect(-w*3+w*j , -w*6+w*i , w , w );
    }
  }
  popMatrix();
}

  void makeNetwork(){
    //きぬたにおまかせ♡
    //新たにクラスやメソッド作ったりしていいので探索でis4ElementsConnectedを探してね
  }
  //kitou no test
}
