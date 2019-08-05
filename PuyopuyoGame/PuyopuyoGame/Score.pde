class Score {
  int totalScore;
  int[] rensa = {0, 8, 16, 32, 64, 96, 128, 160, 192, 224, 256, 288, 320, 352, 384, 416, 448, 480, 512};
  int[] renketsu = {0, 0, 0, 0, 2, 3, 4, 5, 6, 7, 10}; //11個からは連結ボーナスは10固定;
  int[] irokazu = {0, 3, 6, 12, 24};
  int[] cb = {0, 0, 0, 0};
  Boad a;
  Score() {
    totalScore = 0;
    a = new Boad();
  }

  void showScore() {
    //スコアを表示する
    calculateScore();
    pushMatrix();
    fill(0);
    textSize(30);
    translate(width/2, height/2);
    text(totalScore, 50*4, 50*6);
    popMatrix();
  }

  void calculateScore() {
    calculateBonus();
    int subscore = cb[0]+cb[1]+cb[2];
    if (cb[0]+cb[1]+cb[2]==0) subscore=1;
    totalScore += cb[3]*subscore*10;
  }

  void calculateBonus() {
    if (a.findChains().size()!=0) {
      ArrayList<Puyopuyo> chain = new ArrayList<Puyopuyo>();
      chain = (ArrayList<Puyopuyo>)a.findChains().clone();
      int deleteSum = 0 ;
      //連鎖
      cb[0] += rensa[chain.size()];
      //連結
      for (int i = 0; i < chain.size(); i++) {
        cb[1] += renketsu[chain.get(i).size()];
        deleteSum += chain.get(i).size();
      }
      //色数
      //cb[2] =
      //消した数
      cb[3] += deleteSum;
    }
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
}
