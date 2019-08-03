class Puyo {
  color c;
  PVector loc; //ぷよのいる座標
  boolean chained; //ぷよが連鎖したかどうかのstatusを入れる変数

  Puyo() {
    int colorNum = (int)(10*random(0, 4)/4);
    switch(colorNum) {
    case 0:
      c = #F71616;
      break;
    case 1:
      c = #FAFF08;
      break;
    case 2:
      c = #08FF53;
      break;
    default:
      c = #08FFFD;
    }
    loc = new PVector(width/2.0-23, 235);
    chained = false;
  }

  void drawPuyo() {
    //色分け
    //形分け↓
    //くっついていないパターン
    //上とくっついているパターン
    //下とくっついているパターン
    //右とくっついているパターン
    //左とくっついているパターン
    //くっついているパターンは、くっついていないパターンを上書きする形だとやりやすい？？？
    fill(c);
    ellipse(loc.x, loc.y, 50, 50);
  }
}
