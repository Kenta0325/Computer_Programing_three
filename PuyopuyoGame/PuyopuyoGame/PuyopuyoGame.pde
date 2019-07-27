//事前レポートについては
//使用者から見たアプリの使用、設計者から見たアプリの使用
//の2つは俺が書いて、LINEに流します
//自分の担当課所のコーディング方針は各自で書いてね


Game game;
void setup() {
  size(1000, 1000);
  game = new Game();
}

void draw() {

  if(mousePressed) g.b = true;
  /////////////
  game.showGame();
}
/*
String kitou(){
  return "鬼頭史也";
}
int kenju(){
  println("必ず全員がコーディングを行ってください");
  println("音を拾ってくる係が無効");
  //貢献度 ↓
  return 0;
}
*/

//////////////////////////////////////////////////////////////////

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

///////

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

/////////////////////////////////////////////////////////////////

class Puyo{
  color c;
  PVector loc; //ぷよのいる座標
  boolean fllen;//ぷよが落ちたかどうか
  boolean chained; //ぷよが連鎖したかどうかのstatusを入れる変数

  Puyo(color c){
    this.c = c;
    loc = new PVector(/*落ちてくるときの初めの座標をいれてね*/);
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



}

//----------------------Puyopuyoクラス------------------------------------//
//下に溜まってるやつ    鬼頭&太郎 担当
class Puyopuyo extends ArrayList<Puyo>{

  Puyopuyo(){

  }

  void isNothing(){
    //下にいたら fall 全更新
  }

  void showPuyopuyo(){
  //ArrayList内にあるぷよたちを表示する
    for(Puyo p : this){
      p.drawPuyo();
    }
  }

//いるか？？
  void producePuyo(){
  //1つ前のぷよが最下点に達したら
  //ぷよ型のオブジェクトを生成
  if(){
    //2個同時生成
    Puyopuyo
  }

  }

  void deletePuyo(){
  //連鎖判定がtrueなら
  //連鎖して消えるぷよをArrayList内から削除する
  //removeした時のpuyoのlocを記憶しておく
  }

}

//ぷよが最下点に達したかどうかの判定？
// A. これはぷよクラスでは？

//このクラスは落ちてくるぷよのクラス？
//画面内のpuyoを管理する？

//-------------------Nextクラス----------------------------------//

class Next extends ArrayList<Puyo>{

  Next(){
  }

  void showNext(){
    //次に落ちてくるぷよを表示してね
  }

  void makeNewNext(){ //次に落ちてくるぷよを乱数で作成し、自身に加える
    if(this.get(0).fallen = true || ){//ぷよ同士がくっつく or 最下点

    }
  }

  void fallenUpdate(){

  }

}

////////////////////////////////////////////////////////////////////////////

class Main{
  Back back;
  Boad boad;
  Next next;
  Score score;
  Main(){
    back = new Back();
    boad = new Boad();
    next = new Next();
    score = new Score();
  }

}

///////////////////////////////////////////////////////////////////////////

class Boad{
  Puyo[][] stock; //現在のぷよを二次元配列として保存
  int cellLength;
  PVector upperLeft;
  Boad(){
    cellLength = 50;
    upperLeft = new PVector(0,0);
    stock = new Puyo[12][6];
  }

  void updataStock(Puyopuyo puyos){
    for(Puyo p : puyos){
      int posY = (p.loc.y - upperLeft.y) / cellLength;
      int posX = (p.loc.x - upperLeft.x) / cellLength;
      stock[posY][posX] = p;
    }
  }

  void showBoad(){
    //ぷよぷよが落ちてくる部分の画面を描いてね
    int a = 50;
    fill(200);
    noStroke();
    rect(-a*3,-a*6,300,600);
    noFill();
    stroke(255);
    strokeWeight(5);
    for(int i = 0 ; i < 6; i++){
      for(int j = 0 ; j < 12 ; j++){
        pushMatrix();
        translate(-a*3,-a*6);
        rect(i+a*i,j+a*j,a,a);
        popMatrix();
      }
    }
    stroke(0);
    pushMatrix();
    scale(1.1);
    rect(-a*3,-a*6,300,600);
    popMatrix();
    }

  void makeNetwork(){
    //きぬたにおまかせ♡
    //新たにクラスやメソッド作ったりしていいので探索でis4ElementsConnectedを探してね
  }

}

////////////////////////////////////////////////////////////////////////////////

class Title{

  Title(){

  }
  void showTitle(){
    //タイトル画面を描いてねけんじゅ♡
  }
}

//////////////////////////////////////////////////////////////////////////////
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

}
