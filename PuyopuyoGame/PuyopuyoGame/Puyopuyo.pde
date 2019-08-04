class Puyopuyo extends ArrayList<Puyo>{

  Puyopuyo(){
  }

  void showPuyopuyo(){
  //ArrayList内にあるぷよたちを表示する
    for(Puyo p : Puyopuyo){
      p.drawPuyo();
    }
  }

  void producePuyo(Puyo p){
  //1つ前のぷよが最下点に達したら
  //ぷよ型のオブジェクトを生成
  //2個同時生成 from Next
    if(/*最下点に達したら*/){//判定はNextでするからいらないかも
        for(int i = 0 ;  i < 2 ; i ++){
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

  //連鎖した後にぷよが最下点に達したかどうかの判定
  boolean isFall(){
    for(Puyo p : this){
      for(Puyo pu : this){
        if(pu == p) continue;
        else if(p.loc.y + 30 == pu.loc.y || p.loc.y - 30 == pu.loc.y) continue;
    　}
      return false;
    }
    return true;
  }

}

//落ちてくるぷよも、NextのぷよもArrayListに入れた方が扱いに都合がいい
