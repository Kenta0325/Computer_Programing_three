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
    stock = new Puyo[12][7];
    for(int i = 0; i < stock.lenght; i++){
      for(int j = 0; j < stock[i].length; j++)
        stock[i][j] = null;
    }
  }

  void showBoad(){
    pushMatrix();
    translate(width/2,height/2);
    fill(200);
    noStroke();
    rect(-cellLength * 3,-cellLength * 6,300,600);
    noFill();
    stroke(255);
    strokeWeight(5);
    for(int i = 0 ; i < 6; i++){
      for(int j = 0 ; j < 12 ; j++){
        pushMatrix();
        translate(-cellLength * 3, -cellLength * 6);
        rect(i + cellLength * i, j + cellLength * j, cellLength, cellLength);
        popMatrix();
      }
    }
    stroke(0);
    pushMatrix();
    scale(1.1);
    rect(-cellLength * 3, -cellLength * 6, 300, 600);
    popMatrix();
    popMatrix();
    }

    Graph makeGraph(){
      for(Puyo p : puyos){
        //ぷよの座標（連続値）から、どのマスにいるか（離散値）を求め
        //stock配列を作成する
        float xpos = (p.loc.x - (width - 3 * cellLength)) / cellLength;
        float ypos = (p.loc.y - (height - 6 * cellLength)) / cellLength;
        stock[(int)xpos][(int)ypos] = p;
      }

      int[][] adjMatrix = new int[12 * 6][12 * 6];
      for(int i = 1; i < stock.length - 1; i++){
        for(int j = 1; j < stock[i].length - 1; j++){
          int index = i * 6 + j;
          if(stock[i][j].c == stock[i][j + 1].c)
            adjMatrix[index][index + 1] = 1;
          if(stock[i][j].c == stock[i][j - 1].c)
            adjMatrix[index][index - 1] = 1;
          if(stock[i][j].c == stock[i + 1][j].c)
            adjMatrix[index][index + 6] = 1;
          if(stock[i][j].c == stock[i - 1][j].c)
            adjMatrix[index][index - 6] = 1;
        }
      }

      return new Graph(adjMatrix);
    }

    ArrayList<Puyopuyo> findChains(){
      ArrayList<Puyopuyo> chains = new ArrayList<Puyopuyo>();
      Graph graph = makeGraph();
      ArrayList<NodeSet> chaninsNode = graph.findConnectedComponents();
      for(NodeSet nodes : chiansNode){
        if(nodes == null) continue;
        Puyopuyo chaninBrock = new Puyopuyo();
        for(Node node : nodes){
          chaninBrock.add(stock[node.index / 6][node.index % 6]);
        }
        chains.add(chainBrock);
      }
      return chains;
    }
}
