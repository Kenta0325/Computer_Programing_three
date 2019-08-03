class Graph{
  NodeSet nodes;
  EdgeSet edges;
  Graph(int[][] adjMatrix){
    nodes = new NodeSet(adjMatrix.length);
    edges = new EdgeSet(adjMatrix, nodes);
  }
  ArrayList<NodeSet> findConnectedComponents(){

  }

  NodeSet BFS(){

  }
}
