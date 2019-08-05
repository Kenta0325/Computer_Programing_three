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



////////////////////////////////////////////////////////////////////////////////

class Title{

  Title(){

  }
  void showTitle(){
    //タイトル画面を描いてねけんじゅ♡
  }
}
