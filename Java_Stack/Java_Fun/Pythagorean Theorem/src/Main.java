import java.lang.Math;
import java.util.Scanner;
public class Main {

	public static void main(String[] args) {
		int i = 0;
		while (i == 0) {
		Scanner scan = new Scanner(System.in);
		System.out.println("enter the first length:");
		int val1 = scan.nextInt();
		System.out.println("enter the second length:");
		int val2 = scan.nextInt();
		double result = Pyth(val1, val2);
		System.out.println("the length of the Hypotenuse is: "+result);
		System.out.println("if want to continue enter 0");
		i = scan.nextInt();
		}
	}
	static double Pyth(double val1, double val2) {
		val1 = val1*val1;
		val2 = val2*val2;
		double result = Math.sqrt(val1+val2);
		return result;
	}

}
