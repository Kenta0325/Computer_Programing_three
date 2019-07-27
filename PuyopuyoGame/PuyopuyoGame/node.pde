class Node{
  int index;
  EdgeSet outgoing;
  Node(int i){
    index = i;
  }
  void setOutgoing(Node u){
    
  }
}

class NodeSet extends ArrayList<Node>{
  NodeSet(int n){
    for(int i = 0; i < n; i++)
      add(new Node(i));
  }
}
