class TitlePuyo {
  PVector loc;
  PVector vel;
  color c;
  float r;
  TitlePuyo() {
    loc = new PVector(random(width), 0);
    vel = new PVector(0, random(5, 10));
    r = 10;
    c = setRandom();
  }

  color setRandom(){
    color[] colors = new color[3];
    colors[0] = color(255, 0, 0);
    colors[1] = color(0, 255, 0);
    colors[2] = color(0, 0, 255);
    return colors[(int) random(colors.length)];
  }

  void move() {
    loc.add(vel);
  }

  void showPuyo() {
    //タイトル画面を描いてねけんじゅ♡
    //text(s,40,50,60,40);
    move();
    noFill();
    //rect(loc.x-r,loc.y-r,2*r,2*r);
    fill(c);
    pushStyle();
    arc(loc.x, loc.y, r*2, r*2, 0, PI);
    popStyle();
    pushStyle();
    arc(loc.x, loc.y, r*2, r*2, PI, TWO_PI);
    popStyle();

  }
}
