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
      u.setOutgoing(v);
      v.setOutgoing(u);
    }
  }

  ArrayList<NodeSet> findConnectedComponents(){
    ArrayList<NodeSet> chains = new ArrayList<NodeSet>();
    for(Node node : nodes){
      if(!node.mark) chains.add(BFS(node));
    }
  }

  NodeSet BFS(Node node){
    NodeSet connectedComponent = new NodeSet();
    for(Edge edge : node.outgoing){
      Node v = edge.minus == node ? edge.plus : edge.minus;
      if(v.mark) continue;
      connectedComponent.add(v);
      v.mark = true;
    }
    return connectedComponent;
  }

}
