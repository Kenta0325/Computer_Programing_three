class Game {
  Title titleScreen;
  Main mainScreen;
  boolean touched;//mousePressedされたかどうかを入れる変数
  Game() {
    touched = false;
    titleScreen = new Title();
    mainScreen = new Main();
  }

  //タイトルを表示
  void showTitle() {
    titleScreen.showTitle();
  }

  //メインのゲーム画面を表示
  void showMain() {
      mainScreen.show();
  }

  ///////

  void showGame() {
    if (!touched) {
      touched = isTouched();
      titleScreen.showTitle();
    } else {
      mainScreen.show();
    }
  }

  boolean isTouched() {
    return mousePressed;
  }
}
