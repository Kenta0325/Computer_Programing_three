class Next extends ArrayList<Puyo>{

  Next(){}

  void showNext(){
    //次に落ちてくるぷよを表示してね

  }

  void makeNewNext(){ //次に落ちてくるぷよを乱数で作成し、自身に加える
    for(int i = 0;i < 2;i ++){
        this.add(new Puyo());
    }
  }
  void update(){
    if(frameCount%10 == 0){
      for(Puyo p : this)p.loc=//下へ
    }
  }

  void keyPressed(){
    if(key=='RIGHT'){
      for(Puyo p : this)p.loc//右へ
    }
    if(key=='LEFT'){
      for(Puyo p : this)p.loc//左へ
    }
    if(key=='UP'){//0番目の右か左か上か下か
      switch(this.get(0)./*locNum*/){
        case 0:this.get(1).loc-//右
               this.get(0).locNum-//右
               break;
        case 1:
      }
    }
    if(key=='DOWN'){

    }
  }
}
