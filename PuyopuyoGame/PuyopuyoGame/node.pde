class Node{
  int index;
  NodeSet outgoing;
  Node(int i){
    index = i;
    outgoing = new NodeSet();
  }
  void setOutgoing(Node u){
    outgoing.add(u);
  }
}

class NodeSet extends ArrayList<Node>{
  NodeSet(){
  }
  NodeSet(int n){
    for(int i = 0; i < n; i++)
      add(new Node(i));
  }
}
