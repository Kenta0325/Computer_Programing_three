class Puyopuyo extends ArrayList<Puyo>{

  Puyopuyo(){
  }

  void showPuyopuyo(){
  //ArrayList内にあるぷよたちを表示する
    for(Puyo p : Puyopuyo){
      p.drawPuyo();
    }
  }

  void producePuyo(){
  //1つ前のぷよが最下点に達したら
  //ぷよ型のオブジェクトを生成
  //2個同時生成
  //これはNextじゃなくて？
    if(/*最下点に達したら*/){
        for(int i = 0 ;  i < 2 ; i ++){
          Puyo p = new Puyo();
          this.add(p);
        }
    }
  }

  void deletePuyo(){
  //連鎖判定がtrueなら
  //連鎖して消えるぷよをArrayList内から削除する
    for(Puyo p : Puyopuyo){
      if(p.chained) this.remove(p);
    }
  }

}

//ぷよが最下点に達したかどうかの判定
boolean isFall(Puyo p){
  for(Puyo pu : this){
    if(pu.loc.y+/*ボードの一マス*/ == p.loc.y) return true;
  }
  return false;
}

//落ちてくるぷよも、NextのぷよもArrayListに入れた方が扱いに都合がいい
