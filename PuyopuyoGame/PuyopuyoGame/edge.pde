class Edge{
  Node minus;
  Node plus;
  Edge(Node u, Node v){
    minus = u;
    plus = v;
  }
}

class EdgeSet extends ArrayList<Edge>{
  EdgeSet(int[][] adjMatrix){
    for(int i = 0; i < adjMatrix.length; i++){
      for(int j = 0; j < i; j++)
    }
  }
}
