class Graph{
  NodeSet nodes;
  EdgeSet edges;
  Graph(int[][] adjMatrix){
    nodes = new NodeSet(adjMatrix.length);
    edges = new EdgeSet(adjMatrix, nodes);
    setOutgoing();
  }

  void setOutgoing(){
    for(Edge e : edges){
      Node u = e.minus;
      Node v = e.plus;
      u.
    }
  }

  ArrayList<NodeSet> findConnectedComponents(){

  }

  NodeSet BFS(){

  }

}
