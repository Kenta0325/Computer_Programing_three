class Puyo{
  color c;
  PVector loc; //ぷよのいる座標
  boolean chained; //ぷよが連鎖したかどうかのstatusを入れる変数

  Puyo(){
    int colorNum = random(0,4)/4;
    switch(color){
      case 0://ぷよの色を入れていく
    }
    loc = new PVector(/*落ちてくるときの初めの座標をいれてね*/);
    chained = false;
  }

  void drawPuyo(){
    //色分け
    //形分け↓
    //くっついていないパターン
    //上とくっついているパターン
    //下とくっついているパターン
    //右とくっついているパターン
    //左とくっついているパターン
    //くっついているパターンは、くっついていないパターンを上書きする形だとやりやすい？？？
  }
//1234567890
//12234567890
//12344


}
