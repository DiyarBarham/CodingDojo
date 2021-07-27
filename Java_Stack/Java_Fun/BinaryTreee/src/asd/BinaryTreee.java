package asd;

public class BinaryTreee {
	Node root;
	public BinaryTreee() {
		
	}
	public void add(int value) {
	    root = addRecursive(root, value);
	}
	
	private Node addRecursive(Node current, int value) {
	    if (current == null) {
	        return new Node(value);
	    }

	    if (value < current.value) {
	        current.left = addRecursive(current.left, value);
	    } else if (value > current.value) {
	        current.right = addRecursive(current.right, value);
	    } else {
	        // value already exists
	        return current;
	    }

	    return current;
	}
	
	public void print () {
		Node t = root;
		printtree(t);
		
	}
	public void printtree(Node n) {
		System.out.println(n.value);
		if(n.left != null) {
			printtree(n.left);
		}
		if(n.right != null) {
			printtree(n.right);
			
		}
	}
}
