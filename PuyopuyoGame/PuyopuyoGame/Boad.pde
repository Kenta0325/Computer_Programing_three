class Boad{
  Puyo[][] stock; //現在のぷよを二次元配列として保存
  int cellLength;
  Boad(Puyopuyo puyos){
    cellLength = 50;
    stock = new Puyo[12][6];
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

    Graph makeGraph(Puyopuyo puyos){
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

    ArrayList<Puyopuyo> findChains(Puyopuyo puyos){
      ArrayList<Puyopuyo> chains = new ArrayList<Puyopuyo>();
      Graph graph = makeGraph(puyos);
      ArrayList<NodeSet> chainsNode = graph.findConnectedComponents();
      for(NodeSet nodes : chainsNode){
        if(nodes == null) continue;
        Puyopuyo chainBlock = new Puyopuyo();
        for(Node node : nodes){
          chaninBlock.add(stock[node.index / 6][node.index % 6]);
        }
        chains.add(chainBlock);
      }
      return chains;
    }
}
