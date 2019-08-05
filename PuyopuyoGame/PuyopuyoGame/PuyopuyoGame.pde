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
  game.showGame();
}
