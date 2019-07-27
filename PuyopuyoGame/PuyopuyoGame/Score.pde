class Score{
  int score;
  int[] rensa = {0, 8, 16, 32, 64, 96, 128, 160, 192, 224, 256, 288, 320, 352, 384, 416, 448, 480, 512};
  int[] renketsu = {0, 0, 0, 0, 2, 3, 4, 5, 6, 7, 10}; //11個からは連結ボーナスは10固定;
  int[] irokazu = {0, 3, 6, 12, 24};
  boolean[] irohantei;
  ArrayList<Puyopuyo>
  Boad a;
  Score(){
    score = 0;
    p = new ArrayList<Puyopuyo>();
    a = new Boad();
  }

  void calculateScore(){
    int subscore = //連鎖ボーナス＋連結ボーナス＋色数ボーナス
    if(/*連鎖ボーナス＋連結ボーナス＋色数ボーナス*/==0) subscore=1;
    score = //消したぷよの個数*subscore*10
  }

  void showScore(){
    //スコアを表示する
    calculateScore();
    fill(0);
    textSize(20);
    text(score,500,500);
  }
  /*
  得点計算は1連鎖ごとに行われ、
消したぷよの個数×（連鎖ボーナス＋連結ボーナス＋色数ボーナス）×10
で求められる。

ただし例外として（連鎖ボーナス＋連結ボーナス＋色数ボーナス）の値が0のときは1として計算する。
（つまり0点になるような連鎖はない）

マージンタイムに突入していない場合、おじゃまぷよは70点につき1個発生。
また、このときの得点には落下ボーナスも含まれる。

  */
いいいいいいいいいいいいいいいいいいいいいいいい
}
