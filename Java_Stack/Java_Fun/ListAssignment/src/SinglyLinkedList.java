public class SinglyLinkedList {
	public Node head;

	public SinglyLinkedList() {
		this.head = null;
	}

	// SLL methods go here. As a starter, we will show you how to add a node to the
	// list.
	public void add(int value) {
		Node newNode = new Node(value);
		if (head == null) {
			head = newNode;
		} else {
			Node runner = head;
			while (runner.next != null) {
				runner = runner.next;
			}
			runner.next = newNode;
		}
	}
	public void remove() {
		if(head != null) {
			Node runner = head, fin = head;
			while (runner.next != null) {
				fin = runner;
				runner = runner.next;
			}
			fin.next = null;
		}
	}
	public void printValues() {
			Node runner = head;
			while (runner.next != null) {
				System.out.println(runner.value);
				runner = runner.next;
			}
			System.out.println(runner.value);
	}
	public Node find(int val) {
		Node runner = head;
		while(runner.value != val) {
			runner = runner.next;
		}
		return runner;
	}
	public int removeAt(int index) {
		Node runner = head, tail=head;
		while(index >0) {
			tail = runner;
			runner = runner.next;
			index--;
		}
		tail.next = runner.next;
		runner.next = null;
		return runner.value;
	}
}