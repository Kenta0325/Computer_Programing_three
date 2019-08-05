class Graph{
  NodeSet nodes;
  EdgeSet edges;
  Graph(int[][] adjMatrix){
    nodes = new NodeSet(adjMatrix.length);
    edges = new EdgeSet(adjMatrix, nodes);
    for(Edge e : edges)
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
      if(!node.mark) chains.add(DFS(node));
    }
    return chains;
  }

  NodeSet DFS(Node node){
    Node u = node;
    NodeSet connectedComponent = new NodeSet();
    for(Node v : nodes) v.mark = false;
    int index = 0;
    while(true){
      if(index == u.outgoing.size()) break;
      Node v = u.outgoing.get(index++);
      if(v.mark) continue;
      connectedComponent.add(v);
      v.mark = true;
      index = 0;
      u = v;
    }
    if(connectedComponent.size() < 4)
      return null;
    else{
      return connectedComponent;
    }
  }

}
