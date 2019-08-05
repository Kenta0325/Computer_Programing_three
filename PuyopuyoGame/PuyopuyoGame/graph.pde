class Graph{
  NodeSet nodes;
  EdgeSet edges;
  Graph(int[][] adjMatrix){
    nodes = new NodeSet(adjMatrix.length);
    edges = new EdgeSet(adjMatrix, nodes);
    for(Edge e : edges)
    if(e.minus != null && e.plus != null)
      println(e.minus.index + " : " + e.plus.index);
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
    for(Node v : nodes) v.mark = false;
    for(Node node : nodes){
      println("Search from node" + node.index);
      if(!node.mark) chains.add(DFS(node));
    }
    return chains;
  }

  NodeSet DFS(Node node){
    Node u = node;
    u.mark = true;
    NodeSet connectedComponent = new NodeSet();
    NodeSet stack = new NodeSet();
    connectedComponent.add(u);
    stack.add(u);
    while(!stack.isEmpty()){
      u = stack.get(stack.size() - 1);
      stack.remove(u);
      for(Node v : u.outgoing){
        if(v.mark) continue;
        v.mark = true;
        println("find node" + v.index);
        connectedComponent.add(v);
        stack.add(v);
      }
      //Node v = u.outgoing.get(index++);
      //if(v.mark) continue;
      //println("find node" + v.index);
      //connectedComponent.add(v);
      //stack.add(v);
      //v.mark = true;
      //index = 0;
      //u = v;
    }
    if(connectedComponent.size() != 0)
      println(connectedComponent.size());
    if(connectedComponent.size() < 4)
      return null;
    else{
      println("find chain!");
      return connectedComponent;
    }
  }

}
