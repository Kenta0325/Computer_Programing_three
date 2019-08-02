class Next extends Puyopuyo{
//落ちてくるPuyo*2のクラス
//setupで呼び出す 一回だけ　中身のみ出し入れ
//落ちるたびに消して
//要素ないなら　２回new Pyuo()

  Next(){}

  void showNext(){
    //次に落ちてくるぷよを表示してね
    for(Puyo p : this){
      p.drawPuyo();
    }
  }
  void deleteElements(){
    for(Puyo p : this){//判定用for文
      if(p.chained || p.falled){
        for(Puyo p : this){//Puyopuyoに渡す&消す
          producePuyo(p);
          this.remove(p);
        }
        break;
      }
    }
  }

  void addNext(){ //次に落ちてくるぷよを乱数で作成し、自身に加える
    if(this == null /*&& puyopuyo が安定したら*/){
      for(int i = 0;i < 2;i ++){
          this.add(new Puyo());
      }
      //locNum記憶
      this.get(0).locNum = 0;
  }
  void update(){
    if(frameCount%10 == 0){
      for(Puyo p : this)p.loc.y -= 30;//下へ
    }
  }

  void keyPressed(){
    if(key=='RIGHT'){
      for(Puyo p : this)p.loc.x += 30;//右へ
    }
    if(key=='LEFT'){
      for(Puyo p : this)p.loc.x -= 30;//左へ
    }
    if(key=='DOWN'){
      for(Puyo p : this)p.loc.y -= 30;
    }
    if(key=='UP'){//回転
      switch(this.get(0).locNum % 4){
        //上→右
        case 0:this.get(1).loc.x += 30;
               this.get(1).loc.y -= 30;
               this.get(0).locNum ++;
               break;
        // 右→下
        case 1:this.get(1).loc.x -= 30;
               this.get(1).loc.y -= 30;
               this.get(0).locNum ++;
               break;
       //下→左
        case 2:this.get(1).loc.x -= 30;
               this.get(1).loc.y += 30;
               this.get(0).locNum ++;
               break;
       // 左→上
        case 3:this.get(1).loc.x += 30;
               this.get(1).loc.y += 30;
               this.get(0).locNum ++;
               break;
      }
    }
  }
}
