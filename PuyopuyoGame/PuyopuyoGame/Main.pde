class Main {
  Back back;
  Boad boad;
  Next next;
  Score score;
  Puyopuyo pp;
  Main() {
    back = new Back();
    boad = new Boad();
    next = new Next();
    score = new Score();
    pp = new Puyopuyo();
  }

  void show() {
    //背景を表示
    back.showBack();
    //ボードを表示
    boad.showBoad();
    //スコアを表示
    score.showScore();
    //Nextを表示
    next.showNext();
    //ぷよたちを表示
    pp.showPuyopuyo();
    if (next.keytouched != 0)next.key(pp);
    if (next.isFull(pp)) {
      fill(255, 0, 0);
      stroke(255);
      rect(200, 400, 600, 200);
    } else {
      next.update(pp);
    }
  }
}
