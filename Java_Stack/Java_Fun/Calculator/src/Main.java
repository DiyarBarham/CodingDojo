
public class Main {

	public static void main(String[] args) {
		Calculator c = new Calculator();
		c.setOperationOne(10.5);
		c.setOperation("+");
		c.setOperationTwo(5.2);
		c.performOperation();
		System.out.println(c.getResult());

	}

}
