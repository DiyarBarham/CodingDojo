import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Shape sh = new Triangle();
		Shape s = new Rectangle();
		System.out.println(sh.toString());
		System.out.println(s.toString());
		sh.setColor("blue");
		System.out.println(sh.getColor());
		
		
	}

}
