class Game{
  Title titleScreen;
  Main mainScreen;
  boolean touched;//mousePressedされたかどうかを入れる変数
  Game(){
    touched = false;
    titleScreen = new Title();
    mainScreen = new Main();
  }

 //タイトルを表示
  void showTitle(){
    //t = new Title();
    t.show();
  }

//メインのゲーム画面を表示
  void showMain(){
   if(fromTitleToMain()) //m = new Main();
    m.show();
  }

  boolean fromTitleToMain(){
    if(/*ゲーム画面に移行する条件を入力*/) return true;
    return false;
  }
//////////////////////////////////////////////////////////////
  void showGame(){
    if(!touched) touched = isTouched();
    if(!touched) titleScreen.show();
    else{
      mainScreen.show();
    }
  }
  boolean isTouched(){
    return mousePressed;
  }
}
